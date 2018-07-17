# MENU MENU MENU
def menu
ans =''
  puts "What would you like to do?
(C)reate, (L)ist, (U)pdate, (D)elete, or (E)xit"

  ans = gets.chomp.upcase

  case ans
    when "C"
      puts "What would you like to create?\n(P)olitician or (V)oter"
      ans1 = gets.chomp.upcase


      case ans1
        when "P"
         puts "Name?"
         name = gets.chomp.capitalize
         puts "Party?\n(D)emocrat or (R)epublican"
         party = gets.chomp.upcase

         pol = Politican.new(name, party)

        when "V"
         puts "Name?"
         name = gets.chomp.capitalize
         puts "Politics?\n(L)iberal, (C)onservative, (T)ea Party, (S)ocialist, or (N)eutral"
         party = gets.chomp.upcase

         pol = Voter.new(name, party)
      end

    when "L"
      Politican.print_pop
      Voter.print_pop

    when "U"
      puts"Do you want to update a (P)olitician or (V)oter?"
      p_or_v = gets.chomp.capitalize
      while p_or_v != "P" && p_or_v != "V"
        puts"Invalid Input. Try again! :D"
        p_or_v = gets.chomp.capitalize

      end

      puts "Who would you like to update?"
      name = gets.chomp.capitalize
      if p_or_v == "P"
        Politican.update(name)
      elsif p_or_v =="V"
        Voter.update(name)
      end





    when "D"
      puts "Who would you like to delete?"
      name = gets.chomp.capitalize
     Politican.delete(name)
     Voter.delete(name)


   when "E"
     puts "\n\nAHHHHHH CRASHING BOOOOOOO THE ELECTION IS OVER AHHHHHHHHHHHHHHHHH"
     puts "AHHHHHH CRASHING BOOOOOOO THE ELECTION IS OVER AHHHHHHHHHHHHHHHHH"
     puts "-----------------------------------------------------------------"
     puts "ALERT ALERT ALERT ALERT ALERT ALERT ALERT ALERT ALERT ALERT ALERT"
     puts "-----------------------------------------------------------------"
     puts "AHHHHHH CRASHING BOOOOOOO THE ELECTION IS OVER AHHHHHHHHHHHHHHHHH"
     puts "AHHHHHH CRASHING BOOOOOOO THE ELECTION IS OVER AHHHHHHHHHHHHHHHHH\n\n"
     exit

   else
      puts "Incorrect input. Try again"
    end

    puts "\n"

end


# # def wrong
# #   while (ans1 != C && ans1 != L && ans1 != U && ans1 != D && ans1 != E)
# #     puts "Wrong input. Try again"
#       ans1 = gets.chomp.upcase
# #   end
# # end
