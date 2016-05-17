# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create!(id:11,email: 'mverapino@gmail.com', password:'alejandro5', encrypted_password: '$2a$10$2K37CPgC5zKCdTDzFwbVDOBXdNt2wAgIWVVOKBJX219Giivq0jSqm', name: 'Mauricio Vera') #.confirm!
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
Prediction.create!(question_type:4 , group:'D' , question:'¿Quién será el ganador del grupo D?', points:4)
Prediction.create!(question_type:4 , group:'D' , question:'¿Quién será el segundo del grupo D?', points:4)
Prediction.create!(question_type:1 , question:'¿Quién será el primer mejor tercer equipo?', points:4)
Prediction.create!(question_type:1 , question:'¿Quién será el segundo mejor tercer equipo?', points:4	)
Prediction.create!(question_type:5 , question:'¿Equipo Revelacion?', points:7	)

Team.create!(group:'A' ,name: 'Estados Unidos', favorite: true)
Team.create!(group:'A' ,name: 'Colombia')
Team.create!(group:'A' ,name: 'Costa Rica')
Team.create!(group:'A' ,name: 'Paraguay')
Team.create!(group:'B' ,name: 'Brasil', favorite: true)
Team.create!(group:'B' ,name: 'Ecuador', favorite: true)
Team.create!(group:'B' ,name: 'Haití')
Team.create!(group:'B' ,name: 'Perú')
Team.create!(group:'C' ,name: 'México', favorite: true)
Team.create!(group:'C' ,name: 'Uruguay', favorite: true)
Team.create!(group:'C' ,name: 'Jamaica')
Team.create!(group:'C' ,name: 'Venezuela')
Team.create!(group:'D' ,name: 'Argentina', favorite: true)
Team.create!(group:'D' ,name: 'Chile', favorite: true)
Team.create!(group:'D' ,name: 'Panamá')
Team.create!(group:'D' ,name: 'Bolivia')

Team.create!(group:'Z' ,name: 'Unknown')

Match.create!(local: Team.find_by(name:'Estados Unidos'), visit:Team.find_by(name:'Colombia'),         time:Time.new(2016,6,3,21,30))
Match.create!(local: Team.find_by(name:'Costa Rica'), visit:Team.find_by(name:'Paraguay'),         time:Time.new(2016,6,4,17))
Match.create!(local: Team.find_by(name:'Estados Unidos'), visit:Team.find_by(name:'Costa Rica'),         time:Time.new(2016,6,7,20))
Match.create!(local: Team.find_by(name:'Colombia'), visit:Team.find_by(name:'Paraguay'),         time:Time.new(2016,6,7,22,30))
Match.create!(local: Team.find_by(name:'Estados Unidos'), visit:Team.find_by(name:'Paraguay'),         time:Time.new(2016,6,11,19))
Match.create!(local: Team.find_by(name:'Colombia'), visit:Team.find_by(name:'Costa Rica'),         time:Time.new(2016,6,11,21))

Match.create!(local: Team.find_by(name:'Brasil'), visit:Team.find_by(name:'Ecuador'),         time:Time.new(2016,6,4,22))
Match.create!(local: Team.find_by(name:'Haití'), visit:Team.find_by(name:'Perú'),         time:Time.new(2016,6,4,19,30))
Match.create!(local: Team.find_by(name:'Brasil'), visit:Team.find_by(name:'Haití'),         time:Time.new(2016,6,8,19,30))
Match.create!(local: Team.find_by(name:'Ecuador'), visit:Team.find_by(name:'Perú'),         time:Time.new(2016,6,8,22))
Match.create!(local: Team.find_by(name:'Brasil'), visit:Team.find_by(name:'Perú'),         time:Time.new(2016,6,12,20,30))
Match.create!(local: Team.find_by(name:'Ecuador'), visit:Team.find_by(name:'Haití'),         time:Time.new(2016,6,12,18,30))

Match.create!(local: Team.find_by(name:'México'), visit:Team.find_by(name:'Uruguay'),         time:Time.new(2016,6,5,20))
Match.create!(local: Team.find_by(name:'Jamaica'), visit:Team.find_by(name:'Venezuela'),         time:Time.new(2016,6,5,18))
Match.create!(local: Team.find_by(name:'México'), visit:Team.find_by(name:'Jamaica'),         time:Time.new(2016,6,9,22))
Match.create!(local: Team.find_by(name:'Uruguay'), visit:Team.find_by(name:'Venezuela'),         time:Time.new(2016,6,9,19,30))
Match.create!(local: Team.find_by(name:'México'), visit:Team.find_by(name:'Venezuela'),         time:Time.new(2016,6,13,20))
Match.create!(local: Team.find_by(name:'Uruguay'), visit:Team.find_by(name:'Jamaica'),         time:Time.new(2016,6,13,22))

Match.create!(local: Team.find_by(name:'Argentina'), visit:Team.find_by(name:'Chile'),         time:Time.new(2016,6,6,22))
Match.create!(local: Team.find_by(name:'Panamá'), visit:Team.find_by(name:'Bolivia'),         time:Time.new(2016,6,6,19))
Match.create!(local: Team.find_by(name:'Argentina'), visit:Team.find_by(name:'Panamá'),         time:Time.new(2016,6,10,21,30))
Match.create!(local: Team.find_by(name:'Chile'), visit:Team.find_by(name:'Bolivia'),         time:Time.new(2016,6,10,19))
Match.create!(local: Team.find_by(name:'Argentina'), visit:Team.find_by(name:'Bolivia'),         time:Time.new(2016,6,14,22))
Match.create!(local: Team.find_by(name:'Chile'), visit:Team.find_by(name:'Panamá'),         time:Time.new(2016,6,14,20))

Match.create!(local: Team.find_by(name:'Unknown'), visit:Team.find_by(name:'Unknown'),         time:Time.new(2016,6,16,21,30))
Match.create!(local: Team.find_by(name:'Unknown'), visit:Team.find_by(name:'Unknown'),         time:Time.new(2016,6,17,20))
Match.create!(local: Team.find_by(name:'Unknown'), visit:Team.find_by(name:'Unknown'),         time:Time.new(2016,6,18,22))
Match.create!(local: Team.find_by(name:'Unknown'), visit:Team.find_by(name:'Unknown'),         time:Time.new(2016,6,18,19))

Match.create!(local: Team.find_by(name:'Unknown'), visit:Team.find_by(name:'Unknown'),         time:Time.new(2016,6,21,21))
Match.create!(local: Team.find_by(name:'Unknown'), visit:Team.find_by(name:'Unknown'),         time:Time.new(2016,6,22,20))

Match.create!(local: Team.find_by(name:'Unknown'), visit:Team.find_by(name:'Unknown'),         time:Time.new(2016,7,25,20))
Match.create!(local: Team.find_by(name:'Unknown'), visit:Team.find_by(name:'Unknown'),         time:Time.new(2016,7,26,20))


