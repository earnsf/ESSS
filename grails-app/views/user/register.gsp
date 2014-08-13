
<html>
<head>
  <meta charset="utf-8">
  <meta name="layout" content="main">
  <title>register1</title>
  <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,400,700,inherit" rel="stylesheet" type="text/css">
  <asset:stylesheet src="standardize.css"/>
  <asset:stylesheet src="register1-grid.css"/>
  <asset:stylesheet src="register1.css"/>
</head>

<body class="body register1 clearfix">
  <div class="container registerpage">
    <div class="registerbox clearfix">
      <div class="bar"></div>
      <p class="text registerlabel">What is the Email for your Earn Account?</p>
      <g:if test='${flash.message}'>
      	<p class="text errormessage">${flash.message}</p>
      </g:if>
      <g:form controller="user" action="registerPart2" method='POST' class='cssform' autocomplete='off'>
	      <p class="text emaillabel">Email:      </p>
	      <input class="emailinput" name="email" placeholder="yourEarn@email.com" type="email">
	      <button class="registerbutton" type="submit">
	        <p>Register</p>
	        <p></p>
	      </button>
      </g:form>
      <p class="text forgotemail">Forgot your EARN email?</p>
      <p class="text contact">Please contact EARN</p>
    </div>
  </div>
</body>
</html>