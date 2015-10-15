# This migration comes from refinery_animals (originally 1)
class CreateAnimalsAnimals < ActiveRecord::Migration

  def up
    create_table :refinery_animals do |t|
      t.string :name
      t.string :breed
      t.datetime :birthdate
      t.integer :photo_id
      t.text :bio
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-animals"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/animals/animals"})
    end

    drop_table :refinery_animals

  end

end
