module UsersHelper
  def select_team_options(type)
    if type.nil?
      [['Argentina', 13],
      ['Bolivia', 16],
      ['Brasil', 5],
      ['Chile', 14],
      ['Colombia', 2],
      ['Costa Rica', 3],
      ['Ecuador', 6],
      ['Estados Unidos', 1],
      ['Haití', 7],
      ['Jamaica', 11],
      ['México', 9],
      ['Panamá', 15],
      ['Paraguay', 4],
      ['Perú', 8],
      ['Uruguay', 10],
      ['Venezuela', 12]]
    elsif type =='A'
      [['Estados Unidos', 1],['Colombia', 2],['Costa Rica', 3],['Paraguay', 4]]
    elsif type =='B'
      [['Brasil', 5],['Ecuador', 6],['Haití', 7],['Perú', 8]]
    elsif type =='C'
      [['México', 9],['Uruguay', 10],['Jamaica', 11],['Venezuela', 12]]
    elsif type =='D'
      [['Argentina', 13],['Chile', 14],['Panamá', 15],['Bolivia', 16]]
    elsif type =='Revelacion'
      [['Costa Rica', 3],['Paraguay', 4],['Haití', 7],['Perú', 8],['Jamaica', 11],['Venezuela', 12],['Panamá', 15],['Bolivia', 16]]
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
