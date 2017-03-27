class UrlMappings {

	static mappings = {

    "/api/v1/user/$action"{
      controller="user"
    }

		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

		"/"(view:"/index")
		"500"(view:'/error')
	}
}
