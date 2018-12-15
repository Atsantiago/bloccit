require 'rails_helper'

RSpec.describe Question, type: :model do
  let(:question) {Question.create!(title: "New Question Title", body: "New Question Body", resolved:(false)) }

  describe "attributes" do
   it "has a title attribute, body attribute, and resolution boolean" do
    expect(question).to have_attributes(title: "New Question Title", body: "New Question Body", resolved:(false))
   end
 end
end
