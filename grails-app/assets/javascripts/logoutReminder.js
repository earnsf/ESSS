if (sessionStorage.getItem("is_reloaded")) alert('Reloaded!');
sessionStorage.setItem("is_reloaded", true);

reminder()

function reminder() {
	var inFormOrLink = "If you refresh or close this page, you will be logged out.";
	
	$('a').live('click', function() { inFormOrLink = true; });
	$('form').bind('submit', function() { inFormOrLink = true; });
	// alert(inFormOrLink)
	$(window).bind("beforeunload", function prompt() {
		if (inFormOrLink != true) {
			return "If you refresh or close this page, you will be logged out." || confirm("Do you really want to close?")
		}
	})
	$(window).bind("beforeunload", function () { 
		if (inFormOrLink != true) {
			jQuery.get('/p1/j_spring_security_logout') // MUST CHANGE P1 FOR WEBSITE 
		}
	} );
	
}
