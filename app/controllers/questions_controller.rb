class QuestionsController < ApplicationController
  def new
  end

  def index
    @questions = Question.order(created_at: :desc)
  end

  def create
    @question = Question.create(question_params)
    redirect_to @question
  end

  def show
    @question = Question.find(params[:id])
    @answers = Answer.where(question_id: params[:id])
  end

  private
  def question_params
    params.require(:question).permit(:title, :body)
  end
end
