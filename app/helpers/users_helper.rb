module UsersHelper
	def getClass(result)
		return result == "no" ? "#ff0000" : "#00ff00"
	end
	def checkAge(age)
		return age >= 18 ? "Adult" : "Child"
	end
end
