<%@ page import="unity.Account" %>
<html>
<head>
<meta name="layout" content="main">
  <meta charset="utf-8">
  <meta name="viewport" content="initial-scale=1.0">
  <title>withdrawal_home</title>
  <link href="//fonts.googleapis.com/css?family=Open+Sans:400,400,600" rel="stylesheet" type="text/css">
  <asset:stylesheet src="withdrawal/standardize.css"/>
  <asset:stylesheet src="withdrawal/withdrawal_home-grid.css"/>
  <asset:stylesheet src="withdrawal/withdrawal_home.css"/>
</head>
<body class="body withdrawal_home clearfix">
  <div class="main clearfix">
    <g:form controller="withdrawal" action="withdrawal_checklist" method="POST">
    <p class="select">&nbsp; Select Account(s) for Withdrawal</p>
    <p class="account">Account</p>
    <p class="amount_avail amount_avail-1">Amount</p>
    <p class="amount_avail amount_avail-2">Withdrawal Type</p>
    <g:each var="cur_ida" in="${idaList}" status="i">
    <div class="ida_container clearfix">
      <label class="checkbox-label clearfix">
        <%--<input class="checkbox" type="checkbox">
        --%><g:checkBox class="checkbox" name="checkBoxIda_${cur_ida.id}" />
        <span class="point-text">IDA for ${cur_ida.firstName}</span>
      </label>
      <%--<p class="ida_amount">${cur_ida.totalFunds}</p>
      --%><p class="ida_amount"><g:formatNumber number="${cur_ida.totalFunds}" format="\$#.##" /></p>
      <select class="_select">
        <option value="Option">Option</option>
      </select>
      
    </div>
    </g:each>
    
    <g:each var="cur_triple" in="${tripleList}" status="i">
    <div class="tb_container clearfix">
      <label class="checkbox-label clearfix">
        <%--<input class="checkbox" type="checkbox">
        --%>
        <g:checkBox class="checkbox" name="checkBoxTriple_${cur_triple.id}" />
        <span class="point-text">TripleBoost for ${cur_triple.firstName}</span>
      </label>
      <%--<p class="ida_amount">${cur_triple.totalFunds }</p>
      --%><p class="ida_amount"><g:formatNumber number="${cur_triple.totalFunds}" format="\$#.##" /></p>
    </div>
    </g:each>
    <button class="_button">
      <p>Request Withdrawal</p>
      <p></p>
      <p></p>
      <p></p>
    </button>
    <g:hiddenField name="idaListSize" value="${idaList.size}" />
    <g:hiddenField name="tripleListSize" value="${tripleList.size}" />
    </g:form>
  </div>

  <script src="js/jquery-min.js"></script>
</body>
</html>