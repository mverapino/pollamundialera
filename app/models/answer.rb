class Answer < ActiveRecord::Base
  before_save :check_time
  belongs_to :user
  belongs_to :prediction
  def get_answer
     t=Team.where( id:self.answer)
     t.empty? ? self.answer: t.name
  end
  def check_time
    Time.new(2014,06,12,12) > Time.now
  end
end
