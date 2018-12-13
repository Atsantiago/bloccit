require 'rails_helper'

RSpec.describe AdvertisementsController, type: :controller do

let(:my_advert) {Advertisement.create!(title: RandomData.random_sentence, copy: RandomData.random_sentence, price: 89 )}

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end

    it "assigns [my_advert] to @advertisement" do
      get :index
      expect(assigns(:advertisements)).to eq([my_advert])
    end
  end

  # describe "GET #show" do
  #   it "returns http success" do
  #     get :show
  #     expect(response).to have_http_status(:success)
  #   end
  # end
  #
  # describe "GET #new" do
  #   it "returns http success" do
  #     get :new
  #     expect(response).to have_http_status(:success)
  #   end
  # end
  #
  # describe "GET #create" do
  #   it "returns http success" do
  #     get :create
  #     expect(response).to have_http_status(:success)
  #   end
  # end

end
