class HomeController < ApplicationController
  def index
    @posts = Post.order(created_at: :desc)

  end
#  before_action :of_followed_users, -> (following_users) { where user_id: following_users }
#  def index
#    @posts = Post.of_followed_users(current_user.following).order(created_at: :desc)

end
