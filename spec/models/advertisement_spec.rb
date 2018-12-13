require 'rails_helper'

RSpec.describe Advertisement, type: :model do
  let(:advertisement) {Advertisement.create!(title: "New Ad Title", copy: "New Ad Copy Text")}

  describe "attributes" do
    it "has title and copy attributes and a price" do
      expect(advertisement).to have_attributes(title: "New Ad Title", copy: "New Ad Copy Text")
    end

    it "responds to price" do
      expect(advertisement).to respond_to(:price)
    end
  end
end
