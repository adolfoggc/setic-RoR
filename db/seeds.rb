# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts 'Generating Jobs...'
	Job.create([
				{ name: 'Desenvolvedor Back-End' },
				{ name: 'Desenvolvedor Front-End' },
				{ name: 'Gerente de Projeto' },
				{ name: 'Full Stack Developer' },
				{ name: 'Mestre do Chicote'},
				{ name: 'Aquele que Fica com as Verdinhas'}
			])
puts 'Generating Jobs... [OK]'

puts 'Generating Employees...'
10.times do |i|
      Member.create!(  	
      					name: Faker::Name.name, 
                        job: Job.all.sample 
                      )
end		
puts 'Generating Employees... [OK]'