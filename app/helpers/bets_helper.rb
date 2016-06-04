module BetsHelper
  def bet_color(bet)
    if bet.nil?
      ''
    elsif bet.points ==4
      'full-points'
    elsif bet.points==2
      'mid-points'
    else
      ''
    end
  end
end
