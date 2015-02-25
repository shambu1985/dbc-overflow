require 'rails_helper'

RSpec.describe Answer, type: :model do
  it "creates a answer with  content" do
      answer = Answer.create(content: "Enjoying ROR");
      expect(answer.content).to eq("Enjoying ROR")
  end
end
