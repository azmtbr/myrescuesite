class DropRefineryImagePages < ActiveRecord::Migration
  def change
    drop_table :refinery_image_pages
  end
end
