class RegistrationsController < Devise::RegistrationsController
    before_filter :configure_permitted_parameters
    
    private

    def sign_up_params
        params.require(:user).permit(:email, :password)
    end

    # also add the current_password
	def account_update_params
	    params.require(:user).permit(:email, :password, :time_zone, :current_password)
	end

end

# def sign_up_params
#         params.require(:user).permit(:email, :password, :time_zone)
#     end
#     removed time_zone. was giving error on sign_up_params. In use on user.rb
    