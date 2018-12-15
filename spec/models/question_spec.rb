require 'rails_helper'

RSpec.describe Question, type: :model do
  let(:question) {Question.create!(title: "New Question Title", body: "New Question Body", resolved:(false)) }

  describe "attributes" do
   it "responds to title attribute, body attribute, and resolution boolean" do
    expect(question).to respond_to(:title, :body, :resolved)
   end
 end
end
