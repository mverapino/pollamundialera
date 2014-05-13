class Answer < ActiveRecord::Base
  belongs_to :user
  belongs_to :prediction
  def get_answer
     t=Team.where( id:self.answer)
     t.empty? ? self.answer: t.name
  end
end
