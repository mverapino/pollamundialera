class Prediction < ActiveRecord::Base
  has_many :answers
  def real_answer
    if question_type !=2 && !answer.nil?
      Team.find(answer).name
    else
      answer
    end
  end
end
