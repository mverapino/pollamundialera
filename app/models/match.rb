class Match < ActiveRecord::Base
  belongs_to :visit,   class_name: 'Team', foreign_key: :visit
  belongs_to :local,   class_name: 'Team', foreign_key: :local
  has_many :bets
  def vs_title
    Team.find(local).name + ' - ' + Team.find(visit).name
  end
end
