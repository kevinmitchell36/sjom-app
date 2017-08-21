class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception 

  def index
    render html: "Please sign in"
    if case_manager_signed_in? 
      link_to('sign_out', destroy_case_manager_session_path, method: :delete)       
    else 
      link_to('sign_in', case_manager_session_path) 
    end 
  end 

end
