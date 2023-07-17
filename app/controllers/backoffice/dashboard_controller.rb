# frozen_string_literal: true

module Backoffice
  class DashboardController < BackofficeController
    before_action :authenticate_admin!
    # before_action :authenticate_member!
    before_action :set_admin, only: %i[edit update]
    def index
      @admins = Admin.all
      @members = Member.limit(10)
      @masonic_lodges = MasonicLodge.limit(10)

      @son = Son.count
    end

    def destroy
      session[:admin_id] = nil
      redirect_to root_path, notice: 'Sai porra'
    end
  end
end
