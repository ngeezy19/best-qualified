/*
    A simple jQuery modal (http://github.com/kylefox/jquery-modal)
    Version 0.7.0
*/
(function($) {

  var modals = [],
      getCurrent = function() {
        return modals.length ? modals[modals.length - 1] : null;
      },
      selectCurrent = function() {
        var i,
            selected = false;
        for (i=modals.length-1; i>=0; i--) {
          if (modals[i].$blocker) {
            modals[i].$blocker.toggleClass('current',!selected).toggleClass('behind',selected);
            selected = true;
          }
        }
      };

  $.myModal = function(el, options) {
    var remove, target;
    this.$body = $('body');
    this.options = $.extend({}, $.myModal.defaults, options);
    this.options.doFade = !isNaN(parseInt(this.options.fadeDuration, 10));
    this.$blocker = null;
    if (this.options.closeExisting)
      while ($.myModal.isActive())
        $.myModal.close(); // Close any open modals.
    modals.push(this);
    if (el.is('a')) {
      target = el.attr('href');
      //Select element by id from href
      if (/^#/.test(target)) {
        this.$elm = $(target);
        if (this.$elm.length !== 1) return null;
        this.$body.append(this.$elm);
        this.open();
      //AJAX
      } else {
        this.$elm = $('<div>');
        this.$body.append(this.$elm);
        remove = function(event, modal) { modal.elm.remove(); };
        this.showSpinner();
        el.trigger($.myModal.AJAX_SEND);
        $.get(target).done(function(html) {
          if (!$.myModal.isActive()) return;
          el.trigger($.myModal.AJAX_SUCCESS);
          var current = getCurrent();
          current.$elm.empty().append(html).on($.myModal.CLOSE, remove);
          current.hideSpinner();
          current.open();
          el.trigger($.myModal.AJAX_COMPLETE);
        }).fail(function() {
          el.trigger($.myModal.AJAX_FAIL);
          var current = getCurrent();
          current.hideSpinner();
          modals.pop(); // remove expected modal from the list
          el.trigger($.myModal.AJAX_COMPLETE);
        });
      }
    } else {
      this.$elm = el;
      this.$body.append(this.$elm);
      this.open();
    }
  };

  $.myModal.prototype = {
    constructor: $.myModal,

    open: function() {
      var m = this;
      this.block();
      if(this.options.doFade) {
        setTimeout(function() {
          m.show();
        }, this.options.fadeDuration * this.options.fadeDelay);
      } else {
        this.show();
      }
      $(document).off('keydown.modal').on('keydown.modal', function(event) {
        var current = getCurrent();
        if (event.which == 27 && current.options.escapeClose) current.close();
      });
      if (this.options.clickClose)
        this.$blocker.click(function(e) {
          if (e.target==this)
            $.myModal.close();
        });
    },

    close: function() {
      modals.pop();
      this.unblock();
      this.hide();
      if (!$.myModal.isActive())
        $(document).off('keydown.modal');
    },

    block: function() {
      this.$elm.trigger($.myModal.BEFORE_BLOCK, [this._ctx()]);
      this.$body.css('overflow','hidden');
      this.$blocker = $('<div class="jquery-modal blocker current"></div>').appendTo(this.$body);
      selectCurrent();
      if(this.options.doFade) {
        this.$blocker.css('opacity',0).animate({opacity: 1}, this.options.fadeDuration);
      }
      this.$elm.trigger($.myModal.BLOCK, [this._ctx()]);
    },

    unblock: function(now) {
      if (!now && this.options.doFade)
        this.$blocker.fadeOut(this.options.fadeDuration, this.unblock.bind(this,true));
      else {
        this.$blocker.children().appendTo(this.$body);
        this.$blocker.remove();
        this.$blocker = null;
        selectCurrent();
        if (!$.myModal.isActive())
          this.$body.css('overflow','');
      }
    },

    show: function() {
      this.$elm.trigger($.myModal.BEFORE_OPEN, [this._ctx()]);
      if (this.options.showClose) {
        this.closeButton = $('<a href="#close-modal" rel="modal:close" class="close-modal ' + this.options.closeClass + '">' + this.options.closeText + '</a>');
        this.$elm.append(this.closeButton);
      }
      this.$elm.addClass(this.options.modalClass).appendTo(this.$blocker);
      if(this.options.doFade) {
        this.$elm.css('opacity',0).show().animate({opacity: 1}, this.options.fadeDuration);
      } else {
        this.$elm.show();
      }
      this.$elm.trigger($.myModal.OPEN, [this._ctx()]);
    },

    hide: function() {
      this.$elm.trigger($.myModal.BEFORE_CLOSE, [this._ctx()]);
      if (this.closeButton) this.closeButton.remove();
      var _this = this;
      if(this.options.doFade) {
        this.$elm.fadeOut(this.options.fadeDuration, function () {
          _this.$elm.trigger($.myModal.AFTER_CLOSE, [_this._ctx()]);
        });
      } else {
        this.$elm.hide(0, function () {
          _this.$elm.trigger($.myModal.AFTER_CLOSE, [_this._ctx()]);
        });
      }
      this.$elm.trigger($.myModal.CLOSE, [this._ctx()]);
    },

    showSpinner: function() {
      if (!this.options.showSpinner) return;
      this.spinner = this.spinner || $('<div class="' + this.options.modalClass + '-spinner"></div>')
        .append(this.options.spinnerHtml);
      this.$body.append(this.spinner);
      this.spinner.show();
    },

    hideSpinner: function() {
      if (this.spinner) this.spinner.remove();
    },

    //Return context for custom events
    _ctx: function() {
      return { elm: this.$elm, $blocker: this.$blocker, options: this.options };
    }
  };

  $.myModal.close = function(event) {
    if (!$.myModal.isActive()) return;
    if (event) event.preventDefault();
    var current = getCurrent();
    current.close();
    return current.$elm;
  };

  // Returns if there currently is an active modal
  $.myModal.isActive = function () {
    return modals.length > 0;
  }

  $.myModal.defaults = {
    closeExisting: true,
    escapeClose: true,
    clickClose: true,
    closeText: 'Close',
    closeClass: '',
    modalClass: "modal",
    spinnerHtml: null,
    showSpinner: true,
    showClose: true,
    fadeDuration: null,   // Number of milliseconds the fade animation takes.
    fadeDelay: 1.0        // Point during the overlay's fade-in that the modal begins to fade in (.5 = 50%, 1.5 = 150%, etc.)
  };

  // Event constants
  $.myModal.BEFORE_BLOCK = 'modal:before-block';
  $.myModal.BLOCK = 'modal:block';
  $.myModal.BEFORE_OPEN = 'modal:before-open';
  $.myModal.OPEN = 'modal:open';
  $.myModal.BEFORE_CLOSE = 'modal:before-close';
  $.myModal.CLOSE = 'modal:close';
  $.myModal.AFTER_CLOSE = 'modal:after-close';
  $.myModal.AJAX_SEND = 'modal:ajax:send';
  $.myModal.AJAX_SUCCESS = 'modal:ajax:success';
  $.myModal.AJAX_FAIL = 'modal:ajax:fail';
  $.myModal.AJAX_COMPLETE = 'modal:ajax:complete';

  $.fn.modal = function(options){
    if (this.length === 1) {
      new $.myModal(this, options);
    }
    return this;
  };

  // Automatically bind links with rel="modal:close" to, well, close the modal.
  $(document).on('click.modal', 'a[rel="modal:close"]', $.myModal.close);
  $(document).on('click.modal', 'a[rel="modal:open"]', function(event) {
    event.preventDefault();
    $(this).modal();
  });
})(jQuery);
