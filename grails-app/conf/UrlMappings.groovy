class UrlMappings {

	static mappings = {

        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }
		"/register"(controller: "user", action: "register")
		"/register-continued"(controller: "user", action: "registerContinued")
		"/register-final"(controller: "user", action: "registerFinish")
        "/"(controller:'User')
		// "/register"(view:"/user/register")
        "500"(view:'/error')
	}
}
