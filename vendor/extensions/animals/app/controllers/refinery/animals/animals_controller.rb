module Refinery
  module Animals
    class AnimalsController < ::ApplicationController

      before_action :find_all_animals
      before_action :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @animal in the line below:
        present(@page)
      end

      def show
        @animal = Animal.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @animal in the line below:
        present(@page)
      end

    protected

      def find_all_animals
        @animals = Animal.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/animals").first
      end

    end
  end
end
