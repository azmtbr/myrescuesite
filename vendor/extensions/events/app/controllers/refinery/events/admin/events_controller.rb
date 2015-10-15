module Refinery
  module Events
    module Admin
      class EventsController < ::Refinery::AdminController

        crudify :'refinery/events/event', :xhr_paging => true,
                                          :order => "date ASC",
                                          :sortable => false

        private

        # Only allow a trusted parameter "white list" through.
        def event_params
          params.require(:event).permit(:title, :date, :location, :description)
        end
      end
    end
  end
end
