class AnswersController < ApplicationController
  def create
    @question = Question.find(params[:question_id])
    @answer = Answer.new(answer_params)
    @answer.question = @question

    if @answer.save
      redirect_to "/questions/#{@question.id}"
    else
      flash.now[:notice] = "Could not save your answer."
      render :new
    end
  end

  def update
    answer = Answer.where(best_answer: true).first
    if answer
      answer.best_answer = false
      answer.save
    end

    answer = Answer.find(params[:id])
    answer.best_answer = true
    answer.save

    redirect_to "/questions/#{params[:question_id]}"
  end

  private

  def answer_params
    params.require(:answer).permit(:description)
  end

end
