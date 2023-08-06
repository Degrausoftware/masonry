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

    def show
      find_masonic_lodge
      binding.pry
      @masonic_lodge = Masonic_lodge.members.find_by(masonic_lodge_id: params[:member_id])
    end

    def destroy
      session[:admin_id] = nil
      redirect_to root_path, notice: 'Sai porra'
    end

    private

    def find_masonic_lodge
      @masonic_lodge = MasonicLodge.find(:id)
    end
  end
end
