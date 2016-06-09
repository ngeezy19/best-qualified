<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Job Signup</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="/styles/materialize.min.css">
</head>
<body>


<div class="col" style="background-image: url(/images/gplay.png); background-size:100%; background-color: #dde9eb;">
      
    
      <div class="card intro blue darken-5 z-depth-1">
           
            <div class="center-align">
                <img class="responsive-img" src="/images/bq-logo.png">
            </div>
        </div>
           
   <!--row col m10 offset-m2 l8 offset-l3 -->
	<div class="row col m10 offset-m2 l8 offset-l3">
    <form method ="post" class="card-panel transparent z-depth-1 col m8 offset-m2 l6 offset-l3" action="/bq/save-info" >
      <div class="row">
        <div class="input-field col s5 offset-s1">
          <input id="first_name" type="text" class="validate">
          <label for="first_name" class="black-text">First Name</label>
        </div>
        <div class="input-field col s5">
          <input id="last_name" type="text" class="validate">
          <label for="last_name" class="black-text">Last Name</label>
        </div>
      </div>
      <div class="row">
        <div class="input-field col s5 offset-s1">
          <input id="email" type="email" class="validate">
          <label for="email" class="black-text">Email</label>
        </div>
      
      <div class=" col s6">
         
          <label for="dob" class="black-text">Date of Birth</label>
          </div>
          
          <div class="input-field col s5">
      <input type="date" class="datepicker">
      
        </div>
       </div>
      <div class="row">
        <div class="input-field col s5 offset-s1">
          <input id="password" type="password" class="validate">
          <label for="password" class="black-text">Password</label>
          </div>
         
        
        <div class="input-field col s5">
          <input id="phoneno" type="tel" class="validate">
          <label for="Mobile" class="black-text">Mobile No</label>
        </div>
      
       
        
      </div>
     
      <div class="row col m8 offset-m2 l6 offset-l3">
      <label class="black-text">Sex</label>
      
       <div class="input-field ">
  <select class="browser-default" name="sex">
    <option value="" disabled selected>Choose your option</option>
    <option value="male">Male</option>
    <option value="female">Female</option>
    
  </select>
      </div>
     
      
  </div>
  
    <div class="row col m8 offset-m2 l6 offset-l3">
      <label class="black-text">Career Level</label>
      <div class="input-field ">
  <select class="browser-default" name="career-level">
  
								<option value="101">Student (Undergraduate/Graduate)</option>
								<option value="102">Entry Level</option>
								<option value="103">Experienced (Non-Managerial)</option>
								<option value="104">Manager (Manager/Supervisor of Staff)</option>
								<option value="105">Executive (SVP,VP,Department Head etc)</option>
								<option value="106">Senior Executive (President, CFO. etc)</option>
							</select>
    
  
      
  </div>
      </div>
      
  
      <div class="row col m8 offset-m2 l6 offset-l3">
      <label class="black-text">Job Category</label>
       <div class="input-field">
  <select class="browser-default" multiple name="job-category"> 
							
								<option value="50">Accounting / Audit / Tax</option>
								<option value="72">Administration &amp; Office Support</option>
								<option value="107">Agriculture/Farming</option>
								<option value="53">Banking / Finance / Insurance</option>
								<option value="83">Building Design/Architecture</option>
								<option value="54">Construction</option>
								<option value="84">Consulting/Business Strategy &amp;
									Planning</option>
								<option value="85">Creatives(Arts, Design, Fashion)</option>
								<option value="82">Customer Service</option>
								<option value="76">Education/Teaching/Training</option>
								<option value="56">Engineering</option>
								<option value="79">Executive / Top Management</option>
								<option value="66">Healthcare / Pharmaceutical</option>
								<option value="59">Hospitality / Leisure / Travels</option>
								<option value="60">Human Resources</option>
								<option value="61">Information Technology</option>
								<option value="67">Legal</option>
								<option value="101">Logistics / Transportation</option>
								<option value="58">Manufacturing / Production</option>
								<option value="51">Marketing / Advertising /
									Communications</option>
								<option value="81">NGO/Community Services &amp; Dev</option>
								<option value="68">Oil&amp;Gas / Mining / Energy</option>
								<option value="74">Project / Programme Management</option>
								<option value="105">QA&amp;QC / HSE</option>
								<option value="70">Real Estate / Property</option>
								<option value="103">Research</option>
								<option value="71">Sales/Business Development</option>
								<option value="106">Supply Chain / Procurement</option>
								<option value="77">Telecommunications</option>
								<option value="104">Vocational Trade and Services</option>

							</select>
    <div class="row"></div>
 
      
  </div>
      </div>
     
  <div class="row col m8 offset-m2 l6 offset-l3">
      <label class="black-text">Education Level</label>
      <div class="input-field">
							<select class="browser-default"
								name="educational-level">
								<option>Higher National Diploma</option>
								<option>Bachelor's Degree</option>
								<option>Master's Degree</option>
								<option>Post Graduate Diploma</option>
								<option>Doctorate</option>
								<option>professional</option>
							</select>
						</div>
      </div>
  
  
		
		
						<div class="row">
						<div class="col m8 offset-m2 l6 offset-l3">
      <label class="black-text">Years of Experience</label>
      	<div class="input-field">
						 <select class="browser-default"
								name="job-experience">
								<option value="401">0 - 1 year</option>
								<option value="402">0 - 2 years</option>
								<option value="403">1 - 3 years</option>
								<option value="404">2 - 5 years</option>
								<option value="405">3 - 5 years</option>
								<option value="406">5 - 10 years</option>
								<option value="407">7 - 10 years</option>
								<option value="408">More than 10 years</option>
							</select>	
						</div>
      </div>
					
					</div>
				<div class=" row">
					<div class="col col m8 offset-m2 l6 offset-l3">
      <label class="black-text">Job Type</label>
      <div class="input-field">
							<select class="browser-default"
								name="job-type">
								<option value="301">Freelance</option>
								<option value="302">Full Time</option>
								<option value="303">Internship</option>
								<option value="304">Part Time</option>
								<option value="305">Permanent</option>
								<option value="306">Temporary</option>
							</select>
						
					</div>
      </div>	
      
					</div>
     
 <div class=" col m8 offset-m2 l6 offset-l3">
      <label class="black-text">Job Region</label>
       <div class="input-field">
  <select class="browser-default" name="job-region">
 
								<option>Abia</option>
								<option>Abuja</option>
								<option>Adamawa</option>
								<option>Anambra</option>
								<option>Akwa Ibom</option>
								<option>Bauchi</option>
								<option>Bayelsa</option>
								<option>Benue</option>
								<option>Borno</option>
								<option>Cross River</option>
								<option>Delta</option>
								<option>Ebonyi</option>
								<option>Enugu</option>
								<option>Edo</option>
								<option>Ekiti</option>
								<option>Gombe</option>
								<option>Imo</option>
								<option>Jigawa</option>
								<option>Kaduna</option>
								<option>Kano</option>
								<option>Katsina</option>
								<option>Kebbi</option>
								<option>Kogi</option>
								<option>Kwara</option>
								<option>Lagos</option>
								<option>Nasarawa</option>
								<option>Niger</option>
								<option>Ogun</option>
								<option>Ondo</option>
								<option>Osun</option>
								<option>Oyo</option>
								<option>Plateau</option>
								<option>Rivers</option>
								<option>Sokoto</option>
								<option>Taraba</option>
								<option>Yobe</option>
								<option>Zamfara</option>
							</select>
    
 
      
  </div>
      
      </div>
     

