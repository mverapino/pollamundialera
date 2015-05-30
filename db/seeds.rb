# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#User.create!(email: 'mverapino@gmail.com', password:'alejandro5', encrypted_password: '$2a$10$2K37CPgC5zKCdTDzFwbVDOBXdNt2wAgIWVVOKBJX219Giivq0jSqm', name: 'Mauricio Vera') #.confirm!
#User.create!(email: 'testing@gmail.com',password:'testing1', encrypted_password: '$2a$10$WzjBLRDsxnpMYmM.iDFpJ.iA/Uf6LxqKc2XbclaKu7jYurwjd4WWy', name: 'Test') #.confirm!
Prediction.create!(question_type:1 , question:'¿Quién será el campeón?', points:5)
Prediction.create!(question_type:1 , question:'¿Quién será el sub-campeón?', points:5)
Prediction.create!(question_type:1 , question:'¿Quién será el tercero?', points:5)
Prediction.create!(question_type:1 , question:'¿Quién será el cuarto?', points:5)
Prediction.create!(question_type:2 , question:'¿Quién será el goleador?', points: 7)
Prediction.create!(question_type:2 , question:'¿Quién será el mejor jugador?', points:7)
Prediction.create!(question_type:3 , question:'¿Cual será el resultado de Chile?', points:5)
Prediction.create!(question_type:4 , group:'A' , question:'¿Quién será el ganador del grupo A?', points:4)
Prediction.create!(question_type:4 , group:'A' , question:'¿Quién será el segundo del grupo A?', points:4)
Prediction.create!(question_type:4 , group:'B' , question:'¿Quién será el ganador del grupo B?', points:4)
Prediction.create!(question_type:4 , group:'B' , question:'¿Quién será el segundo del grupo B?', points:4)
Prediction.create!(question_type:4 , group:'C' , question:'¿Quién será el ganador del grupo C?', points:4)
Prediction.create!(question_type:4 , group:'C' , question:'¿Quién será el segundo del grupo C?', points:4)
Prediction.create!(question_type:1 , question:'¿Quién será el primer mejor tercer equipo?', points:4)
Prediction.create!(question_type:1 , question:'¿Quién será el segundo mejor tercer equipo?', points:4)

Team.create!(group:'A' ,name: 'Chile', favorite: true)
Team.create!(group:'A' ,name: 'México')
Team.create!(group:'A' ,name: 'Ecuador')
Team.create!(group:'A' ,name: 'Bolivia')
Team.create!(group:'B' ,name: 'Argentina', favorite: true)
Team.create!(group:'B' ,name: 'Uruguay', favorite: true)
Team.create!(group:'B' ,name: 'Paraguay')
Team.create!(group:'B' ,name: 'Jamaica')
Team.create!(group:'C' ,name: 'Brasil', favorite: true)
Team.create!(group:'C' ,name: 'Colombia', favorite: true)
Team.create!(group:'C' ,name: 'Peru')
Team.create!(group:'C' ,name: 'Venezuela')

Team.create!(group:'Z' ,name: 'Unknown')

Match.create!(local: Team.find_by(name:'Chile'), visit:Team.find_by(name:'Ecuador'),         time:Time.new(2015,6,11,20))
Match.create!(local: Team.find_by(name:'México'), visit:Team.find_by(name:'Bolivia'),         time:Time.new(2015,6,12,20))
Match.create!(local: Team.find_by(name:'Ecuador'), visit:Team.find_by(name:'Bolivia'),         time:Time.new(2015,6,15,18))
Match.create!(local: Team.find_by(name:'Chile'), visit:Team.find_by(name:'México'),         time:Time.new(2015,6,15,20))
Match.create!(local: Team.find_by(name:'México'), visit:Team.find_by(name:'Ecuador'),         time:Time.new(2015,6,19,18))
Match.create!(local: Team.find_by(name:'Chile'), visit:Team.find_by(name:'Bolivia'),         time:Time.new(2015,6,19,20))

Match.create!(local: Team.find_by(name:'Uruguay'), visit:Team.find_by(name:'Jamaica'),         time:Time.new(2015,6,13,16))
Match.create!(local: Team.find_by(name:'Argentina'), visit:Team.find_by(name:'Paraguay'),         time:Time.new(2015,6,13,18))
Match.create!(local: Team.find_by(name:'Paraguay'), visit:Team.find_by(name:'Jamaica'),         time:Time.new(2015,6,16,18))
Match.create!(local: Team.find_by(name:'Argentina'), visit:Team.find_by(name:'Uruguay'),         time:Time.new(2015,6,16,20))
Match.create!(local: Team.find_by(name:'Uruguay'), visit:Team.find_by(name:'Paraguay	'),         time:Time.new(2015,6,20,16))
Match.create!(local: Team.find_by(name:'Argentina'), visit:Team.find_by(name:'Jamaica'),         time:Time.new(2015,6,20,18))

Match.create!(local: Team.find_by(name:'Colombia'), visit:Team.find_by(name:'Venezuela'),         time:Time.new(2015,6,14,16))
Match.create!(local: Team.find_by(name:'Brasil'), visit:Team.find_by(name:'Peru'),         time:Time.new(2015,6,14,18))
Match.create!(local: Team.find_by(name:'Brasil'), visit:Team.find_by(name:'Colombia'),         time:Time.new(2015,6,17,21))
Match.create!(local: Team.find_by(name:'Peru'), visit:Team.find_by(name:'Venezuela'),         time:Time.new(2015,6,18,20))
Match.create!(local: Team.find_by(name:'Colombia'), visit:Team.find_by(name:'Peru'),         time:Time.new(2015,6,21,16))
Match.create!(local: Team.find_by(name:'Brasil'), visit:Team.find_by(name:'Venezuela'),         time:Time.new(2015,6,21,18))

Match.create!(local: Team.find_by(name:'Unknown'), visit:Team.find_by(name:'Unknown'),         time:Time.new(2015,6,24,20))
Match.create!(local: Team.find_by(name:'Unknown'), visit:Team.find_by(name:'Unknown'),         time:Time.new(2015,6,25,20))
Match.create!(local: Team.find_by(name:'Unknown'), visit:Team.find_by(name:'Unknown'),         time:Time.new(2015,6,26,20))
Match.create!(local: Team.find_by(name:'Unknown'), visit:Team.find_by(name:'Unknown'),         time:Time.new(2015,6,27,18))

Match.create!(local: Team.find_by(name:'Unknown'), visit:Team.find_by(name:'Unknown'),         time:Time.new(2015,6,29,20))
Match.create!(local: Team.find_by(name:'Unknown'), visit:Team.find_by(name:'Unknown'),         time:Time.new(2015,6,30,20))

Match.create!(local: Team.find_by(name:'Unknown'), visit:Team.find_by(name:'Unknown'),         time:Time.new(2015,7,3,20))
Match.create!(local: Team.find_by(name:'Unknown'), visit:Team.find_by(name:'Unknown'),         time:Time.new(2015,7,4,17))


