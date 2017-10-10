require('pry')
require_relative('./Wanted.rb')

# Wanted.delete_all()

bounty_1 = Wanted.new(
  {
    'name' => 'Boba Fett',
    'species' => 'Mandalorian',
    'value' => '1000000',
    'homeworld' => 'Mandalore'
  }
)
bounty_2 = Wanted.new(
  {
    'name' => 'Dengar',
    'species' => 'Human',
    'value' => '500000',
    'homeworld' => 'corillia'
  }
)
bounty_3 = Wanted.new(
  {
    'name' => 'bossk',
    'species' => 'Trandoshan',
    'value' => '500000',
    'homeworld' => 'Trand'
  }
)
  bounty_4 = Wanted.new(
    {
      'name' => 'IG-88',
      'species' => 'Battle_Droid',
      'value' => '500000',
      'homeworld' => 'Geonosis'
    }
  )
  binding.pry
  nil
