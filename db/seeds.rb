# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#User.create!(email: 'mverapino@gmail.com', password:'alejandro5', encrypted_password: '$2a$10$2K37CPgC5zKCdTDzFwbVDOBXdNt2wAgIWVVOKBJX219Giivq0jSqm', name: 'Mauricio Vera') #.confirm!
#User.create!(email: 'testing@gmail.com',password:'testing1', encrypted_password: '$2a$10$WzjBLRDsxnpMYmM.iDFpJ.iA/Uf6LxqKc2XbclaKu7jYurwjd4WWy', name: 'Test') #.confirm!
Prediction.create!(question_type:1 , question:'¿Quién será el campeón?', points:3)
Prediction.create!(question_type:1 , question:'¿Quién será el sub-campeón?', points:3)
Prediction.create!(question_type:1 , question:'¿Quién será el tercero?', points:3)
Prediction.create!(question_type:2 , question:'¿Quién será el goleador?', points: 5)
Prediction.create!(question_type:2 , question:'¿Quién será el mejor jugador?', points:5)
Prediction.create!(question_type:3 , question:'¿Cual será el resultado de Chile?', points:3)
Prediction.create!(question_type:4 , group:'A' , question:'¿Quién será el ganador del grupo A?', points:1)
Prediction.create!(question_type:4 , group:'A' , question:'¿Quién será el segundo del grupo A?', points:1)
Prediction.create!(question_type:4 , group:'B' , question:'¿Quién será el ganador del grupo B?', points:1)
Prediction.create!(question_type:4 , group:'B' , question:'¿Quién será el segundo del grupo B?', points:1)
Prediction.create!(question_type:4 , group:'C' , question:'¿Quién será el ganador del grupo C?', points:1)
Prediction.create!(question_type:4 , group:'C' , question:'¿Quién será el segundo del grupo C?', points:1)
Prediction.create!(question_type:4 , group:'D' , question:'¿Quién será el ganador del grupo D?', points:1)
Prediction.create!(question_type:4 , group:'D' , question:'¿Quién será el segundo del grupo D?', points:1)
Prediction.create!(question_type:4 , group:'E' , question:'¿Quién será el ganador del grupo E?', points:1)
Prediction.create!(question_type:4 , group:'E' , question:'¿Quién será el segundo del grupo E?', points:1)
Prediction.create!(question_type:4 , group:'F' , question:'¿Quién será el ganador del grupo F?', points:1)
Prediction.create!(question_type:4 , group:'F' , question:'¿Quién será el segundo del grupo F?', points:1)
Prediction.create!(question_type:4 , group:'G' , question:'¿Quién será el ganador del grupo G?', points:1)
Prediction.create!(question_type:4 , group:'G' , question:'¿Quién será el segundo del grupo G?', points:1)
Prediction.create!(question_type:4 , group:'H' , question:'¿Quién será el ganador del grupo H?', points:1)
Prediction.create!(question_type:4 , group:'H' , question:'¿Quién será el segundo del grupo H?', points:1)


Team.create!(group:'A' ,name: 'Brazil',)
Team.create!(group:'A' ,name: 'Croacia')
Team.create!(group:'A' ,name: 'Mexico')
Team.create!(group:'A' ,name: 'Camerun')
Team.create!(group:'B' ,name: 'España')
Team.create!(group:'B' ,name: 'Holanda')
Team.create!(group:'B' ,name: 'Chile')
Team.create!(group:'B' ,name: 'Australia')
Team.create!(group:'C' ,name: 'Colombia')
Team.create!(group:'C' ,name: 'Grecia')
Team.create!(group:'C' ,name: 'Costa de Marfil')
Team.create!(group:'C' ,name: 'Japon')
Team.create!(group:'D' ,name: 'Uruguay')
Team.create!(group:'D' ,name: 'Italia')
Team.create!(group:'D' ,name: 'Inglaterra')
Team.create!(group:'D' ,name: 'Costa Rica')
Team.create!(group:'E' ,name: 'Suiza')
Team.create!(group:'E' ,name: 'Francia')
Team.create!(group:'E' ,name: 'Ecuador')
Team.create!(group:'E' ,name: 'Honduras')
Team.create!(group:'F' ,name: 'Argentina')
Team.create!(group:'F' ,name: 'Bosnia')
Team.create!(group:'F' ,name: 'Nigeria')
Team.create!(group:'F' ,name: 'Iran')
Team.create!(group:'G' ,name: 'Alemania')
Team.create!(group:'G' ,name: 'USA')
Team.create!(group:'G' ,name: 'Portugal')
Team.create!(group:'G' ,name: 'Ghana')
Team.create!(group:'H' ,name: 'Belgica')
Team.create!(group:'H' ,name: 'Rusia')
Team.create!(group:'H' ,name: 'Algeria')
Team.create!(group:'H' ,name: 'Korea del Sur')

