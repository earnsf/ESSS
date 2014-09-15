<html>
<head>
  <meta charset="utf-8">
  <meta name="layout" content="main">
  <title>edit</title>
  <link href="//fonts.googleapis.com/css?family=Open+Sans:300,400,400,600" rel="stylesheet" type="text/css">
  <asset:stylesheet src="standardize.css"/>
  <asset:stylesheet src="editProfile-grid.css"/>
  <asset:stylesheet src="editProfile.css"/>
  <script type="text/javascript">

	function hideEmail() {
        document.getElementById('emailBox').style.display = "block";
        document.getElementById('emailEdit').style.display = "none";
        document.getElementById('emailInput').value = "";
	}
	function showEmail() {
		hideAll()
		document.getElementById('emailEdit').style.display = "block";
        document.getElementById('emailBox').style.display = "none";
	}

	function hidePassword() {
        document.getElementById('passwordBox').style.display = "block";
        document.getElementById('passwordEdit').style.display = "none";
        document.getElementById('currpw').value = "";
        document.getElementById('newpw').value = "";
        document.getElementById('confirmpw').value = "";
	}

	function showPassword() {
		hideAll()
	  	document.getElementById('passwordBox').style.display = "none";
	    document.getElementById('passwordEdit').style.display = "block";
	}

	function hidePhone() {
        document.getElementById('phoneBox').style.display = "block";
        document.getElementById('phoneEdit').style.display = "none";
        document.getElementById('newhome').value = "";
        document.getElementById('newwork').value = "";
        document.getElementById('newmobile').value = "";
        document.getElementById('newalternate').value = "";
	}

	function showPhone() {
		hideAll()
        document.getElementById('phoneBox').style.display = "none";
        document.getElementById('phoneEdit').style.display = "block";
	}

	function hideAddress() {
		document.getElementById('addressBox').style.display = "block";
        document.getElementById('addressEdit').style.display = "none";
        document.getElementById('newaddress').value= "";
        document.getElementById('.newcity').value = "";
        document.getElementById('newstate').value = "";
        document.getElementById('newzipcode').value = "";
	}

	function showAddress() {
		hideAll()
		document.getElementById('addressBox').style.display = "none";
        document.getElementById('addressEdit').style.display = "block";
	}

	function hideLanguage() {
		document.getElementById('languageBox').style.display = "block";
        document.getElementById('languageEdit').style.display = "none";
	}

	function showLanguage() {
		hideAll()
		document.getElementById('languageBox').style.display = "none";
        document.getElementById('languageEdit').style.display = "block";
	}

	function hideAll() {
		hideEmail();
		hidePassword();
		hidePhone();
		hideAddress();
		hideLanguage();
	}


  </script>
	<g:javascript library="jquery"/>
  	<g:if test='${flash.phone}'>
          <script>showPhone()</script>
    </g:if>
