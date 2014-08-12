
<html>
<head>
  <meta charset="utf-8">
  <%--<meta name="layout" content="main">
  --%><title>index</title>
  <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,600,400,700" rel="stylesheet" type="text/css">
  <asset:stylesheet src="standardize.css"/>
  <asset:stylesheet src="auth-grid.css"/>
  <asset:stylesheet src="auth.css"/>
</head>
<body class="body index clearfix">
  <div class="regpluslogin">
    <div class="registerbox clearfix">
      <p class="text registermessage">EARN has changed systems. If this is your first time on our new system, click here to register.</p>
      <form action='/p1/registerPart1'>
      	  <button class="registerbutton" type="submit">Register      </button>
      </form>
    </div>
    <div class="loginbox clearfix">
   	  <form action='${postUrl}' method='POST' class='cssform' autocomplete='off'>
      <p class="text loginlabel">Login</p>
      <div class="bar"></div>
      <g:if test='${flash.message}'>
            <p class="text errormessage js-{flash.message}">${flash.message}</p>
      </g:if>
      <p class="text emaillabel">Email</p>
      <input class="username" name="j_username" placeholder="yourpenny@email.com" type="email" value="${params.email}">
      <p class="text passwordlabel">Password</p>
      <input class="password" name="j_password" placeholder="type your password" type="password">
      <input type='hidden' class='chk' name='${rememberMeParameter}' id='remember_me' <g:if test='${hasCookie}'>checked='checked'</g:if>/>
      <button class="signin">Sign in      </button>
      <button class="forgotpw">Forgot Password      </button>
      </form>
    </div>
  </div>
</body>
</html>