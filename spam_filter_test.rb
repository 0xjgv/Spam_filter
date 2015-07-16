require 'rspec'
require './comment_class.rb'
require './spam_filter.rb'

RSpec.describe CommentList do 
	let(:comment_list) { CommentList.new }

	describe '#add_comments' do
		it "adds a comment to the @comments_list" do 
			@input = 'This is an example'
			@user = 'Juan'
			expect(comment_list.add_comments(@input, @user).last.comment).to eq(@input)
		end
		it "adds a second comment to the @comments_list" do 
			input = 'This is a second example'
			expect(comment_list.add_comments(input, 'Javier').last.comment).to eq(input)
		end
	end	
	describe '#validate_comment' do
		it "checks if a comment has more than 2 URL's" do
			input = []
			expect(comment_list.validate_comment(input)).to eq(0)
		end
	end
end

