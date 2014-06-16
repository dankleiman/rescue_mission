class AnswersController < ApplicationController
  before_filter :authorize, except: :create

  def create
    @question = Question.find(params[:question_id])
    @answer = Answer.new(answer_params)
    @answer.question = @question
    if @answer.save
      redirect_to "/questions/#{@question.id}"
    else
      flash[:notice] = "Could not save your answer."
      redirect_to "/questions/#{@question.id}"
    end
  end

  def update
    if current_user.id == Question.find(params[:question_id]).author.to_i
      answer = Answer.where(best_answer: true).first
      if answer
        answer.best_answer = false
        answer.save
      end
      answer = Answer.find(params[:id])
      answer.best_answer = true
      answer.save
    else
      flash[:notice] = "Permission Denied."
    end
    redirect_to "/questions/#{params[:question_id]}"

  end

  private

  def answer_params
    params.require(:answer).permit(:description)
  end

end
