<html>
<head>
  <meta charset="utf-8">
  <meta name="layout" content="main">
  <title>register4</title>
  <link href="//fonts.googleapis.com/css?family=Open+Sans:400,400,inherit" rel="stylesheet" type="text/css">
  <meta http-equiv="refresh" content="15;url=/" />
  <asset:stylesheet src="standardize.css"/>
  <asset:stylesheet src="register4-grid.css"/>
  <asset:stylesheet src="register4.css"/>
  <script type="text/javascript">
	  window.onload=function(){ 
		    window.setTimeout(document.finish.submit.bind(document.finish), 15000);
		};
	  var count = 15;
	  var counter=setInterval(timer, 1000);
	  function timer()
	  {
	    count=count-1;
	    if (count <= 0)
	    {
	       clearInterval(counter);
	       return;
	    }
	    document.getElementById("timer").innerHTML=count
	  }
  </script>
</head>
<body class="body register4 clearfix">
  <div class="container registerpage">
    <div class="registerbox clearfix">
      <p class="text congrats">Congratulations. You have been successfully registered!</p>
      <div class="bar"></div>
      <p class="text redirect">You will be redirected to the Login page in <span id="timer">15</span> seconds. &nbsp; Click "Finish" to do so immediately.</p>
      <g:form controller="login" action="auth" method='POST' class='cssform' autocomplete='off' name="finish">
	      <input type='hidden' name='email' class='text' value='${login_email}'/>
	      <button class="finish">
	        <p>Finish</p>
	        <p></p>
	        <p></p>
	        <p></p>
	        <p></p>
	      </button>
      </g:form>
    </div>
  </div>
</body>
</html>