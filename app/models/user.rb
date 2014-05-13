class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
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
end
