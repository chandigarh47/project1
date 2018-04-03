class ApplicationController < ActionController::Base
  #protect_from_forgery with: :exception


  before_action :fetch_user

private
def fetch_user
  @current_user = User.find_by :id => params[:user_id] if session[:user_id].present?
  session[:user_id] = nil unless @current_user.present? #this prevents horror if u resend
end

end
