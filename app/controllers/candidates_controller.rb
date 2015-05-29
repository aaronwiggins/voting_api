class CandidatesController < ApplicationController
  def index
    render json: Candidate.all
  end

  def show
    render json: Candidate.find_by_id(params[:id])
  end

  def destroy
    candidate = Candidate.find_by_id(params[:id])
    if candidate
      candidate.destroy
      render json: "Candidate has been deleted"
    else
      render json: "No candidate found"
    end
  end

  def create
    candidate = Candidate.new(name: params[:name], hometown: params[:hometown],
        party: params[:party], district: params[:district])
    candidate.create ? (render json: candidate) : (render json: candidate.errors)
  end
end
