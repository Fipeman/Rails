class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    Post.create(title: params[:title], date: params[:date], image_url: params[:image_url], content: params[:content])
  end
end
