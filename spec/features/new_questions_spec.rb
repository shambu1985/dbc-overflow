RSpec.feature "New Question Form", type: :feature do
  scenario "allows user to create a new question" do
   visit '/questions'
      fill_in 'Title', :with => 'My Question'
      fill_in 'Content', :with => 'What should be the answer?'
    click_button 'Save Question'
    expect(page).to have_text("My Question")
  end

  scenario "allows user to create a new answer for a question" do
   @question = Question.create( title: "ROR", content: "RSpec in Rails")
   visit "/questions/#{@question.id}"
      fill_in 'Title', :with => 'My Answer'
      fill_in 'Content', :with => 'What should be the answer?'
    click_button 'Create Answer'
    expect(page).to have_text("My Answer")
  end
end

