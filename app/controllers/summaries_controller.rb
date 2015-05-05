class SummariesController < ApplicationController
  def index
    @summaries = Summary.all
  end

  def show
    @summary = Summary.find(params[:id])
    @post = Post.find(params[:id])
  end

  def new
    @summary = Summary.new
  end

  def create
    @summary = Summary.new(params.require(:summary).permit(:body, :post_id))
        

    if @summary.save
      flash[:notice] = "Summary was saved."
      redirect_to @summary
    else
      flash[:error] = "There was an error saving the summary. Please try again."
      render :new
    end
  end

  def update
  end
end
