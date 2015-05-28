module Api
  module V1
    class VotesController < ApplicationController
      def index
        render json: Vote.all
      end
    end
  end
end
