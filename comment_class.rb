class Comment
	attr_accessor :comment
	def initialize(comment, user)
		@comment = comment
		@spam = false
		@user = user
	end
end