class Backoffice::MasonicLodgesController < BackofficeController
  def index
    @masonic_lodges = MasonicLodge.all
  end

  def show
    @masonic_lodges = MasonicLodge.find(params[:id])
  end

  def profile
    @masonic_lodges = MasonicLodge.find.masonic_lodges_id(params[:masonic_lodges_id])
  end

  def create

  end

  def update

  end
  def destroy

  end

  private

  def masonicLodges_params
    params.require(:masonic_lodges).permit(:address, :blazon, :city, :cnpj, :code_zip, :correspoding_address,
                                           :country, :decree_creation_of_the_store, :email, :founding_date, :meeting,
                                           :mobile_phone, :name, :nationality, :note, :phone, :pontency, :responsible,
                                           :rite, :state, :store_number, :venerable, :web_site)
  end
end
