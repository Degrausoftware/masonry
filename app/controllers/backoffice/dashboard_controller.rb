# frozen_string_literal: true

module Backoffice
  class DashboardController < BackofficeController
    before_action :set_admin, only: %i[edit update]
    def index
      @admins = Admin.all
      @member = Member.count
      @son = Son.count
    end

    def redirect_to(root_path, notice:)
      # code here
    end

    def destroy
      session[:admin_id] = nil
      redirect_to root_path, notice: "Sai porra"
    end
  end
end
