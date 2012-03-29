import glink.*
class BootStrap {

    def init = { servletContext ->
		if(Category.count() == 0) {
			['Technology','Cool',
			'a','b','c','d','e','f','g','h','i','j'].each {
				new Category(name:it).save()
			}
		}
    }
    def destroy = {
    }
}
