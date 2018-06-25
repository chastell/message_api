class MessagesController < ApplicationController
  before_action :check_access_token

  def index
    render json: Message.all
  end

  def show
    render json: Message.find(params[:id])
  end

  private

  def check_access_token
    head :unauthorized unless request.headers["AUTHORIZATION"]
  end
end
