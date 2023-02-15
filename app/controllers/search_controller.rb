class SearchController < ApplicationController
  def index
    @q = Post.includes(:user, :rich_text_body, :category).ransack(params[:q])
    @posts = @q.result(distinct: true)
  end
end
