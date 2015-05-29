class VotersController < ApplicationController
  def create
    voter = Voter.new(name: params[:name], party: params[:party])
    voter.save ? (render json: voter) : (render json: voter.errors)
  end

  def index
    render json: Voter.all
  end


  def show
    voter = Voter.find_by_id(params[:id])
    if voter.token == params[:token]
      render json: voter
    else
      render json: "Invalid token"
    end
  end

  # def update
  #   render json: Voter.find_by_id(params[:id])
  #   if
  #     update_attributes(name: params[:name], party: params[:party])
  # end

  def destroy
    Voter.delete(params[:id])
    render json: "The voter has been deleted"
  end

end
