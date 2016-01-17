class UsersController < ApplicationController
       
    before_action :authenticate_user!, only: [:index, :show] 
    
    def index
        @users = User.all
    end
    
    
    def show
        @user = User.find(params[:id])
    end
    
    
    def destroy
        @user = User.find(params[:id])
        if current_user.role == "admin" 
            @user.destroy
            flash[:notice] = "Le compte d'utilisateur *** N°: #{@user.id} - #{@user.email} *** a été bien supprimé !"
            redirect_to "/users"
        else
            flash[:alert] = "Not authorized - Only Administrators !" 
            redirect_to "/users/#{params[:id]}"
        
        
    end
          
        
    end
        
    
    
end
