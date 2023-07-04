# frozen_string_literal: true

class Backoffice::MasonicLodgesController < BackofficeController
  def index 
    @masonic_lodges = MasonicLodge.all
  end

  def show
   @masonic_lodge = MasonicLodge.find_by(params[:masonic_lodge_id])
  end

end

# module Backoffice
#   class MasonicLodgesController < BackofficeController
#     def index
#       @masonic_lodges = MasonicLodge.all
#     end

#     def show
#       @masonic_lodge = MasonicLodge.find(params[:id])
#     end

#     def create; end

#     def update; end

#     def destroy; end
#   end
# end