<div class=" col m8 offset-m2 l6 offset-l3">
      <label class="black-text">Salary</label>
      <div class="input-field">
						
							 <select class="browser-default" name="salary">
								<option value="201">10,000 - 50,000</option>
								<option value="202">50,000 - 100,000</option>
								<option value="203">100,000 - 300,000</option>
								<option value="204">300,000 - 500,000</option>
								<option value="205">Unspecified</option>
							</select>
						
					</div>
      </div>

					
	<div class="file-field input-field col m8 offset-m2 l6 offset-l3">
      <div class="btn waves-effect waves-light blue darken-5">
        <span>Upload</span>
        <input type="file">
      </div>
      <div class="file-path-wrapper">
        <input class="file-path validate black-text" type="text" placeholder="Upload your CV">
      </div>
    </div>
					
  <div class="container row col m8 offset-m2 l6 offset-l3">
   <p>By clicking the button below, you agree to our <a href="#">terms and conditions</a> and <a href="#">privacy policy</a></p>
   </div>
   
   <div class="row col m8 offset-m2 l6 offset-l3"> <button class="btn waves-effect waves-light blue darken-5" type="submit" name="action">Submit
    
  </button></div>
 
      
    </form>
  </div>
  </div>
  
  	
	<script src="/js/jquery-1.11.2.min.js"></script>
	<script src="/js/materialize.min.js"></script>
	
</body>
</html>