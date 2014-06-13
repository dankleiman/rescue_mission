class QuestionsController < ApplicationController
  def index
    @questions = Question.order('created_at DESC')
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      redirect_to "/questions/#{@question.id}"
    else
      flash.now[:notice] = "Could not save your question."
      render :new
    end
  end

  def show
    @question = Question.find(params[:id])
    @answer = Answer.new
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])
    if @question.update(question_params)
      redirect_to "/questions/#{@question.id}"
    else
      render :edit
    end
  end

  def destroy
    question = Question.find(params[:id])
    question.answers.each do |answer|
      answer.destroy
    end
    question.destroy
    redirect_to action: :index
  end

  private

  def question_params
    params.require(:question).permit(:title, :description)
  end

end
