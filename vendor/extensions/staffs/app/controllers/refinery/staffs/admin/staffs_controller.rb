module Refinery
  module Staffs
    module Admin
      class StaffsController < ::Refinery::AdminController

        crudify :'refinery/staffs/staff',
                :title_attribute => 'name'

        private

        # Only allow a trusted parameter "white list" through.
        def staff_params
          params.require(:staff).permit(:name, :title, :bio)
        end
      end
    end
  end
end
