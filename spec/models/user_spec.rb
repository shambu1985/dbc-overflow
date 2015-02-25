require 'rails_helper'

RSpec.describe User, type: :model do
  it "creates a user with username, email and password" do
      user = User.create(username: "Shambhavi", email: "shambu@gmail.com", password: "1234");
      expect(user.username).to eq("Shambhavi")
      expect(user.email).to eq("shambu@gmail.com")
      expect(user.password).to eq("1234")
  end
end
