module BetsHelper
  def bet_color(bet)
    if bet.nil?
      ''
    elsif bet.points ==3
      'full-points'
    elsif bet.points==1
      'mid-points'
    else
      ''
    end
  end
end
