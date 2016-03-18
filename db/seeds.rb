# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Make Pokemon
%w(Squirtle Charmander Bulbasaur Pikachu Jojomon Houndour Unknown Plusle Wailord Sandshrew Minun Zubat Treecko Mudkip Torchic Wobbuffet Pichu Marill Snorlax Riolu Mew Ditto Blastoise Lapras Vaporeon Porygon Lickitung Staryu Mr.Mime Magikarp Ponyta Doduo Magnemite Bellsprout Geodude Diglet Psyduck Parasect Vulpix Eevee Weedle Metapod Raticate Ekans Raichu).each do |name|
  Pokemon.create name: name, level: rand(1..20), health: 100
end

# Make other trainers
%w(Ash Gary Misty Brock).each do |name|
  Trainer.create name: name, email: name+"@pokeportal.com", password: 'password'
end
