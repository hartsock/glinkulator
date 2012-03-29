package glink

class Category {
	String name
    static constraints = {
		name(unique:true,blank:false)
    }
	String toString() { name }
}
