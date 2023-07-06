# frozen_string_literal: true
module Api
  module V1
    class MasonicLodgesController < ApiController
      def index
        @masonic_lodges = MasonicLodge.all
        render json: @masonic_lodges
      end
      
      def show
        @masonic_lodge = MasonicLodge.find_by(params[:masonic_lodge_id])
        render json: @masonic_lodge
      end
    end
  end
end
