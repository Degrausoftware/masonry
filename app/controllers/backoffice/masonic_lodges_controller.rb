class Backoffice::MasonicLodgesController < BackofficeController
  def index
    @masonic_lodges = MasonicLodge.all
  end

  def show
    @masonic_lodges = MasonicLodge.find(params[:id])
  end

  def profile
    @masonic_lodges = MasonicLodge.find(params[:masonic_lodges_id])
  end

  def create

  end

  def update

  end
  def destroy

  end

  private

end
