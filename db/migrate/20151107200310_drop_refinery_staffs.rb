class DropRefineryStaffs < ActiveRecord::Migration
  def change
    drop_table :refinery_staffs
  end
end
