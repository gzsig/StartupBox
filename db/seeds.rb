# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "creating 3 startups"
Startup.create( name: "Melon Innovation", website: "meloninnovation.com", logo: "melon.png", pitch: "Construa grandes projetos que exploram oportunidades. Superam desafios. Cometa erros rápidos. Conserte-os. Lance no mercado.", about: "Somos uma empresa de elaboração de projetos. Nosso objetivo é ajudar o seu negócio a prosperar. Inovação, tecnologia e estratégia são os meios que usamos para alcançá-lo.", founded: "Jan 2019", number_of_employees: "1-10", facebook: "facebook.com", twitter: "twitter.com", instagram: "instagram.com", youtube: "youtube.com", linkedin: "linkedin.com", market: "consultoria")
Startup.create( name: "Banky", website: "banky.com.br", logo: "banky.png", pitch: "Chegou a conta digital para freelancers, autônomos e startups. Com transparência, atendimento rápido e sem mensalidade.", about: "A conta digital para pessoa jurídica que busca controle e gestāo.", founded: "Nov 2018", number_of_employees: "1-10", facebook: "facebook.com", twitter: "twitter.com", instagram: "instagram.com", youtube: "youtube.com", linkedin: "linkedin.com", market: "financias")
Startup.create( name: "Blue", website: "blue.com.br", logo: "blue.png", pitch: "A Blue é a nova maneira de prever doenças crônicas, usando Inteligência Artificial para calcular os riscos de acordo com cada perfil.", about: "A principal missão da Inteligência Blue é tornar infinita a ação de construir e viver momentos inesquecíveis, e para isso vem se aprimorando para superar o primeiro passo... Vencer doenças crônicas!!", founded: "Out 2018", number_of_employees: "1-10", facebook: "facebook.com", twitter: "twitter.com", instagram: "instagram.com", youtube: "youtube.com", linkedin: "linkedin.com", market: "saude")

puts "creating 4 people"

Person.create(name: "Matheus", last_name: "Marotzke", linkedin:"linkedin.com")
Person.create(name: "Rodrigo", last_name: "Tognini", linkedin:"linkedin.com")
Person.create(name: "Pedro", last_name: "Freire", linkedin:"linkedin.com")
Person.create(name: "Felipe", last_name: "Buniac", linkedin:"linkedin.com")

puts "making links"
Owner.create(startup:Startup.find_by(name:"Melon Innovation"), person: Person.find_by(name: "Matheus"))
Owner.create(startup:Startup.find_by(name:"Melon Innovation"), person: Person.find_by(name: "Felipe"))
Owner.create(startup:Startup.find_by(name:"Banky"), person: Person.find_by(name: "Rodrigo"))
Owner.create(startup:Startup.find_by(name:"Blue"), person: Person.find_by(name: "Pedro"))