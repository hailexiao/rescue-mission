class QuestionsController < ApplicationController
  def new
  end

  def create
    @question = Question.create(question_params)
    redirect_to @question
  end

  def show
    @question = Question.find(params[:id])
  end

  private
  def question_params
    params.require(:question).permit(:title, :body)
  end
end
