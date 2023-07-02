# frozen_string_literal: true
module Api
  module V1
    class MembersController < ApiController
      def index
        @members = Member.all
        render json: @members
      end
      
    end
  end
end
