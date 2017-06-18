require 'rails_helper'

describe "Post" do
  it "has a title" do
    post = Post.create(title: "I like rails")
    expect(post.title).to eq("I like rails")
  end
end
