class Bet < ActiveRecord::Base
  before_save :check_time
  belongs_to :match
  belongs_to :user
  validates_uniqueness_of :match_id, :scope => :user_id

  def points
    if self.match.local_score.nil? || self.match.visit_score.nil?
      0
    elsif self.local_score == self.match.local_score && self.visit_score == self.match.visit_score
      3
    elsif (self.local_score  > self.visit_score && self.match.local_score  > self.match.visit_score)||
          (self.local_score  < self.visit_score && self.match.local_score  < self.match.visit_score)||
          (self.local_score == self.visit_score && self.match.local_score == self.match.visit_score)
      2
    else
      0
    end
  end
  def check_time
    self.match.time> Time.now
  end
  def display_bet

    if self.match.time > Time.now
     ls = local_score.nil? ? '' : '?'
     vs = visit_score.nil? ? '' : '?'
    else
      ls = local_score.nil? ? '' : local_score.to_s
      vs = visit_score.nil? ? '' : visit_score.to_s
    end
      ls + ' - ' + vs
  end
  def display_match
    match.vs_title
  end
end
