require 'rails_helper'

RSpec.describe Question, type: :model do
    it "creates a question with title and content" do
      question = Question.create(title: "Rails", content: "on Ruby");
      expect(question.title).to eq( "Rails")
      expect(question.content).to eq("on Ruby")
    end
end