Match.create!(local: Team.find_by(name:'Brazil'), visit:Team.find_by(name:'Croacia'),         time:Time.new(2014,6,12,17))
Match.create!(local: Team.find_by(name:'Mexico'), visit:Team.find_by(name:'Camerun'),         time:Time.new(2014,6,13,13))
Match.create!(local: Team.find_by(name:'España'), visit:Team.find_by(name:'Holanda'),         time:Time.new(2014,6,13,16))
Match.create!(local: Team.find_by(name:'Chile'), visit:Team.find_by(name:'Australia'),        time:Time.new(2014,6,13,18))
Match.create!(local: Team.find_by(name:'Colombia'), visit:Team.find_by(name:'Grecia'),        time:Time.new(2014,6,14,13))
Match.create!(local: Team.find_by(name:'Uruguay'), visit:Team.find_by(name:'Costa Rica'),     time:Time.new(2014,6,14,16))
Match.create!(local: Team.find_by(name:'Inglaterra'), visit:Team.find_by(name:'Italia'),      time:Time.new(2014,6,14,18))
Match.create!(local: Team.find_by(name:'Costa de Marfil'), visit:Team.find_by(name:'Japon'),  time:Time.new(2014,6,14,22))
Match.create!(local: Team.find_by(name:'Suiza'), visit:Team.find_by(name:'Ecuador'),          time:Time.new(2014,6,15,13))
Match.create!(local: Team.find_by(name:'Francia'), visit:Team.find_by(name:'Honduras'),       time:Time.new(2014,6,15,16))
Match.create!(local: Team.find_by(name:'Argentina'), visit:Team.find_by(name:'Bosnia'),       time:Time.new(2014,6,15,19))
Match.create!(local: Team.find_by(name:'Alemania'), visit:Team.find_by(name:'Portugal'),      time:Time.new(2014,6,16,13))
Match.create!(local: Team.find_by(name:'Iran'), visit:Team.find_by(name:'Nigeria'),           time:Time.new(2014,6,16,16))
Match.create!(local: Team.find_by(name:'Ghana'), visit:Team.find_by(name:'USA'),              time:Time.new(2014,6,16,19))
Match.create!(local: Team.find_by(name:'Belgica'), visit:Team.find_by(name:'Algeria'),        time:Time.new(2014,6,17,13))
Match.create!(local: Team.find_by(name:'Brazil'), visit:Team.find_by(name:'Mexico'),          time:Time.new(2014,6,17,16))
Match.create!(local: Team.find_by(name:'Rusia'), visit:Team.find_by(name:'Korea del Sur'),    time:Time.new(2014,6,17,18))
Match.create!(local: Team.find_by(name:'Australia'), visit:Team.find_by(name:'Holanda'),      time:Time.new(2014,6,18,13))
Match.create!(local: Team.find_by(name:'España'), visit:Team.find_by(name:'Chile'),           time:Time.new(2014,6,18,16))
Match.create!(local: Team.find_by(name:'Camerun'), visit:Team.find_by(name:'Croacia'),        time:Time.new(2014,6,18,18))
Match.create!(local: Team.find_by(name:'Colombia'), visit:Team.find_by(name:'Costa de Marfil'), time:Time.new(2014,6,19,13))
Match.create!(local: Team.find_by(name:'Uruguay'), visit:Team.find_by(name:'Inglaterra'),     time:Time.new(2014,6,19,16))
Match.create!(local: Team.find_by(name:'Japon'), visit:Team.find_by(name:'Grecia'),           time:Time.new(2014,6,19,19))
Match.create!(local: Team.find_by(name:'Italia'), visit:Team.find_by(name:'Costa Rica'),      time:Time.new(2014,6,20,13))
Match.create!(local: Team.find_by(name:'Suiza'), visit:Team.find_by(name:'Francia'),          time:Time.new(2014,6,20,16))
Match.create!(local: Team.find_by(name:'Honduras'), visit:Team.find_by(name:'Ecuador'),       time:Time.new(2014,6,20,19))
Match.create!(local: Team.find_by(name:'Argentina'), visit:Team.find_by(name:'Iran'),         time:Time.new(2014,6,21,13))
Match.create!(local: Team.find_by(name:'Alemania'), visit:Team.find_by(name:'Ghana'),         time:Time.new(2014,6,21,16))
Match.create!(local: Team.find_by(name:'Nigeria'), visit:Team.find_by(name:'Bosnia'),         time:Time.new(2014,6,21,18))
Match.create!(local: Team.find_by(name:'Belgica'), visit:Team.find_by(name:'Rusia'),          time:Time.new(2014,6,22,13))
Match.create!(local: Team.find_by(name:'Korea del Sur'), visit:Team.find_by(name:'Algeria'),  time:Time.new(2014,6,22,16))
Match.create!(local: Team.find_by(name:'USA'), visit:Team.find_by(name:'Portugal'),           time:Time.new(2014,6,22,18))
Match.create!(local: Team.find_by(name:'Holanda'), visit:Team.find_by(name:'Chile'),          time:Time.new(2014,6,23,13))
Match.create!(local: Team.find_by(name:'Australia'), visit:Team.find_by(name:'España'),       time:Time.new(2014,6,23,13))
Match.create!(local: Team.find_by(name:'Camerun'), visit:Team.find_by(name:'Brazil'),         time:Time.new(2014,6,23,17))
Match.create!(local: Team.find_by(name:'Croacia'), visit:Team.find_by(name:'Mexico'),         time:Time.new(2014,6,23,17))
Match.create!(local: Team.find_by(name:'Italia'), visit:Team.find_by(name:'Uruguay'),         time:Time.new(2014,6,24,13))
Match.create!(local: Team.find_by(name:'Costa Rica'), visit:Team.find_by(name:'Inglaterra'),  time:Time.new(2014,6,24,13))
Match.create!(local: Team.find_by(name:'Japon'), visit:Team.find_by(name:'Colombia'),         time:Time.new(2014,6,24,16))
Match.create!(local: Team.find_by(name:'Grecia'), visit:Team.find_by(name:'Costa de Marfil'), time:Time.new(2014,6,24,17))
Match.create!(local: Team.find_by(name:'Nigeria'), visit:Team.find_by(name:'Argentina'),      time:Time.new(2014,6,25,13))
Match.create!(local: Team.find_by(name:'Bosnia'), visit:Team.find_by(name:'Iran'),            time:Time.new(2014,6,25,13))
Match.create!(local: Team.find_by(name:'Honduras'), visit:Team.find_by(name:'Suiza'),         time:Time.new(2014,6,25,16))
Match.create!(local: Team.find_by(name:'Ecuador'), visit:Team.find_by(name:'Francia'),        time:Time.new(2014,6,25,17))
Match.create!(local: Team.find_by(name:'Portugal'), visit:Team.find_by(name:'Ghana'),         time:Time.new(2014,6,26,13))
Match.create!(local: Team.find_by(name:'USA'), visit:Team.find_by(name:'Alemania'),           time:Time.new(2014,6,26,13))
Match.create!(local: Team.find_by(name:'Korea del Sur'), visit:Team.find_by(name:'Belgica'),  time:Time.new(2014,6,26,17))
Match.create!(local: Team.find_by(name:'Algeria'), visit:Team.find_by(name:'Rusia'),          time:Time.new(2014,6,26,17))

User.create!(email: 'mverapino@gmail.com', password:'qwertyuiop', name: 'Mauricio Vera') #.confirm!
User.create!(email: 'testing@gmail.com',password:'testing1', name: 'Test') #.confirm!