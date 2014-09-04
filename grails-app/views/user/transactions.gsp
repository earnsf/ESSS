<%@ page import="unity.Account" %>
<%@ page import="unity.Transaction" %>
<html>
<head>
  <meta charset="utf-8">
  <%--<meta name="layout" content="main">
  --%>
  <meta name="viewport" content="initial-scale=1.0">
  <title>transactions</title>
  <link href="http://fonts.googleapis.com/css?family=Open+Sans:600,400,400,300" rel="stylesheet" type="text/css">
  <asset:stylesheet src="standardize.css"/>
  <asset:stylesheet src="transactions-grid.css"/>
  <asset:stylesheet src="transactions.css"/>
</head>
<body class="body transactions clearfix">
<div id ="wrap">
  <div class="mainbody clearfix">
    <h2 class="welcome">Transactions for ${name}'s Tripleboost Account</h2>
    <div class="t_container clearfix">
      <g:each var="cur_trans" in="${transList}">
      <div class="t_main clearfix">
        <div class="t_top clearfix">
          <p class="t_date">Date:</p>
          <p class="t_date_val">${cur_trans.transactionDateString}</p>
          <p class="t_id">ID #</p>
          <p class="t_id_val">${cur_trans.id}</p>
        </div>
        <%--<p class="t_status">STATUS</p>
        <p class="t_status_val">${cur_trans.status}</p>
        <p class="t_type">TYPE</p>
        <div class="t_type_val"><span class="t_type_val_span">${cur_trans.type}</span></div>
        <p class="t_fund_source">FUNDING SOURCE</p>
        <p class="t_fund_source_val">${cur_trans.fundingSource}</p>
        <p class="t_total_funds">Amount</p>
        <p class="t_total_funds_val">${cur_trans.amount}</p>
        --%><%--<p class="t_total_funds_val"><g:formatNumber number="${cur_trans.amount}" type="currency" currencyCode="USD" /></p>
      --%>
      
        <p class="t_type">TYPE:</p>
        <p class="t_type_val"><span class="t_type_val_span">${cur_trans.type}</span></p>
        <p class="t_sub_deposited">Amount Deposited</p>
        <p class="t_sub_deposited_val">+$2000.00</p>
        <p class="t_sub_incen">Incentive Earned</p>
        <p class="t_status">STATUS:        </p>
        <p class="t_status_val">Incentive Pending</p>
        <p class="t_sub_incen_val">+$6000.00</p>
      
      
      </div>
      </g:each>
      <div class="t_subtotals clearfix">
        <p class="t_sub2">Saver Funds Balance</p>
        <p class="t_sub1">Incentives Balance</p>
        <p class="t_sub1_val t_sub1_val-1">$2000.00        </p>
        <p class="t_sub1_val t_sub1_val-2">$6000.00</p>
      </div>
      <div class="t_totals clearfix">
        <p class="t_totals_text">Total Funds        </p>
        <p class="t_totals_text_val">$8000.00</p>
      </div>
    </div>
    <p class="t_acct">ACCT    </p>
    <p class="t_acct_val">xxxxx${acctNum.toString()[-4..-1]}    </p>
    <div class="sidebar clearfix">
      <a class="edit_profile" href="#">Edit Profile</a>
      <a class="req_withdrawl" href="#">Request Withdrawl</a>
      <a class="faq" href="#">FAQ</a>
      <a class="contact_us" href="#">Contact Us</a>
    </div>
  </div>
</div>
</body>
</html>