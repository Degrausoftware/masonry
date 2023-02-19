class Backoffice::DashboardController < BackofficeController
  before_action :set_admin, only: [:edit, :update]
  def index
    @admins = Admin.all
  end
end
