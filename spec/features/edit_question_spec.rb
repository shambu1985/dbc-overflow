RSpec.feature "Edit Question Form", type: :feature do
  scenario "allows user to edit a question" do
    @question = Question.create(title:"New", content: "Question")
   visit "/questions/#{@question.id}/edit"
      fill_in 'Title', :with => 'My Question'
      fill_in 'Content', :with => 'What should be the answer?'
    click_button 'Save Question'
    expect(page).to have_text("My Question")
  end
end
