class RegistrationsController < ApplicationController

    def new
        @user
    end
    protected

    def after_sign_un_path_for(resource)
        if current_user.user_signed_in?
            welcome_path
        else
            user_session
        end
    end
end
