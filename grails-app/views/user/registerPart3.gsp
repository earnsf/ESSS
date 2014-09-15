
<html>
<head>
  <meta charset="utf-8">
  <meta name="layout" content="main">
  <title>register3</title>
  <link href="//fonts.googleapis.com/css?family=Open+Sans:400,400,600,300,inherit" rel="stylesheet" type="text/css">
  <asset:stylesheet src="standardize.css"/>
  <asset:stylesheet src="register3-grid.css"/>
  <asset:stylesheet src="register3.css"/>
</head>
<body class="body register3 clearfix">
  <div class="container registerpage">
    <div class="registerbox clearfix">
      <div class="bar"></div>
      <p class="text welcomeback">Welcome back! &nbsp;You're almost done,&nbsp;&nbsp;${params.firstname}!</p>
      <g:if test='${flash.message}'>
      	<p class="text errormessage">${flash.message}</p>
      </g:if>
      <g:form controller="user" action="registerFinish" method='POST' class='cssform' autocomplete='off'>
      <p class="text emaillabel">Email :</p>
      <p class="text curremail">${params.email}</p>
      <p class="text pleaseverify">** You can change your email after you log in.</p>
      <p class="text passwordlabel">New Password :</p>
      <input class="passwordinput" name="password" type="password" required>
      <input type='hidden' name='email' class='text' value='${params.email}'/>
      <p class="text confirmpasswordlabel">Confirm Password &nbsp;:</p>
      <input class="confirmpasswordinput" name="confirmed_password" type="password" required>
      <button class="registerbutton">
        <p>Register</p>
        <p></p>
        <p></p>
        <p></p>
      </button>
      </g:form>
    </div>
  </div>
</body>
</html>