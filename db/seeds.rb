# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)
# require 'faker'

# puts "creating 3 startups"
# Startup.create( name: "Melon Innovation", website: "meloninnovation.com", location: "Insper CoWorking", logo: 'https://meloninnovation.com/img/favicon.ico', pitch: "Construa grandes projetos que exploram oportunidades. Superam desafios. Cometa erros rápidos. Conserte-os. Lance no mercado.", about: "Somos uma empresa de elaboração de projetos. Nosso objetivo é ajudar o seu negócio a prosperar. Inovação, tecnologia e estratégia são os meios que usamos para alcançá-lo.", founded: "Jan 2019", number_of_employees: "1-10", facebook: "facebook.com", twitter: "twitter.com", instagram: "instagram.com", youtube: "youtube.com", linkedin: "linkedin.com", market: "consultoria")
# Startup.create( name: "Banky", website: "banky.com.br", location: "Insper CoWorking", logo: 'https://banky.com.br/static/media/banky_logo.418ba382.svg', pitch: "Chegou a conta digital para freelancers, autônomos e startups. Com transparência, atendimento rápido e sem mensalidade.", about: "A conta digital para pessoa jurídica que busca controle e gestāo.", founded: "Nov 2018", number_of_employees: "1-10", facebook: "facebook.com", twitter: "twitter.com", instagram: "instagram.com", youtube: "youtube.com", linkedin: "linkedin.com", market: "financias")
# Startup.create( name: "Blue", website: "blue.com.br", location: "Insper CoWorking",logo: Faker::Company.logo, pitch: "A Blue é a nova maneira de prever doenças crônicas, usando Inteligência Artificial para calcular os riscos de acordo com cada perfil.", about: "A principal missão da Inteligência Blue é tornar infinita a ação de construir e viver momentos inesquecíveis, e para isso vem se aprimorando para superar o primeiro passo... Vencer doenças crônicas!!", founded: "Out 2018", number_of_employees: "1-10", facebook: "facebook.com", twitter: "twitter.com", instagram: "instagram.com", youtube: "youtube.com", linkedin: "linkedin.com", market: "saude")
# Startup.create( name: Faker::Company.unique.name, website: Faker::Internet.url, location: Faker::Address.street_address, logo: Faker::Company.logo, pitch: 'melon', about: Faker::Marketing.buzzwords, founded: "Out 2018", number_of_employees: "1-10", facebook: "facebook.com", twitter: Faker::Twitter.screen_name, instagram: "instagram.com", youtube: "youtube.com", linkedin: "linkedin.com", market: Faker::Company.industry)
# Startup.create( name: Faker::Company.unique.name, website: Faker::Internet.url, location: Faker::Address.street_address, logo: Faker::Company.logo, pitch: Faker::Company.catch_phrase, about: 'melon', founded: "Out 2018", number_of_employees: "1-10", facebook: "facebook.com", twitter: Faker::Twitter.screen_name, instagram: "instagram.com", youtube: "youtube.com", linkedin: "linkedin.com", market: Faker::Company.industry)
# Startup.create( name: Faker::Company.unique.name, website: Faker::Internet.url, location: Faker::Address.street_address, logo: Faker::Company.logo, pitch: 'melon', about: Faker::Marketing.buzzwords, founded: "Out 2018", number_of_employees: "1-10", facebook: "facebook.com", twitter: Faker::Twitter.screen_name, instagram: "instagram.com", youtube: "youtube.com", linkedin: "linkedin.com", market: Faker::Company.industry)
# Startup.create( name: Faker::Company.unique.name, website: Faker::Internet.url, location: Faker::Address.street_address, logo: Faker::Company.logo, pitch: Faker::Company.catch_phrase, about: 'melon', founded: "Out 2018", number_of_employees: "1-10", facebook: "facebook.com", twitter: Faker::Twitter.screen_name, instagram: "instagram.com", youtube: "youtube.com", linkedin: "linkedin.com", market: Faker::Company.industry)
# Startup.create( name: Faker::Company.unique.name, website: Faker::Internet.url, location: Faker::Address.street_address, logo: Faker::Company.logo, pitch: 'melon', about: Faker::Marketing.buzzwords, founded: "Out 2018", number_of_employees: "1-10", facebook: "facebook.com", twitter: Faker::Twitter.screen_name, instagram: "instagram.com", youtube: "youtube.com", linkedin: "linkedin.com", market: Faker::Company.industry)
# Startup.create( name: Faker::Company.unique.name, website: Faker::Internet.url, location: Faker::Address.street_address, logo: Faker::Company.logo, pitch: Faker::Company.catch_phrase, about: 'melon', founded: "Out 2018", number_of_employees: "1-10", facebook: "facebook.com", twitter: Faker::Twitter.screen_name, instagram: "instagram.com", youtube: "youtube.com", linkedin: "linkedin.com", market: Faker::Company.industry)


# puts "faking 12 startups"
# 12.times do
#   Startup.create( name: Faker::Company.unique.name, website: Faker::Internet.url, location: Faker::Address.street_address, logo: Faker::Company.logo, pitch: Faker::Company.catch_phrase, about: Faker::Marketing.buzzwords, founded: "Out 2018", number_of_employees: "1-10", facebook: "facebook.com", twitter: Faker::Twitter.screen_name, instagram: "instagram.com", youtube: "youtube.com", linkedin: "linkedin.com", market: Faker::Company.industry)
# end

