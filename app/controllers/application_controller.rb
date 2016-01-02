class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :authenticate_user!

  def authenticate_user!
    if params[:authentication_token]
      player = Player.find_by(phone: params[:authentication_token], game_id: params[:id])
      if player
        return true
      else
        sign_out
        render json: {status: 503, message: "Access Denied"}, status: :forbidden
        return false
      end
    else
      super
    end
  end
end
