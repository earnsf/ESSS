
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
      <g:form action="register" controller="user">
          <p class="text">EARN has changed systems. If this is your first time on our new system, click here to register.</p>
          <button class="_button">Register      </button>
        </g:form>
    </div>
    <div class="loginbox clearfix">
      <form action='${postUrl}' method='POST' class='cssform' autocomplete='off'>
        <p class="text text-2">Login</p>
        <div class="element"></div>
        <g:if test='${flash.message}'>
          <p class="text text-3 js-{flash.message}">${flash.message}</p>
        </g:if>
        <p class="text text-4">Email</p>
        <input class="username" name="j_username" placeholder="YourPenny@email.com" type="email" value="${params.email}">
        <p class="text text-5">Password</p>
        <input class="paswword" name="j_password" placeholder="type your password" type="password">
		<input type='hidden' class='chk' name='${rememberMeParameter}' id='remember_me' <g:if test='${hasCookie}'>checked='checked'</g:if>/>
        <button class="signin" type='submit'>Sign in      </button>
     </form>
        <button class="forgotpw">Forgot Password</button>
    </div>
  </div>
  <br />
  <br />
  <br />
</body>
</html>