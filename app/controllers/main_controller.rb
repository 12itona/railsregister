class MainController < ApplicationController
    def index
    end
    def create
        @users = User.create(:user_name => params[:user_name],:user_age=> params[:user_age])
    
        if @users.save
          render :action => 'create'
        else
          @errors = @users
          render template: "err/error"
        end
        
    end
    
    def edit
      @users = User.find(params[:id])
    end 
    def update
      userInfo = params[:user]
      User.where(id: userInfo[:id]).update_all(user_name: userInfo[:user_name], user_age: userInfo[:user_age])
    end
    
    def list
      @users = User.where('user_name like ?',"%#{params[:search]}%")
      
    end
    private
    def user_params
        params.require(:user).permit(:user_name, :user_age, :id)
    end
end
