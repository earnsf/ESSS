class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(controller:'User')
        "500"(view:'/error')
		
		// This calls the UserController
		// "/"(controller:'User')
	}
}
