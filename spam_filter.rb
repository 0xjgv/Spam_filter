class CommentList
	def initialize
		@comment_list = []
	end

	def add_comments(comment, user)
		new_comment = Comment.new(comment, user)
		@comment_list << new_comment
	end

	def validate_comment(list)
		
	end
end

