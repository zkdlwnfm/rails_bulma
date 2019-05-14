class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :mobile_device?

  def mobile_device?
    if session[:mobile_param]
      session[:mobile_param] == "1"
    else
      request.user_agent =~ /Mobile/
    end
  end
end
