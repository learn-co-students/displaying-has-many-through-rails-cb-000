class PostsController < ApplicationController
#testing
  def show
    @post = Post.find(params[:id])
  end
end
