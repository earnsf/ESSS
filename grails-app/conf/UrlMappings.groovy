class UrlMappings {

	static mappings = {
		"/registerPart1" (controller: "user", action: "register")
		"/registerPart2" (controller: "user", action: "registerPart2")
		"/registerPart3" (controller: "user", action: "registerPart3")
		"/register-finish" (controller: "user", action: "registerFinish")
		"/confirmEmail/$id" (controller:"user", action: "confirmEmail")
		"/settings" (controller: "user", action: "editProfile")
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }
        "/"(controller:'User',action:'homepage')
		// "/register"(view:"/user/register")
        "500"(view:'/error')
		"/rest/$domain?/$id?"(controller:'Rest', action:'rest')
	}
}
