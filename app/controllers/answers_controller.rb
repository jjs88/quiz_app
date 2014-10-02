class AnswersController < ApplicationController
	include AnswersHelper


	def create
		@answer = Answer.new(answers_params)
		@answer.question_id = params[:question_id]
		@answer.save

		redirect_to question_path(params[:question_id])
	end



	private
	  def answers_params
	  	params.require(:answer).permit(:answer)
	  end
end
