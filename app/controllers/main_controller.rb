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
    
    # def edit
    
    # end 
    
    def list
      @users = User.where('user_name like ?',"%#{params[:search]}%")
      
    end
end
