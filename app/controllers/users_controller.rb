class UsersController < ApplicationController
  def new
    @user=User.new
  end

  def create
    @user=User.new(user_params)
      if @user.save
        session[:user_id]=@user.id
        redirect_to @user
      else
        redirect_to '/users/new'
      end
  end

  def show
    if logged_in?
      @user=User.find_by(id: params[:id])
    else
      authenticate_required
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :tickets, :height, :happiness, :nausea)
    end
end
