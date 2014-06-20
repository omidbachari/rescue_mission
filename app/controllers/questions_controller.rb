class QuestionsController < ApplicationController


def index
  @questions = Question.order('created_at DESC')
end

def show
  @question = Question.find(params[:id])
  @answer = Answer.new
  @answers = Answer.order('created_at DESC')
end

def edit
  @question = Question.find(params[:id])

end

def destroy
  @question = Question.find(params[:id])

  @question.destroy

  redirect_to questions_path
end

def update
  @question = Question.find(params[:id])

  if @question.update(question_params)
    flash[:notice] = "You updated it, successfully!"
    redirect_to question_path(@question)
  else
    flash.now[:notice] = "It didn't work"
    render :edit
  end
end

def new
  @question = Question.new

end

def create
  @question = Question.new(question_params)

  if @question.save
    flash[:notice] = "Success!"
    redirect_to '/questions'
  else
    flash.now[:notice] = "Something went wrong."
    render :new
  end


end

  private

  def question_params
    params.require(:question).permit(:title, :description)
  end

end
