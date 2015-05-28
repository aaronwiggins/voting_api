class VotersController < ApplicationController
  def create
    voter = Voter.new(name: params[:name], party: params[:party])
      if voter.save
        render json: voter
      else
        render json: voter.errors
      end
  end

  # before_filter :restrict_access

  def show
    render json: Voter.find_by_id(params[:id])
  end

  def update
    render json: Voter.find_by_id(params[:id]).update_attributes(name: params[:name], party: params[:party])
  end

  # private
  #   def restrict_access
  #     api_key = ApiKey.find_by_access_token(params[:access_token])
  #     head :unauthorized unless api_key
  #   end
end
