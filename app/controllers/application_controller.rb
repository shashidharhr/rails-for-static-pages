class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  after_filter :track_action
  protect_from_forgery with: :exception

  
def track_action
    ahoy.track "Processed #{'static_pages_controller'}##{'index'}", request.filtered_parameters
  end

  # If your model is called User
  def after_sign_in_path_for(resource)
    session["user_return_to"] || root_path
  end

  def after_sign_out_path_for(resource)
    session["user_return_to"] || root_path
  end

end
