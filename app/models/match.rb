class Match < ActiveRecord::Base
  validates_presence_of :visit,:local
  belongs_to :visit,   class_name: 'Team', foreign_key: :visit_id
  belongs_to :local,   class_name: 'Team', foreign_key: :local_id
  has_many :bets
  def vs_title
    local.name + ' - ' + visit.name
  end


end
