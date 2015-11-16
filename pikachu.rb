require './pokemon.rb'

p 'Programm is run'

sleep 1

for i in 1..3
  sleep 1
  i -= 1
  p "Please, wait #{i} second"
end

pikachu = Pokemon.new

pikachu.say_info
