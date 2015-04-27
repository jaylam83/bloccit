class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(params.require(:question).permit(:title, :body, :resolved))
    if @question.save
      flash[:notice] = "Question was saved"
      redirect_to @question
    else
      flash[:error] = "There was an error saving your question. Please try again"
      render :new
    end
  end

  def show
    @question = Question.find(params[:id])
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])
    if @question.update_attributes(params.require(:question).permit(:title, :body, :resolved))
      flash[:notice] = "Question was updated"
      redirect_to @question
    else
      flash[:error] = "There was an error updating your Question. Please try again"
      render :edit
    end
  end

  def destroy
    @question = Question.find(params[:id]).destroy
      flash[:alert] = "Question deleted!"
      redirect_to @question
  end
end
