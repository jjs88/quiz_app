class Quiz < ActiveRecord::Base
	has_many :questions, dependent: :destroy
	has_many :answers, through: :questions
end
