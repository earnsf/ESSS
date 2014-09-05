
<html>
<head>
  <meta charset="utf-8">
  <meta name="layout" content="main">
  <title>index</title>
  <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,600,400,700" rel="stylesheet" type="text/css">
  <asset:stylesheet src="standardize.css"/>
  <asset:stylesheet src="auth-grid.css"/>
  <asset:stylesheet src="auth.css"/>
</head>
<body class="body index clearfix">
  <div class="regpluslogin">
  <%--<li><a href="?lang=es">español</a></li>
  <li><a href="?lang=en">English</a></li>
    --%><div class="registerbox clearfix">
      <p class="text registermessage"><g:message code="register.warning"/></p>
      <g:if test='${lang}'>
	      <form action='/p1/registerPart1' method='get'>
	      	  <input type="hidden" name="lang" value='${lang}'/>
	      	  <button class="registerbutton" type="submit"><g:message code="register.button"/>      </button>
	      </form>
      </g:if>
       <g:else>
	      <form action='/p1/registerPart1?lang=en'>
	      	  <button class="registerbutton" type="submit"><g:message code="register.button"/>      </button>
	      </form>
      </g:else>
    </div>
    <div class="loginbox clearfix">
   	  <form action='${postUrl}' method='POST' class='cssform' autocomplete='off'>
      <p class="text loginlabel"><g:message code="login.label"/></p>
      <div class="bar"></div>
      <g:if test='${flash.message}'>
            <p class="text errormessage js-{flash.message}">${flash.message}</p>
      </g:if>
      <p class="text emaillabel"><g:message code="login.email.label"/></p>
      <input class="username" name="j_username" placeholder="yourpenny@email.com" type="email" value="${params.email}">
      <p class="text passwordlabel"><g:message code="login.password.label"/></p>
      <input class="password" name="j_password" placeholder="type your password" type="password">
      <input type='hidden' class='chk' name='${rememberMeParameter}' id='remember_me' <g:if test='${hasCookie}'>checked='checked'</g:if>/>
      <button class="signin"><g:message code="login.signin.button"/>      </button>
      <button class="forgotpw"><g:message code="login.forgotpassword.button"/>      </button>
      </form>
    </div>
  </div>
</body>
</html>