class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :set_book, only: [:show, :edit, :update, :destroyy]
  
  def after_sign_in_path_for(resource)
      books_path
  end
  
 
  
end
