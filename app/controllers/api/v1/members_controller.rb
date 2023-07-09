# frozen_string_literal: true

module Api
  module V1
    class MembersController < ApiController
      def index
        @members = Member.all
        render json: @members
      end

      def show
        @member = Member.find_by(params[:member_id])
        render json: @member
      end
    end
  end
end
