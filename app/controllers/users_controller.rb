class UsersController < ApplicationController
   
    
    # before_action :authenticate_compte!, only: [:index]
    # before_action :authenticate_admin, only:[:destroy] 
    
    
    
    def index
    
        @users = User.all
        
    end
    
    
    def show
    
        @user = User.find(params[:id])
        
    end
    
    
    def destroy
        
        User.find(params[:id]).delete
        redirect_to "/users"
        
    end
    
    
    
end
