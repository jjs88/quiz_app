class Question < ActiveRecord::Base
  belongs_to :quiz
  has_many :answers,  dependent: :destroy
end
