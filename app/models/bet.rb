class Bet < ActiveRecord::Base
  before_save :check_time
  belongs_to :match
  belongs_to :user

  def points
    if self.match.local_score.nil? || self.match.visit_score.nil?
      0
    elsif self.local_score == self.match.local_score && self.visit_score == self.match.visit_score
      3
    elsif (self.local_score  > self.visit_score && self.match.local_score  > self.match.visit_score)||
          (self.local_score  < self.visit_score && self.match.local_score  < self.match.visit_score)||
          (self.local_score == self.visit_score && self.match.local_score == self.match.visit_score)
      1
    else
      0
    end
  end
  def check_time
    self.match.time> Time.now
  end
end
