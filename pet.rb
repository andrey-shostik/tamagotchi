class Pet
  def initialize(name, type)
    @name = name
    @type = type
  end

  def say_type
    puts "Тип вашої тварини #{@type}"
  end

  def say_name
    puts "Ім\'я вашої тварини #{@name} "
  end

  def say_info
    puts "Тип вашої тварини #{@type}"
    puts "Ім\'я вашої тварини #{@name} "
  end

  def do_sleep
    3.times do |i|
     puts "Сон.. #{i + 1}"
     sleep 2
     if i == 2
       puts 'Добрий ранок'
     end
    end
  end
end


def type_list
  type_list =
  {
    1 => 'Крокодил',
    2 => 'Скорпіон',
    3 => 'Кіт',
    4 => 'Попугай',
    5 => 'Зомбі'
  }
  type_list
end

puts " Тамагочи 1.0"
(type_list.length).times { |t| puts " #{t+1} - #{type_list[t+1]}"}

while
  sleep 0.5
  puts "Виберіть тип тварини #{}"
  @type = gets.chomp.to_i
  break if type_list.keys.include?(@type) && @type = type_list[@type]
end


puts "Введіть ім\'я вашой тварини"
@name = gets.chomp.to_s

while @name.length <= 3
  sleep 0.5
  puts "Ім\'я вашої тварини повинно бути більше 3-ох символів"
  @name = gets.chomp.to_s
end

hero = Pet.new(@name, @type)
sleep 1.5
system "clear"

hero.say_name
hero.say_type
sleep 1

def info_menu
  info_menu =
  {
    0 => 'exit',
    1 => 'say_info',
    2 => 'do_sleep'
  }
  info_menu
end

(info_menu.length).times { |t| puts " #{t} - #{info_menu[t]}"}

while
  info = gets.chomp.to_i
 if info_menu.keys.include?(info)
   info = info_menu[info].downcase
   hero.send info
 elsif info == 0
   exit
 end
end
