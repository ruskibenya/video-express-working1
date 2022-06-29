require 'opentok'

class VideoController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_opentok_vars

  def set_opentok_vars
    @api_key = ENV['OPENTOK_API_KEY']
    @api_secret = ENV['OPENTOK_API_SECRET']
    @session_id = WatchParty.create_or_load_session_id
    @moderator_name = ENV['MODERATOR_NAME']
    @name ||= params[:name]
    @token = WatchParty.create_token(@name, @moderator_name, @session_id)
  end

  def home
  end

  def party
  end

  def login
    @name = login_params[:name]
    if login_params[:password] == ENV['PARTY_PASSWORD']
      redirect_to party_path(name: @name)
    else
      redirect_to('/', flash: { error: 'Incorrect password' })
    end
  end

  def chat
  end

  private

  def login_params
    params.permit(:name, :password, :authenticity_token, :commit)
  end
end
