<html>
<head>
  <meta name="layout" content="main">
  <meta charset="utf-8">
  <meta name="viewport" content="initial-scale=1.0">
  <title>withdrawal_checklist</title>
  <link href="//fonts.googleapis.com/css?family=Open+Sans:400,400,600" rel="stylesheet" type="text/css">
  <asset:stylesheet src="withdrawal/standardize.css"/>
  <asset:stylesheet src="withdrawal/withdrawal_checklist-grid.css"/>
  <asset:stylesheet src="withdrawal/withdrawal_checklist.css"/>
  <script type="text/javascript">
      function showDiv(x) {
        //console.log('in showDiv')
        which="";
        if (x == 1) {
          which = "expand_time_div";
        } else if (x == 2) {
          which = "expand_tax_div";
        } else if (x == 3) {
          which = "expand_invoice_div";
        }
        var i = document.getElementById(which).style.display;
        if (i == 'block') {
          document.getElementById(which).style.display = "none";
        } else {
          document.getElementById(which).style.display = "block";
        }
      }
      function validate() {
	  	var checkboxes = document.getElementsByClassName('checkbox');
	  	//console.log(checkboxes.length)
	  	for (var c in checkboxes) {
		  	if (!c.checked) {
				console.log('not checked!');
				alert('Sorry, you need to have all these ready before proceeding');
				returnToPreviousPage();
				return false;
			}
		}
		return true;
      }
      
  </script>
</head>
<body class="body withdrawal_checklist clearfix">
  <div class="main clearfix">
    <div class="welcome clearfix">
      <p class="welcome_title">&nbsp;Checklist</p>
      <p class="welcome_text">Awesome, you're about to request a withdrawal for your TripleBoost Account(s)! Please go through this checklist to make sure you have everything you need.      </p>
    </div>
    <div class="checklist_main clearfix">
      <div class="c_parent clearfix">
        <label class="checkbox-label clearfix">
          <input class="checkbox" type="checkbox">
          <span class="point-text">I am the parent and the primary account holder          </span>
        </label>
      </div>
      <div class="c_time clearfix">
        <label class="checkbox_time clearfix">
          <input class="checkbox" type="checkbox">
          <span class="point_time_text">I have 30 - 60 minutes of Time</span>
        </label>
        <button class="expand_time" onclick="showDiv(1)">
          <p>expand for more information</p>
          <p></p>
        </button>
      </div>
      <div id="expand_time_div" class="c_time_expand clearfix">
        <p class="c_time_expand_text">You need this amount of time to fill out the Exit Survey, the withdrawal request form, and upload the invoice/estimate/quote for your expense. You can save your progress, but not in the middle of a form!        </p>
      </div>
      <div class="c_1040 clearfix">
        <label class="checkbox_1040 clearfix">
          <input class="checkbox" type="checkbox">
          <span class="point_1040_text">1040 Tax Form</span>
        </label>
        <button class="expand_tax" onclick="showDiv(2)">
          <p>expand for more information</p>
          <p></p>
          <p></p>
        </button>
      </div>
      <div id="expand_tax_div" class="c_tax_expand clearfix">
        <p class="c_tax_expand_text">You will need your 1040 Tax Form for answering questions on the exit survey. It is the standard federal income tax form used to report your gross income and it looks like this:</p>
        <%--<img class="c_1040_image" src="images/Screen Shot 2014-08-14 at 10.51.33 AM-566x270.png" data-rimage data-src="images/Screen Shot 2014-08-14 at 10.51.33 AM-566x270.png">
        --%><asset:image class="c_1040_image" src="withdrawal/Tax1040-566x270.png"/>
      </div>
      <div class="c_invoice clearfix">
        <label class="checkbox_invoice clearfix">
          <input class="checkbox" type="checkbox">
          <span class="point_invoice_text">Invoice/Estimate/Quote for Requested Expense</span>
        </label>
        <button class="expand_invoice" onclick="showDiv(3)">
          <p>expand for more information</p>
          <p></p>
          <p></p>
        </button>
      </div>
      <div id="expand_invoice_div" class="c_invoice_expand clearfix">
        <div class="c_invoice_expand_text">
          <p>Est etiam processus dynamicus qui sequitur mutationem consuetudium lectorum mirum est. Et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril. Quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut! Quod ii legunt saepius claritas notare quam littera gothica quam nunc putamus parum claram! Liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat. Est usus legentis in iis qui facit eorum.</p>
          <p>Claritatem insitam est usus legentis in iis qui facit eorum claritatem Investigationes demonstraverunt lectores legere. Hendrerit in vulputate velit esse molestie consequat vel illum; dolore eu feugiat nulla.</p>
          <p>Eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim. Quinta decima eodem modo typi qui nunc nobis videntur parum, clari fiant sollemnes. Nam liber tempor cum soluta nobis assum typi. Nulla facilisis at vero eros et accumsan et iusto odio dignissim qui. Eum iriure dolor in hendrerit in vulputate velit esse. Etiam processus dynamicus qui sequitur mutationem consuetudium lectorum mirum est. Claritatem Investigationes demonstraverunt lectores legere me lius, quod ii legunt.</p>
        </div>
        <%--<img class="c_invoice_image" src="images/Screen Shot 2014-08-14 at 11.01.34 AM-604x923.png" data-rimage data-src="images/Screen Shot 2014-08-14 at 11.01.34 AM-604x923.png">
        --%><asset:image class="c_invoice_image" src="withdrawal/ValidExpenses-604x923.png"/>
      </div>
      <g:form action="exitsurvey" controller="withdrawal" before="return validate()">
      <button class="ready">
        <p>I'm Ready!</p>
      </button>
      </g:form>
    </div>
  </div>

  <script src="js/jquery-min.js"></script>
  <script src="js/rimages.js"></script>
</body>
</html>