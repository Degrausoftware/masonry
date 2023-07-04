# frozen_string_literal: true
module Api
  module V1
    class MasonicLodgesController < ApiController
      def index
        @masonic_lodges = MasonicLodge.all
        render json: @masonic_lodges
      end
      
      def show
        @masonic_lodge = MasonicLodge.find(params[:id])

        render json: @masonic_lodge
      end
    end
  end
end
