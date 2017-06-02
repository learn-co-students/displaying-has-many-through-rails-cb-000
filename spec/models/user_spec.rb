require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    User.destroy_all
    Post.destroy_all
    Comment.destroy_all
    @user = User.create!(username: "Bob", email: "Bob@mailbox.com")
    @post = Post.create!(title: "Title", content: "Words words words...")
    @comment = @user.comments.create!(content: "OhEmGee!!!", post: @post)
  end

  it "has posts through comments" do
    expect(@user.posts.first.title).to eq("Title")
  end
end