
<html>
<head>
  <meta name="layout" content="main">
  <meta charset="utf-8">
  <meta name="viewport" content="initial-scale=1.0">
  <title>withdrawl_upload</title>
  <link href="//fonts.googleapis.com/css?family=Open+Sans:400,400,600" rel="stylesheet" type="text/css">
  <asset:stylesheet src="withdrawal/standardize.css" />
  <asset:stylesheet src="withdrawal/withdrawal_upload-grid.css" />
  <asset:stylesheet src="withdrawal/withdrawal_upload.css" />
  <script type="text/javascript">
      function showDiv() {
        var i = document.getElementById("expand").style.display;
        if (i == 'block') {
          document.getElementById("expand").style.display = "none";
          document.getElementById("expand_text").innerHTML = "expand for more information";
        } else {
          document.getElementById("expand").style.display = "block";
          document.getElementById("expand_text").innerHTML = "close for less information";
        }
      }
  </script>
</head>
<body class="body withdrawl_upload clearfix">
  <div class="main clearfix">
    <div class="welcome clearfix">
      <p class="welcome_title">&nbsp;File Upload</p>
      <p class="welcome_text">Please upload your invoice/quote/estimate here for each child! :)</p>
    </div>
    <div class="main_upload clearfix">
      <button class="expand_invoice" onclick="showDiv()">
        <p id="expand_text">expand for more information</p>
        <p></p>
        <p></p>
      </button>
      <div id="expand" class="c_invoice_expand clearfix">
        <div class="c_invoice_expand_text">
          <p>Est etiam processus dynamicus qui sequitur mutationem consuetudium lectorum mirum est. Et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril. Quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut! Quod ii legunt saepius claritas notare quam littera gothica quam nunc putamus parum claram! Liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat. Est usus legentis in iis qui facit eorum.</p>
          <p>Claritatem insitam est usus legentis in iis qui facit eorum claritatem Investigationes demonstraverunt lectores legere. Hendrerit in vulputate velit esse molestie consequat vel illum; dolore eu feugiat nulla.</p>
          <p>Eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim. Quinta decima eodem modo typi qui nunc nobis videntur parum, clari fiant sollemnes. Nam liber tempor cum soluta nobis assum typi. Nulla facilisis at vero eros et accumsan et iusto odio dignissim qui. Eum iriure dolor in hendrerit in vulputate velit esse. Etiam processus dynamicus qui sequitur mutationem consuetudium lectorum mirum est. Claritatem Investigationes demonstraverunt lectores legere me lius, quod ii legunt.</p>
        </div>
        <asset:image class="c_invoice_image" src="withdrawal/ValidExpenses-604x923.png"/>
      </div>
      <g:uploadForm controller="Document" action="uploaded">
      <g:each var="cur_child" in="${child_list}">
      <div class="upload upload-1 clearfix">
        <p class="upload_name">for ${cur_child.first_name}</p>
        <fieldset class="form_fieldset">
        <input class="file_upload" type="file" name="file_${cur_child.id}" />
        </fieldset>
      </div>
      </g:each>
      <input class="submit" type="submit" value="Upload">
      </g:uploadForm>
    </div>
  </div>

  <script src="js/jquery-min.js"></script>
  <script src="js/rimages.js"></script>
</body>
</html>