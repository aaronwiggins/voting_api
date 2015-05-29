class VotesController < ApplicationController
  def index
    render json: Candidate.all_with_votes
  end

  def create
    vote = Vote.new(candidate_id: params[:candidate_id], voter_id: param[:voter_id])
    vote.save ? (render json: vote) : (render json: vote.errors)
  end

  def destroy
    Vote.delete(params[:id])
    render json: "Vote has been removed"
  end
end
