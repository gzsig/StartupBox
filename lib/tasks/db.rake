namespace :db do
  desc '(drop + create + migrate + seed) for dev & test database'
  task reseed: [ 'db:drop', 'db:create', 'db:migrate', 'db:seed' ] do
    puts 'Reseeding completed!'
  end
end
