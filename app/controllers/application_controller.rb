class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def after_sign_out_path(user)
  	redirect_to root_path
  end
end
