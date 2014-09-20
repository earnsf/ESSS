<!DOCTYPE html>
<html xmlns="//www.w3.org/1999/xhtml">
<head>
    <title>EARN Saver Portal</title>
<link rel="stylesheet" type="text/css" media="all" href="//earn.org/static/css/earn.css" />
<link rel="stylesheet" href="//earn.org/static/css/uniform.default.css" type="text/css" />
<link rel="stylesheet" href="//earn.org/static/css/wygwam.css" type="text/css" />
<script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script type="text/javascript" src="//earn.org/js/earn"></script>
<script type="text/javascript" src="//earn.org/static/js/pretty_date.js"></script>
<script type="text/javascript" src="//earn.org/static/js/jquery.uniform.min.js"></script>
<script type="text/javascript" src="//s7.addthis.com/js/250/addthis_widget.js"></script>
<script type="text/javascript">
    var _gaq = _gaq || [];
    _gaq.push(['_setAccount', 'UA-4300117-4']);
    _gaq.push(['_trackPageview']);
    (function () {
        var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : '//www') + '.google-analytics.com/ga.js';
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
    })();
</script>


<style>
    #events {
        border: 1px solid #dedede;
    }

    #previewTabs {
        margin-bottom: 20px;
        width: 100%;
    }

        #previewTabs td {
            white-space: nowrap;
            width: 1%;
            border-right: 1px solid #dedede;
            border-bottom: 1px solid #dedede;
            background: #fafafa;
        }

            #previewTabs td a {
                display: block;
                padding: 12px 15px;
                font-size: 13px;
                font-weight: bold;
                color: #a8a8a8;
                text-transform: uppercase;
            }

            #previewTabs td.last {
                width: 99%;
                border-right: none;
            }

            #previewTabs td.active {
                border-bottom: 1px solid #fff;
                background: #fff;
            }

                #previewTabs td.active a {
                    color: #53ab45;
                }
</style>

<script>
    function showPreviewTab(i) {

        var tds = $('#previewTabRow td');
        var content = $('#previewContentWrapper').children('div');
        tds.removeClass('active');
        $(tds[i]).addClass('active').css('cursor', 'select');
        $('#previewContentWrapper').fadeOut(100, function () {
            content.hide();
            $(content[i]).show();
            $(this).fadeIn(400);
        });
    }


</script>
<script type="text/javascript">
        function setTweetsH() {
            var totalH = 0;
            $('#homeMiddleContent .homePreviewItem').each(function () {
                var h = $(this).outerHeight(true);
                totalH += h;
            });
            $('#tweetsOuter').css('height', totalH + 'px');
        }

        setTweetsH();
</script>
<g:layoutHead/>
</head>

        <body>
            <div id="outer">
                <div id="header">
                    <div style="float: left">
                        <a href="/"><img src="//earn.org/static/img/logo.png" alt="logo" /></a>
                    </div>
                    
                    <br clear="both" />
                </div>
                <%--<div id="menu">
                    <a href="//earn.org/financial_services"><img src="//earn.org/static/img/menu_services.png" alt="Financial Services" /></a>
                    <a href="//earn.org/policy_innovation"><img src="//earn.org/static/img/menu_policy.png" alt="Policy &amp; Innovation" /></a>
                    <a href="//earn.org/how_you_can_help"><img src="//earn.org/static/img/menu_help.png" alt="How You Can Help" /></a>
                    <a href="//earn.org/about_earn"><img src="//earn.org/static/img/menu_about.png" alt="About" /></a>
                    <a href="//earn.org/earn_news"><img src="//earn.org/static/img/menu_news.png" alt="News" /></a>
                    <br clear="both" />
                </div>
--%><form name="submitForm" method="POST" action="${createLink(controller: 'logout')}">
		<input type="hidden" name="" value=""> 
		<a HREF="javascript:document.submitForm.submit()">Logout</a>
		</form> 
		
<g:layoutBody/>


    <div id="footer">
        <div class="left" style="width:10%;height:10%;">
            <a target="_blank" href="//www.citigroup.com/citi/citizen/community/"><img src="//earn.org/static/img/logo_citi.png" alt="" /></a>
        </div>
        <div class="right">
            <a href="//earn.org/about_earn">About Us</a> &bull;
            <a href="//earn.org/about/contact_us/">Contact Us</a> &bull;
            <a href="//earn.org/news/press_resources/">Press Resources</a> &bull;
            <a href="//earn.org/about/privacy_policy/">Privacy Policy</a>

            &copy;2014 EARN
            <br />
            <div id="footerButtons">
                <a class="button" target="_blank" href="//twitter.com/earn"><img src="//earn.org/static/img/button/twitter.jpg" alt="" /></a>
                <a class="button" target="_blank" href="//www.facebook.com/earnorg"><img src="//earn.org/static/img/button/facebook.jpg" alt="" /></a>
                <a class="button" target="_blank" href="//www.youtube.com/earn"><img src="//earn.org/static/img/button/youtube.jpg" alt="" /></a>
                <!--a class="button" target="_blank" href="javascript:void(0)"><img src="/static/img/button/rss.jpg" alt="" /></a-->
            </div>
            <br clear="both" />
        </div>
        <br clear="both" />
    </div>
    </div>
    
</body>
</html>