class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])
    @question.update(question_params)
    if @question.save
      redirect_to questions_path
    else
      render 'edit'
    end
  end

  def upvote
    @question = Question.find(params[:id])
    @question.update_attributes( votes: @question.votes+=1 )
    redirect_to questions_path
  end

  def downvote
    @question = Question.find(params[:id])
    @question.update_attributes( votes: @question.votes-=1 )
    redirect_to questions_path
  end

  def create
    @question = Question.create(question_params)
    redirect_to questions_path
  end

  def destroy
    @question = Question.find(params[:id])
    @question.destroy
    redirect_to questions_path
  end

  private
  def question_params
    params.require(:question).permit(:title,:content)
  end
end
