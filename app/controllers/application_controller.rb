class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  skip_before_action :verify_authenticity_token

  # Main Endpoint to receive Webhooks call
  def create
    render json: {status: "ok", message: "Gitbot is processing your request, MEC MEC!"}, status: 200
  end
end
