class AdminController < ApplicationController
  def login
    if request.post?
        if params[:username]== "admin" && params[:password]== "admin123"
            session[:admin]= "admin"
            redirect_to :controller=> :stores
        else
            flash[:notice]= "Invalid Credentials"
            render :action=> :login
        end
    end
  end

    def logout
        session.delete(:admin)
        flash[:notice]= "You are logged out"
        redirect_to :action=>:login
    end
end
