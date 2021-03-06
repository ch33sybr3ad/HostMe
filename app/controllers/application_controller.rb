class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  ## redirects to login page if user is not logged in
  # before_action :authenticate_user!
  before_action :find_user

  private
    def find_user
      @user = current_user
    end
end
