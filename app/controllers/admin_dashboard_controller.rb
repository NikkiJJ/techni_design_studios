class AdminDashboardController < ApplicationController
  before_action :authenticate_admin!

  def index
    @posts = Post.all
  end
end
