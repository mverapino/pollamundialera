class Answer < ActiveRecord::Base
  before_save :check_time
  belongs_to :user
  belongs_to :prediction
  validates_uniqueness_of :prediction_id, :scope => :user_id

  def get_answer
    if prediction.question_type !=2 && !answer.nil?
      t=Team.where( id:answer).first
      t.nil? ? self.answer: t.name
    else
      answer
    end

  end
  def check_time
    Time.new(2016,06,3,22,30) > Time.now
  end
  def self.check_time
    Time.new(2016,06,3,20,30) > Time.now
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
  def prediction_question
    prediction.nil? ? nil : prediction.question
  end
end
