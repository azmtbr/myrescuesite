class Animal < ActiveRecord::Base

  acts_as_indexed :fields => [:name, :breed]
end
