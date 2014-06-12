module UsersHelper
  def select_team_options(type)
    if type.nil?
      [['Alemania', 25],
       ['Algeria', 31],
       ['Argentina', 21],
       ['Australia', 8],
       ['Belgica', 29],
       ['Bosnia', 22],
       ['Brazil', 1],
       ['Camerun', 4],
       ['Chile', 7],
       ['Colombia', 9],
       ['Costa Rica', 16],
       ['Costa de Marfil', 11],
       ['Croacia', 2],
       ['Ecuador', 19],
       ['España', 5],
       ['Francia', 18],
       ['Ghana', 28],
       ['Grecia', 10],
       ['Holanda', 6],
       ['Honduras', 20],
       ['Inglaterra', 15],
       ['Iran', 24],
       ['Italia', 14],
       ['Japon', 12],
       ['Korea del Sur', 32],
       ['Mexico', 3],
       ['Nigeria', 23],
       ['Portugal', 27],
       ['Rusia', 30],
       ['Suiza', 17],
       ['USA', 26],
       ['Uruguay', 13]]
    elsif type =='A'
      [['Brazil', 1], ['Camerun', 4], ['Croacia', 2], ['Mexico', 3]]
    elsif type =='B'
      [['Australia', 8], ['Chile', 7], ['España', 5], ['Holanda', 6]]
    elsif type =='C'
      [['Colombia', 9], ['Costa de Marfil', 11], ['Grecia', 10], ['Japon', 12]]
    elsif type =='D'
      [['Costa Rica', 16], ['Inglaterra', 15], ['Italia', 14], ['Uruguay', 13]]
    elsif type =='E'
      [['Ecuador', 19], ['Francia', 18], ['Honduras', 20], ['Suiza', 17]]
    elsif type =='F'
      [['Argentina', 21], ['Bosnia', 22], ['Iran', 24], ['Nigeria', 23]]
    elsif type =='G'
      [['Alemania', 25], ['Ghana', 28], ['Portugal', 27], ['USA', 26]]
    elsif type =='H'
      [['Algeria', 31], ['Belgica', 29], ['Korea del Sur', 32], ['Rusia', 30]]
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
