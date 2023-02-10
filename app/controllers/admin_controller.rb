class AdminController < ApplicationController
  def index
  end

  def posts
    @posts = Post.all.includes(:user, :comments)
  end

  def users
  end

  def comments
  end

  def show_post
    @post = Post.includes(:user, :comments).find(params[:id])
  end
end
