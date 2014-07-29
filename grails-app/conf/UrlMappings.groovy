class UrlMappings {

	static mappings = {
		"/registerPart1" (controller: "user", action: "register")
		"/registerPart2" (controller: "user", action: "registerPart2")
		"/registerPart3" (controller: "user", action: "registerPart3")
		"/register-finish" (controller: "user", action: "registerFinish")
		"/"
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }
        "/"(controller:'User')
		// "/register"(view:"/user/register")
        "500"(view:'/error')
	}
}
