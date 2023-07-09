# frozen_string_literal: true

module Backoffice
  class SonsController < ApplicationController
    def index
      @sons = Son.all
    end

    def show
      @son = Son.find_by(:son_id)
    end
  end
end
