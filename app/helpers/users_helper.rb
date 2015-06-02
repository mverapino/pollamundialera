module UsersHelper
  def select_team_options(type)
    if type.nil?
      [['Argentina', 5],
       ['Bolivia', 4],
       ['Brazil', 9],
       ['Chile', 1],
       ['Colombia', 10],
       ['Ecuador', 3],
       ['Jamaica', 8],
       ['México', 2],
       ['Paraguay', 7],
       ['Perú', 11],
       ['Uruguay', 6],
       ['Venezuela', 12]]
    elsif type =='A'
      [['Chile', 1], ['México', 2], ['Ecuador', 3], ['Bolivia', 4]]
    elsif type =='B'
      [['Argentina', 5], ['Uruguay', 6], ['Paraguay', 7], ['Jamaica', 8]]
    elsif type =='C'
      [['Brasil', 9], ['Colombia', 10], ['Perú', 11], ['Venezuela', 12]]
    elsif type =='Revelacion'
      [['Bolivia', 4], ['Ecuador', 3],['Jamaica', 8], ['México', 2], ['Paraguay', 7],['Perú', 11],['Venezuela', 12]]
    else
      [['Cuarto en el grupo'],
      ['Tercero en el grupo'],
      ['Octavos de final'],
      ['Cuartos de final'],
      ['Cuarto'],
      ['Tercero'],
      ['Subcampeón'],
      ['Campeón']]
    end
  end
end
