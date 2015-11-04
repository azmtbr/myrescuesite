require 'spec_helper'

module Refinery
  module Forums
    describe Forum do
      describe "validations", type: :model do
        subject do
          FactoryGirl.create(:forum,
          :title => "Refinery CMS")
        end

        it { should be_valid }
        its(:errors) { should be_empty }
        its(:title) { should == "Refinery CMS" }
      end
    end
  end
end