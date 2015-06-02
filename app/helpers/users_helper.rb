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
      [['Chile', 1], ['México', 4], ['Ecuador', 2], ['Bolivia', 3]]
    elsif type =='B'
      [['Argentina', 8], ['Uruguay', 7], ['Paraguay', 5], ['Jamaica', 6]]
    elsif type =='C'
      [['Brasil', 9], ['Colombia', 11], ['Perú', 10], ['Venezuela', 12]]
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
