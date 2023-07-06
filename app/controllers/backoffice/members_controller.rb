# frozen_string_literal: true

module Backoffice
  class MembersController < BackofficeController
    before_action :find_masonic_lodge
    before_action :set_member, only: %i[update destroy]
    # GET /members
    # GET /members.json
    def index
      @members = Member.all
      # render json: @members
    end

    # GET /members/1
    # GET /members/1.json
    def show
      @member = Member.find_by(params[:member_id])
    end

    def new
      @member = @masonic_lodge.members.build
    end

    # POST /members
    # POST /members.json
    def create
      @member = @masonic_lodge.members.build(member_params)
      if @member.save
        redirect_to backoffice_member_path(:id), notice: 'cadastrado'
      else 
        render :new, statu: :unprocessable_entity
      end
    end

    def edit
      @member = Member.find_by(params[:member_id])
    end

    # PATCH/PUT /members/1
    # PATCH/PUT /members/1.json
    def update
      @member = Member.find_by(params[:member_id])
      if @member.update(member_params)
        redirect_to backoffice_member_path, notice: "atuzalizou"
      else
        render :edit
      end
    end

    # DELETE /members/1
    # DELETE /members/1.json
    def destroy
      @member.destroy
    end

    private

    def find_masonic_lodge
      @masonic_lodge = MasonicLodge.find_by(params[:masonic_lodge_id])
    end


    # Use callbacks to share common setup or constraints between actions.
    def set_member
      @member = Member.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def member_params
      params.require(:member).permit(:id, :name, :birth_date, :place_of_birth, :state, :nationality, :country, :phone,
                                     :mobile_phone, :email, :relationship, :wedding_date, :blood_type, :fathers_name,
                                     :mothers_name, :cpf, :degree_of_instruction, :avatar, :masonic_lodge_id)
    end
  end
end
