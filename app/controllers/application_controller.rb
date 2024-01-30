require "application_responder"

class ApplicationController < ActionController::Base
  self.responder = ApplicationResponder
  respond_to :html

  private
  
  def after_sign_in_path_for(resource)
    welcome_path
  end

end
