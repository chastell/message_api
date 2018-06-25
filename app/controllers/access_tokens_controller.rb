class AccessTokensController < ApplicationController

  def create
    render json: {access_token: 'ABC'}, status: :created
  end
end
