class PagesController < ApplicationController
  
  before_action :authenticate_user!, only: [:dashboard]
  before_action :set_auth
  
  def home
    if current_user 
  		redirect_to dashboard_path
    end
  end
  
  def dashboard
  end
  
  def set_auth
		@auth = session[:omniauth] if session[:omniauth]
  end

  
end
