<html>
<head>
  <meta charset="utf-8">
  <meta name="layout" content="main">
  <title>register2</title>
  <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,700,400,inherit" rel="stylesheet" type="text/css">
  <asset:stylesheet src="standardize.css"/>
  <asset:stylesheet src="register2-grid.css"/>
  <asset:stylesheet src="register2.css"/>
</head>
<body class="body register2 clearfix">
  <div class="container registerpage">
    <div class="registerbox clearfix">
      <div class="bar"></div>
      <p class="text greatwefound">Great! We found you, ${params.email}!</p>
      <p class="text pleaseverify">Please verify ALL of the information below.      </p>
      <g:form controller="user" action="registerPart3" method='POST' class='cssform' autocomplete='off'>
	      <p class="text firstnamelabel">First Name :</p>
	      <input class="firstnameinput" name="firstname" placeholder="John" type="text">
	      <p class="text lastnamelabel">Last Name :</p>
	      <input class="lastnameinput" name="lastname" placeholder="Doe" type="text">
	      <p class="text doblabel">Date of Birth &nbsp;:</p>
	      <input class="dobinput" name="DOB" placeholder="" type="date">
	      <p class="text ssnlabel">Social Security # :</p>
	      <input type="hidden" name="email" value="${params.email}">
	      <input class="ssninput" name="ssn" placeholder="4234" type="password" required pattern="[0-9]{4}" title="####">
	      <button class="registerbutton">
	        <p>Verify</p>
	        <p></p>
	        <p></p>
	      </button>
      </g:form>
    </div>
  </div>
</body>
</html>