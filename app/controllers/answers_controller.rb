class AnswersController < ApplicationController
  def create
    @question = Question.find(params[:question_id])
    @answer = @question.answers.create(answer_params)
    render 'questions/show'
  end

  def upvote
    @answer = Answer.find(params[:id])
    @answer.update_attributes( votes: @answer.votes+=1 )
    redirect_to "/questions/#{@answer.question_id}"
    # redirect_to question_path(@answer.question_id)
  end

  def downvote
    @answer = Answer.find(params[:id])
    @answer.update_attributes( votes: @answer.votes-=1 )
    redirect_to "/questions/#{@answer.question_id}"
  end

  private
  def answer_params
    params.require(:answer).permit(:title,:content)
  end
end
