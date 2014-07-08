class Logged::UsersController < Logged::BaseController
  # GET /tweets
  # GET /tweets.json
  def index
    @users = User.where(:id.ne => current_user.id).paginate(:page => params[:page], :per_page => 1)
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update_attributes(user_params)
      redirect_to logged_tweets_path
    else
      render "edit"
    end
  end

  def destroy
    @user = current_user
    if @user.destroy
      redirect_to :home
    else
      render :edit
    end
  end

  private
    def user_params
      params.require(:user).permit(:name,:email)
    end
end
