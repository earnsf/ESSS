<%@ page import="unity.Account" %>
<html>
<head>
  <meta name="layout" content="main">
  <g:set var="entityName" value="${message(code: 'account.label', default: 'Account')}" />
  <meta charset="utf-8">
  <%-- <meta name="viewport" content="initial-scale=1.0"> --%>
  <title>homepage</title>
  <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,400,300,600" rel="stylesheet" type="text/css">
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
    <h2 class="welcome">Welcome, ${name}</h2>
    <div class="sidebar clearfix">
      <%--<a class="edit_profile" href="#">Edit Profile</a>
      --%>
      <g:form action="editProfile" controller="user">
      <button class="edit_profile">Edit Profile</button>
      </g:form>
      <a class="req_withdrawl" href="#">Request Withdrawl</a>
      <a class="faq" href="https://earn.zendesk.com/hc/en-us/categories/200128880-TripleBoost-Account">FAQ</a>
      <a class="contact_us" href="#">Contact Us</a>
    </div>
    <g:each var="cur_account" in="${openList}">
    <div class="accounts clearfix">
      <div class="top clearfix">
        <p class="account_brand">TripleBoost Account for:</p>
        <p class="name">${cur_account.firstName}&nbsp;${cur_account.lastName}</p>
        <p class="account_num">ACCOUNT #</p>
        <p class="last_four">xxxxx${cur_account.externalAccountId.toString()[-4..-1]}</p>
      </div>
      <p class="status">STATUS</p>
      <p class="c_status">Open</p>
      
      <p class="saver_balance">Saver Funds Balance</p>
      <p class="c_saver_balance"><g:formatNumber number="${cur_account.transactionSaverFunds}" type="currency" currencyCode="USD" /></p>
      <p class="incen_balance">Incentives Balance</p>
      <p class="c_incen_balance"><g:formatNumber number="${cur_account.transactionIncentiveBalance}" type="currency" currencyCode="USD" /></p>
      <p class="open_date">ACCT OPEN DATE</p>
      <p class="exp_date">ACCT EXPIR DATE</p>
      <p class="c_opendate">${cur_account.earnAccountOpenedDateString}</p>
      <p class="c_expdate">${cur_account.earnAccountDeadlineString}</p>
      <div class="total_funds_div"><p class="total_funds">Total Funds</p></div>
      <div class="c_total_funds_div"><p class="c_totalfunds"><g:formatNumber number="${cur_account.totalFunds}" type="currency" currencyCode="USD" /></p></div>
      <div class="total_funds_hover clearfix">
        <p class="total_funds_hover_text">Available funds for withdrawl only if eligible        </p>
      </div>
      <a class="req_withdrawl_acct" href="#">Request a Withdrawl</a>
      <a class="req_trans_acct" href="#">View Transactions</a>
    </div>
    </g:each>
    <g:each var="cur_account" in="${closedList}">
    <div class="accounts_closed clearfix">
      <div class="top clearfix">
        <p class="account_brand">IDA Account for:</p>
        <p class="name">${cur_account.firstName}&nbsp;${cur_account.lastName}</p>
        <p class="account_num">ACCOUNT #</p>
        <p class="last_four">xxxxxxxxx</p>
      </div>
      <p class="status">STATUS</p>
      <p class="c_status_closed">Closed</p>
      <a class="whynot" href="#">Why can't I see my information?</a>
      <p class="open_date">ACCT OPEN DATE</p>
      <p class="exp_date">ACCT EXPIR DATE</p>
      <p class="c_opendate">xx/xx/xx</p>
      <p class="c_expdate">xx/xx/xx</p>
    </div>
    </g:each>
  </div>
  </div>
  <!-- <footer class="_element"></footer> -->
</body>
</html>