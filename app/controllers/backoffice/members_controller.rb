class Backoffice::MembersController < ApplicationController
  before_action :set_member, only: %i[show update destroy]
  # GET /members
  # GET /members.json
  def index
    @members = Member.all

    render json: @members
  end

  # GET /members/1
  # GET /members/1.json
  def show
    render json: @member, include: [:address, :apjs]
  end

  # POST /members
  # POST /members.json
  def create
    @member = Member.new(member_params)

    if @member.save
      render :show, include: [:address, :apjs],status: :created, location: @member
    else
      render json: @member.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /members/1
  # PATCH/PUT /members/1.json
  def update
    if @member.update(member_params)
      render :show,include: [:address, :apjs], status: :ok, location: @member
    else
      render json: @member.errors, status: :unprocessable_entity
    end
  end

  # DELETE /members/1
  # DELETE /members/1.json
  def destroy
    @member.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_member
    @member = Member.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def member_params
    params.require(:member).permit(:name, :birth_date, :place_of_birth, :state, :nationality, :city, :phone,
                                   :mobile_phone, :email, :relationship, :wedding_date, :blood_type, :fathers_name,
                                   :mothers_name, :cpf, :degree_of_instruction, address_attributes: [:id, :street, :destroy],
                                   apj_attributes: [:id, :name])
  end
end
