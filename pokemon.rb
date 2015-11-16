class Pokemon

  def initialize
    @name = 'Pikachu'
    p 'Please, print age your Pokemon'
    @years = gets.chomp.to_i
  end

  def say_info
    puts "My name #{@name} and me #{@years} years"
  end


end
