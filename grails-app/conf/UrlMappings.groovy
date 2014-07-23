class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(controller:'User')
		"/register"(view:"/login/register")
        "500"(view:'/error')
	}
}
