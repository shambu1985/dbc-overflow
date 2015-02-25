require 'rails_helper'

RSpec.describe QuestionsController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      @question = Question.create( title: "ROR", content: "RSpec in Rails")
      get :show, id: @question.id
      expect(response).to be_success
    end
  end
end
