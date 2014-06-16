class QuestionsController < ApplicationController
  before_filter :authorize, except: [:index, :show]

  def index
    @questions = Question.order('created_at DESC')
  end

  def new
    # authorize

    @question = Question.new
  end

  def create
    params[:question][:author] = session[:user_id]
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
    # authorize

    @question = Question.find(params[:id])

    if current_user.id != @question.author.to_i
      flash[:notice] = "You are not allowed to edit this question."
      redirect_to "/questions/#{@question.id}"
    end

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

    if current_user.id == question.author.to_i
      question.answers.each do |answer|
        answer.destroy
      end
      question.destroy
      redirect_to action: :index
    else
      flash[:notice] = "You are not allowed to delete this question."
      redirect_to "/questions/#{question.id}"
    end
  end

  private

  def question_params
    params.require(:question).permit(:title, :description, :author)
  end

end
