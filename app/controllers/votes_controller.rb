class VotesController < ApplicationController
  def index
    # render json: Vote.all
    render json: Candidate.display_votes
  end
end
