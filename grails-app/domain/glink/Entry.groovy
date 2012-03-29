package glink

class Entry {
	String title
	String url
	String description
	Category category
    static constraints = {
		title(blank:false)
		url(url:true)
		description(widget:'textarea')
		category(nullable:true,validator:{
			boolean good = true
			try {
				good = it.toURL().text?true:false
			} catch(Throwable t) {
				good = false
			} 
			return good
		})
    }
}
