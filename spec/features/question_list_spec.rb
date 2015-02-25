
RSpec.feature "Questions List", type: :feature do
  scenario "User visits home page and see a list of questions" do
    Question.create(title: "ROR", content: "Enjoying")
    visit '/'
    expect(page).to have_text("ROR")
    expect(page).to have_text("Enjoying")
  end
end

RSpec.feature "Questions and Answers", type: :feature do
  scenario "User visits question's show page and see answers to a particular question   " do
    question = Question.create(title: "ROR", content: "Enjoying")
    question.answers.create(content: "ROR sucks hard")
    visit "/questions/#{question.id}"
    expect(page).to have_text("ROR")
    expect(page).to have_text("Enjoying")
    expect(page).to have_text("ROR sucks hard")
  end
end
