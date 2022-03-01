class BlogsController < ApplicationController
  before_action :find_blog, only: [:show, :edit, :update, :destroy]

  def index
    @blogs = Blog.all
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private 

  def blog_params
    params.require(:blog).permit(:title, :caption, :content, :user_id)
  end

  def find_blog
    @blog = Blog.find(params[:blog_id])
  end
end
