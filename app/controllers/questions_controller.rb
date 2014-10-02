class QuestionsController < ApplicationController

	def create
		@question = Question.new(questions_params)
		@question.quiz_id = params[:quiz_id]
		@question.save
		redirect_to quiz_path(params[:quiz_id])
	end

	def show
		@question = Question.find(params[:id])
		@answer = Answer.new
		@answers = @question.answers.last
	end

	def index
		@questions = Question.all
	end





	private 
	  def questions_params
	  	params.require(:question).permit(:question, :answer)
	  end
end
