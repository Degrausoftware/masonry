class Backoffice::DashboardController < BackofficeController
  before_action :set_admin, only: %i[edit update]
  def index
    @admins = Admin.all
  end