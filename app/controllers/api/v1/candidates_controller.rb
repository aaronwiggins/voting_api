module Api
  module V1
    class CandidatesController < ApplicationController
      def index
        render json: Candidate.all
      end

      def show
        render json: Candidate.find_by_id(params[:id])
      end
    end
  end
end
