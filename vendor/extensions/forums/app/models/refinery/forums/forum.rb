module Refinery
  module Forums
    class Forum < Refinery::Core::BaseModel
      self.table_name = 'refinery_forums'


      validates :title, :presence => true, :uniqueness => true

      # To enable admin searching, add acts_as_indexed on searchable fields, for example:
      #
         acts_as_indexed :fields => [:title]
      has_many :comments, dependent: :destroy

    end
  end
end
