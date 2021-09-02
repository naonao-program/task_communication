class ApplicationController < ActionController::Base
  devise_parameter_sanitizer.permit(:sign_up, keys: [:type, :nickname, :school_name])
end
