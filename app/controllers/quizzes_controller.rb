class QuizzesController < ApplicationController
  

  def index
  	@quiz = Quiz.new
  	@quizzes = Quiz.all
  end

  def show
  	@quiz = Quiz.find(params[:id])
  	@question = Question.new
  	@questions = @quiz.questions
    @answer = Answer.new
  end

  def create
  	@quiz = Quiz.new(quiz_params)
  	@quiz.save

  	redirect_to root_path
  end

  def destroy
  	@quiz = Quiz.find(params[:id])
  	@quiz.destroy

  	redirect_to root_path
  end



  private 
    def quiz_params
    	params.require(:quiz).permit(:name)
    end
end
