class WelcomeController < ApplicationController
    def index
        @user_email = current_user.email if user_signed_in?
    end
end
