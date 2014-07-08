class Logged::FriendshipsController < Logged::BaseController
  def index
    @followers = User.where(:id.ne => current_user.id).paginate(:page => params[:page], :per_page => 1)
    @followings = User.where(:id.ne => current_user.id).paginate(:page => params[:page], :per_page => 1)
  end


  def create
  end

  def destroy
  end

  private
    def friendship_params
      params.require(:user).permit()
    end
end
