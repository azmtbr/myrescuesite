class AddPhotoToRefineryStaffs < ActiveRecord::Migration
  def change
    add_column :refinery_staffs, :photo_id, :integer
  end
end
