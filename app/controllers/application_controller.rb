class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper
  
  rescue_from ActiveRecord::RecordNotFound, :with => :rescue_action_in_public
   
  private
  
  def rescue_action_in_public(exception)
    case exception
    when ActiveRecord::RecordNotFound, ActionController::UnknownAction, ActionController::RoutingError
      render :file => "#{Rails.root}/public/404.html", :layout => 'layouts/application', :status => 404      
    else
    super
    end
  end
end