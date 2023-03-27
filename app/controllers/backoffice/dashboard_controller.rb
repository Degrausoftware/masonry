# frozen_string_literal: true

module Backoffice
  class DashboardController < BackofficeController
    before_action :set_admin, only: %i[edit update]
    def index
      @admins = Admin.all
      @member = Member.count
    end
  end
end
