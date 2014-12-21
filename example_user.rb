#for future reference

class User
	attr_accessor :email, :firstName, :lastName, :labelName, :labelScene, :bandOne, :bandTwo, :bandThree

	def initialize(attributes = {})
		@email = attributes[:email]
		@firstName = attributes[:firstName]
		@lastName = attributes[:lastName]
		@labelName = attributes[:labelName]
		@labelScene = attributes[:labelScene]
		@bandOne = attributes[:bandOne]
		@bandTwo = attributes[:bandTwo]
		@bandThree = attributes[:bandThree]
	end

	def formatted_email
		"#{firstName} <#{email}>"
	end
end