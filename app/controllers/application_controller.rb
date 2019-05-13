class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def self.mobile_device?
    if session[:mobile_param]
      session[:mobile_param] == "1"
    else
      request.user_agent =~ /Mobile|webOS/
    end
  end
end
