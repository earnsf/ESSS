<html>
<head>
  <meta charset="utf-8">
  <meta name="layout" content="main">
  <title>edit</title>
  <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,400,600" rel="stylesheet" type="text/css">
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
</head>
<body class="body index clearfix">
  <div class="editbox clearfix">
    <p class="text title">Edit Profile    </p>
    <div class="menu menu-1 clearfix">
      <p class="text menu">Edit Profile      </p>
    </div>
    <div class="editcontents clearfix">
      <g:if test='${flash.message}'>
          <p class="text errormessage">${flash.message}</p>
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
        <p class="text curremail">s.saiga@aol.com</p>
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
      <form id="emailEdit" class="editemail clearfix">
        <div class="element bar"></div>
        <p class="text emaillabel2">Email</p>
        <p class="text primary">Primary Email</p>
        <p class="text curremail2">s.saiga@aol.com</p>
        <p class="text newemail">New Email</p>
        <input id="emailInput" class="emailinput" name="email" placeholder="new@youremail.com" type="email">
        <button class="savechanges" type="submit">
          <p>Save Changes</p>
          <p></p>
          <p></p>
        </button>
        <button class="cancel" type="button" onclick="hideEmail()">
          <p>Cancel</p>
          <p></p>
          <p></p>
          <p></p>
        </button>
      </form>
      <div id="passwordBox" class="password clearfix">
        <button class="box" type="button" onclick="showPassword()">
          <p></p>
          <p></p>
          <p></p>
          <p></p>
          <p></p>
        </button>
        <p class="text passwordlabel">Password</p>
        <p class="text updated">Updated about 8 months ago.</p>
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
      <form id="passwordEdit" class="editpassword clearfix">
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
        <button class="savechanges" type="submit">
          <p>Save Changes</p>
          <p></p>
          <p></p>
        </button>
        <button class="cancel" type="button" onclick="hidePassword()">
          <p>Cancel</p>
          <p></p>
          <p></p>
          <p></p>
        </button>
      </form>
      <div id="phoneBox" class="phonenumber clearfix">
        <button class="box" onclick="showPhone()">
          <p></p>
          <p></p>
          <p></p>
        </button>
        <p class="text phonelabel">Phone Number     </p>
        <p class="text homenumber">(959) 853-4256&nbsp;</p>
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
        <div class="element bar"></div>
        <p class="text phonelabel2">Phone Number</p>
        <p class="text phoneinstructions">** use digits only (no parantheses or dashes), no field is required</p>
        <form class="home clearfix">
          <p class="text homelabel">Home          </p>
          <p class="text currhomenumber">(959) 853-4256</p>
          <input id="newhome" class="newhome" name="newhome" placeholder="9598534256" type="text" maxlength="10">
          <button class="save1" type="submit">
            <p>Save&nbsp;</p>
            <p></p>
            <p></p>
            <p></p>
            <p></p>
            <p></p>
            <p></p>
          </button>
        </form>
        <form class="work clearfix">
          <p class="text worklabel">Work</p>
          <p class="text currworknumber">(959) 234-1234</p>
          <input id="newwork" class="newwork" name="newwork" placeholder="9592341234" type="text" maxlength="10">
          <button class="save2" type="submit">
            <p>Save&nbsp;</p>
            <p></p>
            <p></p>
            <p></p>
            <p></p>
            <p></p>
            <p></p>
          </button>
        </form>
        <form class="mobile clearfix">
          <p class="text mobilelabel">Mobile</p>
          <p class="text currmobilenumber">None</p>
          <input id="newmobile" class="newmobile" name="newmobile" placeholder="new mobile #" type="text" maxlength="10">
          <button class="save2" type="submit">
            <p>Save&nbsp;</p>
            <p></p>
            <p></p>
            <p></p>
            <p></p>
            <p></p>
            <p></p>
          </button>
        </form>
        <form class="alternate clearfix">
          <p class="text altlabel">Alternate</p>
          <p class="text curraltnumber">None</p>
          <input id="newalternate" class="newalternate" name="newalternate" placeholder="new alt. #" type="text" maxlength="10">
          <button class="save2" type="submit">
            <p>Save&nbsp;</p>
            <p></p>
            <p></p>
            <p></p>
            <p></p>
            <p></p>
            <p></p>
          </button>
        </form>
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
        <p class="text lessdetails">[click for details]</p>
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
      <form id="addressEdit" class="editaddress clearfix">
        <div class="element bar"></div>
        <p class="text addresslabel2">Mailing Address</p>
        <p class="text currentaddresslabel">Current Preferred Address:        </p>
        <p class="text newaddresslabeltop">New Preferred Address:</p>
        <p class="text currstreet">2515 Benvenue Avenue #305</p>
        <p class="text newaddresslabel">Address</p>
        <input id="newaddress" class="newaddress" name="newaddress" placeholder="2515 Benvenue Ave #305" type="text">
        <p class="text currcity">Berkeley        </p>
        <p class="text comma">,        </p>
        <p class="textcurrstate">CA        </p>
        <p class="textzipcode">94704        </p>
        <p class="text newcitylabel text-40">City</p>
        <input id=".newcity" class="newcity" name="newcity" placeholder="Berkeley" type="text">
        <p class="text newstatelabel">State</p>
        <input id="newstate" class="newstate" name="newstate" placeholder="CA" type="text">
        <p class="text newcitylabel text-42">Zip Code        </p>
        <input id="newzipcode" class="newzipcode" name="newzipcode" placeholder="94704" type="text" maxlength="5">
        <select class="newaddresstype" name="addresstype">
          <option value="Home">Home</option>
          <option value="PO Box">PO Box</option>
        </select>
        <button class="savechanges" type="submit">
          <p>Save Changes</p>
          <p></p>
          <p></p>
        </button>
        <button class="cancel" type="button" onclick="hideAddress()">
          <p>Cancel</p>
          <p></p>
          <p></p>
          <p></p>
        </button>
      </form>
      <div id="languageBox" class="language clearfix">
        <button class="box" onclick="showLanguage()">
          <p></p>
          <p></p>
        </button>
        <p class="text languagelabel">Language</p>
        <p class="text currlang">English (US)</p>
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
      <form id="languageEdit" class="editlanguage clearfix">
        <div class="element bar"></div>
        <p class="text languagelabel2">Language</p>
        <p class="text newlanglabel">Preferred Language</p>
        <select class="newlanguage" name="language">
          <option value="English (US)">English (US)</option>
          <option value="Chinese">Chinese</option>
          <option value="Spanish">Spanish</option>
        </select>
        <button class="savechanges" type="submit">
          <p>Save Changes</p>
          <p></p>
          <p></p>
        </button>
        <button class="cancel" type="button" onclick="hideLanguage()">
          <p>Cancel</p>
          <p></p>
          <p></p>
          <p></p>
        </button>
      </form>
    </div>
  </div>
</body>
</html>