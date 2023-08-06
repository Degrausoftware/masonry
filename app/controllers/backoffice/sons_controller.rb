# frozen_string_literal: true

module Backoffice
  class SonsController < BackofficeController
   before_action :set_masonic_lodge
    #before_action :set_member

    def index
      @sons = Son.all
    end

    def show
      @masonic_lodge = MasonicLodge.find_by(params[:masonic_lodge_id])
      @member = @masonic_lodge.members.find(params[:member_id])
      @son = @members.sons.find(params[:id])

    rescue ActiveRecord::RecordNotFound
      flash[:alert] = "Sobrinho não encontrado!"

      redirect_to backoffice_masonic_lodge_member_son_path(masonic_lodge_id: params[:masonic_lodge_id], member_id: params[:member_id], id: params[:id])
    end

    def new

    end

    def create

    end

    def update

    end

    def destroy

    end

    private

    def set_membera
      @member = Member.find_by(id: params[:member_id])
    end

    def set_masonic_lodge
      @masonic_lodge = MasonicLodge.find params[:masonic_lodge_id]
    end

    def son_params
      params.require(:son).permit(:id, :name_sons, :birth_date, :gender, :member_id, :image_son)
    end
  end
end
