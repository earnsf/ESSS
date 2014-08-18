
<html>
<head>
<meta name="layout" content="main">
  <meta charset="utf-8">
  <meta name="viewport" content="initial-scale=1.0">
  <title>withdrawal_home</title>
  <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,400,600" rel="stylesheet" type="text/css">
  <asset:stylesheet src="withdrawal/standardize.css"/>
  <asset:stylesheet src="withdrawal/withdrawal_home-grid.css"/>
  <asset:stylesheet src="withdrawal/withdrawal_home.css"/>
</head>
<body class="body withdrawal_home clearfix">
  <div class="main clearfix">
    <g:form controller="withdrawal" action="withdrawal_checklist" method="POST">
    <p class="select">&nbsp; Select Account(s) for Withdrawal</p>
    <p class="amount_avail amount_avail-1">Account</p>
    <p class="amount_avail amount_avail-2">Available Amount    </p>
    <div class="ida_container clearfix">
      <label class="checkbox-label clearfix">
        <input class="checkbox" type="checkbox">
        <span class="point-text">IDA for George        </span>
      </label>
      <p class="ida_amount">$2000.00      </p>
    </div>
    <div class="tb_container clearfix">
      <label class="checkbox-label clearfix">
        <input class="checkbox" type="checkbox">
        <span class="point-text">TripleBoost for Hubert</span>
      </label>
      <p class="ida_amount">$6000.00</p>
    </div>
    <div class="tb_container clearfix">
      <label class="checkbox-label clearfix">
        <input class="checkbox" type="checkbox">
        <span class="point-text">TripleBoost for Sally</span>
      </label>
      <p class="ida_amount">$6000.00</p>
    </div>
    <div class="tb_container clearfix">
      <label class="checkbox-label clearfix">
        <input class="checkbox" type="checkbox">
        <span class="point-text">TripleBoost for Alex</span>
      </label>
      <p class="ida_amount">$6000.00</p>
    </div>
    <button class="_button">
      <p>Request Withdrawal</p>
      <p></p>
      <p></p>
      <p></p>
    </button>
    </g:form>
  </div>

  <script src="js/jquery-min.js"></script>
</body>
</html>