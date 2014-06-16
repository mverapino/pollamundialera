class Answer < ActiveRecord::Base
  before_save :check_time
  belongs_to :user
  belongs_to :prediction
  validates_uniqueness_of :prediction_id, :scope => :user_id

  def get_answer
     t=Team.where( id:self.answer)
     t.empty? ? self.answer: t.name
  end
  def check_time
    Time.new(2014,06,12,0) > Time.now
  end
  def points
    if self.prediction.question_type ==1
      self.prediction.answer.to_i== self.answer.to_i ? self.prediction.points : 0
    elsif self.prediction.question_type ==2
      self.prediction.answer== self.answer ? self.prediction.points : 0
    elsif self.prediction.question_type ==3
      self.prediction.answer== self.answer ? self.prediction.points : 0
    else
      self.prediction.answer.to_i== self.answer.to_i ? self.prediction.points : 0
    end
  end
end
