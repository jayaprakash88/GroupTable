class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  rescue_from CanCan::AccessDenied do |exception|
    flash[:notice] = "Hi #{current_user.email} You are signed in successfully and Your are not authorised further page"
    redirect_to home_index_path
  end
end
