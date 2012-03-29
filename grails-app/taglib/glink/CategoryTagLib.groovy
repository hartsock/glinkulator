package glink

class CategoryTagLib {

	def entryList = { attr ->
		def category = Category.findByName(attr.category)
		Entry.findAllByCategory(category).each { Entry entry ->
			def linkText = createLink(
					controller:'entry', action:'show',id: entry.id)
			out << "<li><a href='$linkText'>$entry.title</a></li>"
			
		}
	}
}
