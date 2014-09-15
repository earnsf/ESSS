<%@ page import="unity.Account" %>
<html>
<head>
  <%--<meta name="layout" content="main">
  --%><g:set var="entityName" value="${message(code: 'account.label', default: 'Account')}" />
  <meta charset="utf-8">
  <%-- <meta name="viewport" content="initial-scale=1.0"> --%>
  <title>homepage</title>
  <link href="//fonts.googleapis.com/css?family=Open+Sans:400,400,300,600" rel="stylesheet" type="text/css">
  <asset:stylesheet src="standardize.css"/>
  <asset:stylesheet src="homepage-grid.css"/>
  <asset:stylesheet src="homepage.css"/>

</head>
<body class="body homepage clearfix">
<%--   <header class="_container clearfix">
    <asset:image class="logo" src="earn_logo(2).png"/>
  </header> --%>
  
  <div id ="wrap">
	  <div class="mainbody clearfix">
	    <h2 class="welcome">Oops, register your email, please</h2>
	    <div class="emailunconfirmed clearfix">
      	<p class="emailunconfirmed_text">Sorry, it looks like your email hasn't been verified yet. Please check your email and click the link. If you need help, blah blah.      </p>
    	</div>
	    
	  </div>
  </div>
  <!-- <footer class="_element"></footer> -->
</body>
</html>