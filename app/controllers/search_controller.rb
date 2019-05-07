class SearchController < ApplicationController
  def index
    @posts = Post.where("description like ?", "%#{params[:query]}%")
  end
end
