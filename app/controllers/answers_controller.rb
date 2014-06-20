class AnswersController <ApplicationController
  def new
    @answer = Answer.new
  end

  def create
    @answer = Answer.new(answer_params)

    @question = Question.find(params[:question_id])
    @answer.question = @question

    if @answer.save
      flash[:notice] = "Success!"
      redirect_to question_path(@question)

    else
      flash.now[:notice] = "Something went wrong."
      render 'questions/show'
    end
  end
  private

  def answer_params
    params.require(:answer).permit(:description)
  end
end
