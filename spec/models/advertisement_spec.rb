require 'rails_helper'

RSpec.describe Advertisement, type: :model do
  let(:advertisement) {Advertisement.create!(title: "New Ad Title", copy: "New Ad Copy Text", price: 89 )}

  describe "attributes" do
    it "has title and copy attributes and a price" do
      expect(advertisement).to have_attributes(title: "New Ad Title", copy: "New Ad Copy Text", price: 89)
    end
  end
end