puts "creating 4 people"
Person.create(name: "Matheus Marotzke", position: "Co Founder", linkedin:"linkedin.com")
Person.create(name: "Rodrigo Tognini", position: "Co Founder", linkedin:"linkedin.com")
Person.create(name: "Pedro Freire", position: "Co Founder", linkedin:"linkedin.com")
Person.create(name: "Felipe Buniac", position: "Co Founder", linkedin:"linkedin.com")

puts "creating an investor"
Investor.create(name: "Gabriel", last_name:"Zsigmond", linkedin:"linkedin.com")
Investor.create(name: "Daniel", last_name:"Schor", linkedin:"linkedin.com")
Investor.create(name: "Vitor", last_name:"Da Silva", linkedin:"linkedin.com")
Investor.create(name: "Luiz", last_name:"da Silva", linkedin:"linkedin.com")

puts "making owner links"
Owner.create(startup:Startup.find_by(name:"Melon Innovation"), person: Person.find_by(name: "Matheus Marotzke"))
Owner.create(startup:Startup.find_by(name:"Melon Innovation"), person: Person.find_by(name: "Felipe Buniac"))
Owner.create(startup:Startup.find_by(name:"Banky"), person: Person.find_by(name: "Rodrigo Tognini"))
Owner.create(startup:Startup.find_by(name:"Blue"), person: Person.find_by(name: "Pedro Freire"))

puts "making investor links"
Investment.create(startup:Startup.find_by(name:"Melon Innovation"), investor: Investor.find_by(name: "Gabriel"), amount: 2000)
Investment.create(startup:Startup.find_by(name:"Melon Innovation"), investor: Investor.find_by(name: "Luiz"), amount: 50000)
Investment.create(startup:Startup.find_by(name:"Banky"), investor: Investor.find_by(name: "Gabriel"), amount: 12000)
Investment.create(startup:Startup.find_by(name:"Blue"), investor: Investor.find_by(name: "Vitor"), amount: 2000)
Investment.create(startup:Startup.find_by(name:"Blue"), investor: Investor.find_by(name: "Daniel"), amount: 20000)
Investment.create(startup:Startup.find_by(name:"Banky"), investor: Investor.find_by(name: "Daniel"), amount: 20000)



client = Mongo::Client.new(ENV["CLIENT"])

# db = client.database

collection = client[:allStartups]

puts "creating Insper startups"

Startup.create( name: "Melon Innovation", website: "https://meloninnovation.com", location: "Insper CoWorking", logo: 'https://meloninnovation.com/img/favicon.ico', pitch: "Construa grandes projetos que exploram oportunidades. Superam desafios. Cometa erros rápidos. Conserte-os. Lance no mercado.", about: "Somos uma empresa de elaboração de projetos. Nosso objetivo é ajudar o seu negócio a prosperar. Inovação, tecnologia e estratégia são os meios que usamos para alcançá-lo.", founded: "Jan 2019", number_of_employees: "1-10", facebook: "facebook.com", twitter: "twitter.com", instagram: "instagram.com", youtube: "youtube.com", linkedin: "linkedin.com", market: "consultoria")
Startup.create( name: "Banky", website: "https://banky.com.br", location: "Insper CoWorking", logo: 'https://banky.com.br/static/media/banky_logo.418ba382.svg', pitch: "Chegou a conta digital para freelancers, autônomos e startups. Com transparência, atendimento rápido e sem mensalidade.", about: "A conta digital para pessoa jurídica que busca controle e gestāo.", founded: "Nov 2018", number_of_employees: "1-10", facebook: "facebook.com", twitter: "twitter.com", instagram: "instagram.com", youtube: "youtube.com", linkedin: "linkedin.com", market: "financias")
Startup.create( name: "Blue", website: "https://blue.com.br", location: "Insper CoWorking",logo: Faker::Company.logo, pitch: "A Blue é a nova maneira de prever doenças crônicas, usando Inteligência Artificial para calcular os riscos de acordo com cada perfil.", about: "A principal missão da Inteligência Blue é tornar infinita a ação de construir e viver momentos inesquecíveis, e para isso vem se aprimorando para superar o primeiro passo... Vencer doenças crônicas!!", founded: "Out 2018", number_of_employees: "1-10", facebook: "facebook.com", twitter: "twitter.com", instagram: "instagram.com", youtube: "youtube.com", linkedin: "linkedin.com", market: "saude")

puts "creating 15 startups from mongo"
cont = 0
collection.find( {  } ).first(100).each do |startup|
  cont += 1
  puts "#{cont} - NEW ELEMENT"
  s_name = startup['name']
  market = startup['market']
  logo = startup['logo']
  foundation = startup['foundation']
  employees = startup['employees']
  facebook = startup['facebook']
  twitter = startup['twitter']
  website = startup['website']
  linkedin = startup['linkedin']
  location = startup['location']
  pitch = startup['info']
  about = startup['about']
  youtube = startup['youtube']
  instagram = startup['instagram']

  Startup.create( name: s_name, website: website, location: location,logo: logo, pitch: pitch, about: about, founded: foundation, number_of_employees: employees, facebook: facebook, twitter: twitter, instagram: instagram, youtube: youtube, linkedin: linkedin, market: market)

  if startup['members'] != nil
    startup['members'].each do |member|
      name = member['name']
      position = member['position']
      linkedin = member['linkedin']
      if Person.find_by(name: name)
        Owner.create(startup:Startup.find_by(name: startup['name']), person: Person.find_by(name: name))  
      else
        Person.create(name: name, position: position, linkedin: linkedin)
        Owner.create(startup:Startup.find_by(name: startup['name']), person: Person.find_by(name: name))
      end
    end
  end

  puts "DONE"
  puts "\n"
end
