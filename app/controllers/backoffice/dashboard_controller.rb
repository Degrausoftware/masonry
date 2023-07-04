# frozen_string_literal: true

module Backoffice
  class DashboardController < BackofficeController
    before_action :authenticate_admin!
    before_action :set_admin, only: %i[edit update]
    def index
      @admins = Admin.all
      @member = Member.count
      @masonic_lodge = MasonicLodge.count
      @masonic_lodges = MasonicLodge.all

      @son = Son.count
    end

    def destroy
      session[:admin_id] = nil
      redirect_to root_path, notice: 'Sai porra'
    end
  end
end