</head>
<body class="body index clearfix">
  <div class="editbox clearfix">
    <p class="text title">Edit Profile    </p>
    <div class="menu menu-1 clearfix">
      <p class="text menu">Edit Profile      </p>
    </div>
    <div class="editcontents clearfix" id="update">
      <g:if test='${flash.errormessage}'>
          <p class="text errormessage">${flash.errormessage}</p>
      </g:if>
      <g:if test='${flash.successmessage}'>
          <p class="text successmessage">${flash.successmessage}</p>
      </g:if>
      <g:else>
          <br/>
          <br/>
      </g:else>
      <div id="emailBox" class="email clearfix">
      
        <button class="box" type="button" onclick="showEmail()">
          <p></p>
          <p></p>
        </button>
        <p class="text emaillabel">Email        </p>
        <p class="text curremail">&nbsp;${user.username}</p>
        <button id="emailedit" class="edit" type="button" onclick="showEmail()">
          <p>edit</p>
          <p></p>
          <p></p>
          <p></p>
          <p></p>
          <p></p>
          <p></p>
        </button>
      </div>
      <div id="emailEdit" class="editemail clearfix">
        <g:form>
        <div class="element bar"></div>
        <p class="text emaillabel2">Email</p>
        <p class="text primary">Primary Email</p>
        <p class="text curremail2">${user.username}</p>
   		<p class="text newemail">New Email</p>
   		<input id="emailInput" class="emailinput" name="email" placeholder="new@youremail.com" type="email" required>
   		<g:submitToRemote class="savechanges" url="[controller:'user', action:'saveEmail']" update="emailEdit" value="Save Changes" />
        <button class="cancel" type="button" onclick="hideEmail()">
          <p>Cancel</p>
          <p></p>
          <p></p>
          <p></p>
        </button>
       </g:form>
      </div>
      <div id="passwordBox" class="password clearfix">
        <button class="box" type="button" onclick="showPassword()">
          <p></p>
          <p></p>
          <p></p>
          <p></p>
          <p></p>
        </button>
        <p class="text passwordlabel">Password</p>
        <p class="text updated">[click for details]</p>
        <button class="edit" onclick="showPassword()">
          <p>edit</p>
          <p></p>
          <p></p>
          <p></p>
          <p></p>
          <p></p>
          <p></p>
          <p></p>
          <p></p>
          <p></p>
        </button>
      </div>
      <div id="passwordEdit" class="editpassword clearfix">
      	<g:form>
        <div class="element bar"></div>
        <p class="text passwordlabel2">Password</p>
        <p class="text currentpasswordlabel">Current Password</p>
        <input id="currpw" class="currpassword" name="currpassword" type="password">
        <p class="text newpasswordlabel">New Password</p>
        <p class="text star1">*        </p>
        <input id="newpw" class="newpassword" name="newpassword" type="password">
        <p class="text confirmpasswordlabel">Confirm Password</p>
        <p class="text star2">*        </p>
        <input id="confirmpw" class="confirmpassword" name="confirmpassword" type="password">
        <g:submitToRemote class="savechanges" url="[controller:'user', action:'savePassword']" update="passwordEdit" value="Save Changes" />
        <button class="cancel" type="button" onclick="hidePassword()">
          <p>Cancel</p>
          <p></p>
          <p></p>
          <p></p>
        </button>
        </g:form>
      </div>
      <div id="phoneBox" class="phonenumber clearfix">
        <button class="box" onclick="showPhone()">
          <p></p>
          <p></p>
          <p></p>
        </button>
        <p class="text phonelabel">Phone Number     </p>
        <p class="text homenumber">${numbers.home}&nbsp;</p>
        <p class="text phonetype">[home]&nbsp;</p>
        <button class="edit" onclick="showPhone()">
          <p>edit</p>
          <p></p>
          <p></p>
          <p></p>
          <p></p>
          <p></p>
          <p></p>
          <p></p>
        </button>
      </div>
      <div id="phoneEdit" class="editphonenumber clearfix">
      	<g:form>
        <div class="element bar"></div>
        <p class="text phonelabel2">Phone Number</p>
        <p class="text phoneinstructions">** Use digits only. Leave field blank and click "save" to remove a number.</p>
        <div class="home clearfix">
          <p class="text homelabel">Home          </p>
          <p class="text currhomenumber">${numbers.home}</p>
          <input id="newhome" class="newhome" name="number" <g:if test='${user.home_phone}'>placeholder='${user.home_phone}'</g:if> <g:else>placeholder="new home #"</g:else> type="text" maxlength="10">
          <g:submitToRemote class="save1" url="[controller:'user', action:'saveHomeNumber']" update="phoneEdit" value="Save" />
        </div>
        </g:form>
        <g:form>
        <div class="work clearfix">
          <p class="text worklabel">Work</p>
          <p class="text currworknumber">${numbers.work}</p>
          <input id="newwork" class="newwork" name="number" <g:if test='${user.work_phone}'>placeholder='${user.work_phone}'</g:if> <g:else>placeholder="new work #"</g:else> type="text" maxlength="10">
          <g:submitToRemote class="save2" url="[controller:'user', action:'saveWorkNumber']" update="phoneEdit" value="Save" />
        </div>
        </g:form>
        <g:form>
        <div class="mobile clearfix">
          <p class="text mobilelabel">Mobile</p>
          <p class="text currmobilenumber">${numbers.mobile}</p>
          <input id="newmobile" class="newmobile" name="number"  <g:if test='${user.mobile_phone}'>placeholder='${user.mobile_phone}'</g:if> <g:else>placeholder="new mobile #"</g:else> type="text" maxlength="10">
          <g:submitToRemote class="save2" url="[controller:'user', action:'saveMobileNumber']" update="phoneEdit" value="Save" />
        </div>
        </g:form>
        <g:form>
        <div class="alternate clearfix">
          <p class="text altlabel">Alternate</p>
          <p class="text curraltnumber">${numbers.alt}</p>
          <input id="newalternate" class="newalternate" name="number" <g:if test='${user.alternate_phone}'>placeholder='${user.alternate_phone}'</g:if> <g:else>placeholder="new alternate #"</g:else> type="text" maxlength="10">
          <g:submitToRemote class="save2" url="[controller:'user', action:'saveAlternateNumber']" update="phoneEdit" value="Save" />
        </div>
        </g:form>
        <button class="cancel" type="button" onclick="hidePhone()">
          <p>Cancel</p>
          <p></p>
          <p></p>
          <p></p>
        </button>
      </div>
      <div id="addressBox" class="address clearfix">
        <button class="box" onclick="showAddress()">
          <p></p>
          <p></p>
          <p></p>
        </button>
        <p class="text addresslabel">Address</p>
        <p class="text lessdetails">${address.city}, ${address.state} </p>
        <button class="edit" onclick="showAddress()">
          <p>edit</p>
          <p></p>
          <p></p>
          <p></p>
          <p></p>
          <p></p>
          <p></p>
          <p></p>
        </button>
      </div>
      <div id="addressEdit" class="editaddress clearfix">
      	<g:form>
        <div class="element bar"></div>
        <p class="text addresslabel2">Mailing Address</p>
        <p class="text currentaddresslabel">Current Preferred Address:        </p>
        <p class="text newaddresslabeltop">New Preferred Address:</p>
        <p class="text currstreet">${address.address}</p>
        <p class="text newaddresslabel">Address</p>
        <input id="newaddress" class="newaddress" name="newaddress" placeholder="2515 Benvenue Ave #305" type="text">
        <p class="text currcity">${address.city},        </p>
        <p class="textcurrstate">${address.state}        </p>
        <p class="textzipcode">${address.zipcode}        </p>
        <p class="text newcitylabel">City</p>
        <input id=".newcity" class="newcity" name="newcity" placeholder="Berkeley" type="text">
        <p class="text newstatelabel">State</p>
        <input id="newstate" class="newstate" name="newstate" placeholder="CA" type="text" maxlength="2">
        <p class="text newzipcodelabel">Zip Code        </p>
        <input id="newzipcode" class="newzipcode" name="newzipcode" placeholder="94704" type="text" maxlength="5">
        <select class="newaddresstype" name="addresstype">
          <option value="Home">Home</option>
          <option value="PO Box">PO Box</option>
        </select>
        <p></p>
        <p></p>
        <div class="element whitebar"></div>
		
		<g:submitToRemote class="savechanges" url="[controller:'user', action:'saveAddress']" update="addressEdit" value="Save Changes" />
        <button class="cancel" type="button" onclick="hideAddress()">
        
          <p>Cancel</p>
          <p></p>
          <p></p>
          <p></p>
        </button>
        </g:form>
      </div>
      <div id="languageBox" class="language clearfix">
        <button class="box" onclick="showLanguage()">
          <p></p>
          <p></p>
        </button>
        <p class="text languagelabel">Language</p>
        <p class="text currlang">${language.language}</p>
        <button class="edit" onclick="showLanguage()">
          <p>edit</p>
          <p></p>
          <p></p>
          <p></p>
          <p></p>
          <p></p>
          <p></p>
          <p></p>
        </button>
      </div>
      <div id="languageEdit" class="editlanguage clearfix">
      	<g:form>
        <div class="element bar"></div>
        <p class="text languagelabel2">Language</p>
        <p class="text newlanglabel">Preferred Language</p>
        <select class="newlanguage" name="language">
		  <g:each in="${languages}">
		  	<option value="${it.key}">${it.value}</option>
		  </g:each>
        </select>
        <g:submitToRemote class="savechanges" url="[controller:'user', action:'saveLanguage']" update="languageEdit" value="Save Changes" />
        <button class="cancel" type="button" onclick="hideLanguage()">
          <p>Cancel</p>
          <p></p>
          <p></p>
          <p></p>
        </button>
        </g:form>
      </div>
    </div>
  </div>
</body>
</html>