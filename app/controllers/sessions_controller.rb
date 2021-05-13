class SessionsController < ApplicationController
  def reset
    reset_session 
    redirect_to users_url
  end
end
