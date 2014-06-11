class Bet < ActiveRecord::Base
  before_save :check_time
  belongs_to :match
  belongs_to :user

  private
  def check_time
    self.match.time> Time.now
  end

end
