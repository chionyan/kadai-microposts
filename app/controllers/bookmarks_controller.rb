class BookmarksController < ApplicationController
  before_action :require_user_logged_in
  
  def create
    micropost = Micropost.find(params[:micropost_id])
    current_user.bookmark(micropost)
    flash[:success] = 'ブックマークしました。'
    redirect_to :back
  end

  def destroy
    micropost = Micropost.find(params[:micropost_id])
    current_user.unbookmark(micropost)
    flash[:success] = 'ブックマークを解除しました。'
    redirect_to :back
  end
end
