require './pokemon.rb'

p 'Programm is run'

sleep 1

4.times do |t|
  p "Processing #{t}..."
  sleep 0.5
end

pikachu = Pokemon.new

pikachu.say_info

pikachu.sleep?
