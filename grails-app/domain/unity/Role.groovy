package unity

class Role {

	String authority

	static mapping = {
		cache true
		table "esss_sec_role"
		version false
	}

	static constraints = {
		authority blank: false, unique: true
	}
}
