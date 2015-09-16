class AnswersController < ApplicationController
  def new
    @question = Question.find(params[:question_id])
    @answer = Answer.new
  end

  def index
    @answers = Answer.where(question_id: params[:id])
  end

  def create
    @answer = Answer.create(answer_params)
    @question = Question.find(params[:question_id])
    redirect_to question_path(@question)
  end

  def show
    @answer = Answer.find(params[:id])
  end

  private
  def answer_params
    params.require(:answer).permit(:body,:question_id,:user_id)
  end
end
