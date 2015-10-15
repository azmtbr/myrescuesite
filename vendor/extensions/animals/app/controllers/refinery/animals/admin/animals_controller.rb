module Refinery
  module Animals
    module Admin
      class AnimalsController < ::Refinery::AdminController

        crudify :'refinery/animals/animal',
                :title_attribute => 'name'

        private

        # Only allow a trusted parameter "white list" through.
        def animal_params
          params.require(:animal).permit(:name, :breed, :birthdate, :photo_id, :bio)
        end
      end
    end
  end
end
