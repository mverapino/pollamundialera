class Prediction < ActiveRecord::Base
  has_many :answers
  def real_answer
    if question_type !=2 && !answer.nil?
      t=Team.where( id:answer).first
      t.nil? ? self.answer: t.name
    else
      answer
    end
  end
end
