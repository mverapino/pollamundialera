class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,  :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :answers
  has_many :bets
  #after_create :build_answers
  #
  #def build_answers
  #   prediction = Prediction.all
  #   prediction.each do |p|
  #     Answer.create!(prediction:p, user:self)
  #   end
  #end
  def total_points
    sum = 0
    self.bets.each { |b| sum+=b.points }
    self.answers.each { |a| sum+=a.points }
    sum
  end
  def is_admin?
    id==11
  end
end
