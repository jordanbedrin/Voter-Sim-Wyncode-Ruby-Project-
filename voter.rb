#VOTER VOTER VOTER
class Voter
  @@population = []
  attr_reader :name, :party

  def initialize(name, party)
    @name = name
    @party = party
    @@population << self
  end

    def appends
      puts @@population
    end

    def self.print_pop
      puts @@population.map{|pol| "Voter, #{pol.name}, #{pol.party}"}
    end

    def self.update (n)
      @@population.each{|pol|
      if pol.name == n
        puts "New Name?"
        new_name = gets.chomp.capitalize
        puts "New Politics?"
        new_party = gets.chomp.upcase
        pol.instance_variable_set(:@name, new_name)
        pol.instance_variable_set(:@party, new_party)
      end
     }
    end

    def self.delete (n)
       @@population.each_with_index{|pol,i|
      if pol.name == n
          @@population.delete_at(i)
      end
     }
    end

end
