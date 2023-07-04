# frozen_string_literal: true

class Backoffice::MasonicLodgesController < BackofficeController
  def index 
    @masonic_lodges = MasonicLodge.all
  end

  def show
   @masonic_lodge = MasonicLodge.find_by(params[:masonic_lodge_id])
  end

  def new
    @masonic_lodge = MasonicLodge.new
  end

  def create 
    @masonic_lodge = MasonicLodge.new(masonic_lodge_params)
    if @masonic_lodge.save
      redirect_to @masonic_lodge
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @masonic_lodge = MasonicLodge.find_by(params[:masonic_lodge_id])
  end

  def update
    @masonic_lodge = MasonicLodge.find_by(params[:masonic_lodge_id])
    if @masonic_lodge.update(masonic_lodge_params)
      redirect_to backoffice_masonic_lodge_path(@masonic_lodge), notice: 'Cadatrado essa porra'
    else 
      render :edit, status: :unprocessable_entity
    end
  end

  private 

  def masonic_lodge_params
    params.require(:masonic_lodge).permit(:name)
  end
end