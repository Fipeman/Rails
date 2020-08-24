class PostsController < ApplicationController
  http_basic_authenticate_with name: "desafiovamoscontodo", password: "XAHTJEAS23123%23", only: :index
  def new
    @post = Post.new
  end

  def create
    
    @post = Post.new(title: params[:post][:title], date: params[:post][:date], image_url: params[:post][:image_url], content: params[:post][:content])
    @post.content = params[:post][:content].gsub('spoiler', '')
    if @post.save
      flash[:notice] = "Saved"
      redirect_to posts_result_path
    else  
      flash[:error] = "Error saving post, verify that it contains all the fields"
      redirect_to posts_result_path
    end 
  end

  def index
    @posts = Post.all.order(date: :desc)
  end

  def result
  end  

end
