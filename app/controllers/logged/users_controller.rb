class Logged::UsersController < Logged::BaseController
  # GET /tweets
  # GET /tweets.json
  def index
    @users = User.all
  end
end
