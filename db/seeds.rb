# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts "creating 3 startups"
Startup.create( name: "Melon Innovation", website: "meloninnovation.com", location: "Insper CoWorking", logo: 'https://meloninnovation.com/img/favicon.ico', pitch: "Construa grandes projetos que exploram oportunidades. Superam desafios. Cometa erros rápidos. Conserte-os. Lance no mercado.", about: "Somos uma empresa de elaboração de projetos. Nosso objetivo é ajudar o seu negócio a prosperar. Inovação, tecnologia e estratégia são os meios que usamos para alcançá-lo.", founded: "Jan 2019", number_of_employees: "1-10", facebook: "facebook.com", twitter: "twitter.com", instagram: "instagram.com", youtube: "youtube.com", linkedin: "linkedin.com", market: "consultoria")
Startup.create( name: "Banky", website: "banky.com.br", location: "Insper CoWorking", logo: Faker::Company.logo, pitch: "Chegou a conta digital para freelancers, autônomos e startups. Com transparência, atendimento rápido e sem mensalidade.", about: "A conta digital para pessoa jurídica que busca controle e gestāo.", founded: "Nov 2018", number_of_employees: "1-10", facebook: "facebook.com", twitter: "twitter.com", instagram: "instagram.com", youtube: "youtube.com", linkedin: "linkedin.com", market: "financias")
Startup.create( name: "Blue", website: "blue.com.br", location: "Insper CoWorking",logo: Faker::Company.logo, pitch: "A Blue é a nova maneira de prever doenças crônicas, usando Inteligência Artificial para calcular os riscos de acordo com cada perfil.", about: "A principal missão da Inteligência Blue é tornar infinita a ação de construir e viver momentos inesquecíveis, e para isso vem se aprimorando para superar o primeiro passo... Vencer doenças crônicas!!", founded: "Out 2018", number_of_employees: "1-10", facebook: "facebook.com", twitter: "twitter.com", instagram: "instagram.com", youtube: "youtube.com", linkedin: "linkedin.com", market: "saude")
Startup.create( name: "Bank", about: 'melon')
Startup.create( name: "Mundo Maker", pitch: 'melon')

puts "faking 12 startups"
12.times do
  Startup.create( name: Faker::Company.unique.name, website: Faker::Internet.url, location: Faker::Address.street_address, logo: Faker::Company.logo, pitch: Faker::Company.catch_phrase, about: Faker::Marketing.buzzwords, founded: "Out 2018", number_of_employees: "1-10", facebook: "facebook.com", twitter: Faker::Twitter.screen_name, instagram: "instagram.com", youtube: "youtube.com", linkedin: "linkedin.com", market: Faker::Company.industry)
end

puts "creating 4 people"
Person.create(name: "Matheus", last_name: "Marotzke", linkedin:"linkedin.com")
Person.create(name: "Rodrigo", last_name: "Tognini", linkedin:"linkedin.com")
Person.create(name: "Pedro", last_name: "Freire", linkedin:"linkedin.com")
Person.create(name: "Felipe", last_name: "Buniac", linkedin:"linkedin.com")

puts "creating an investor"
Investor.create(name: "Gabriel", last_name:"Zsigmond", linkedin:"linkedin.com")
Investor.create(name: "Daniel", last_name:"Schor", linkedin:"linkedin.com")
Investor.create(name: "Vitor", last_name:"Da Silva", linkedin:"linkedin.com")
Investor.create(name: "Pedro", last_name:"Villares", linkedin:"linkedin.com")

puts "making owner links"
Owner.create(startup:Startup.find_by(name:"Melon Innovation"), person: Person.find_by(name: "Matheus"))
Owner.create(startup:Startup.find_by(name:"Melon Innovation"), person: Person.find_by(name: "Felipe"))
Owner.create(startup:Startup.find_by(name:"Banky"), person: Person.find_by(name: "Rodrigo"))
Owner.create(startup:Startup.find_by(name:"Blue"), person: Person.find_by(name: "Pedro"))

puts "making investor links"
Investment.create(startup:Startup.find_by(name:"Melon Innovation"), investor: Investor.find_by(name: "Gabriel"), amount: 2000)
Investment.create(startup:Startup.find_by(name:"Melon Innovation"), investor: Investor.find_by(name: "Pedro"), amount: 50000)
Investment.create(startup:Startup.find_by(name:"Banky"), investor: Investor.find_by(name: "Gabriel"), amount: 12000)
Investment.create(startup:Startup.find_by(name:"Blue"), investor: Investor.find_by(name: "Vitor"), amount: 2000)
Investment.create(startup:Startup.find_by(name:"Blue"), investor: Investor.find_by(name: "Daniel"), amount: 20000)
Investment.create(startup:Startup.find_by(name:"Banky"), investor: Investor.find_by(name: "Daniel"), amount: 20000)