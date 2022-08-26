class UsersController < ApplicationController
  
    def new

    end

    def index
      @users = User.all
    end
    def show
      @user = User.find(params[:id])
    end

    def create
        user = User.new(user_params)
        if user.save
          session[:user_id] = user.id
          redirect_to '/'
        else
          redirect_to '/signup'
        end
    end 
     
    def edit

      @user = User.find(params[:id])
  
  end

  def image_thumbnail
   current_user.image.variant.(resize_to_limit: [300,300]).processed
  end

    def update
    
      @user = User.find(params[:id])
      if @user.update(user_params)
      redirect_to '/posts'
   
      end

    end
    
    def destroy
      @user = User.find(params[:id])
      if @user.destroy
      redirect_to '/users'
   
      end
    end

    private
    def user_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation, :image)
      end
end