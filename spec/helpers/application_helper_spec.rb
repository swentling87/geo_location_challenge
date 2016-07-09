require 'rails_helper'

RSpec.describe ApplicationHelper, type: :helper do

  context "determine location distance" do
    before do
      @location = FactoryGirl.create(:location)
    end
    describe "location distancing" do
      it "finds the distance between the point and the specified location" do
        expect(distance_calculator(@location)).to eq(0)
      end
    end
  end

end
