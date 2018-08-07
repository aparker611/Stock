require_relative "colorize.rb"

class TestFile
  def initialize
    puts "****RUNNING TEST FILE****".yellow
    input = gets.chomp

    validate_input(input, "num")
  end

  def validate_input(input, type)
    #validating type of inputs based on strings and integers
    #case statement to detect if the input is string or integer
   case type.downcase
   when "string"
     #using the check_special method, we will be making sure that there are no special characters from this list
     # ?<>',?[]}{=-)(*&^%$#`~{}@
     # if check_special?(input) contains a special character it returns true if not it returns false
     if check_special?(input) == true
       puts "ERROR: Input contains special character".bg_red
       #rerun menu code
     else
       puts "passed".bg_green
     end

   when "num"
     if check_special?(input) == true
       puts "ERROR: Input contains special character".bg_red
     else
       puts "passed".bg_green
     end
   end
  end

  def check_special?(string)
#In the future edepending on how the script is built, we may be able to run the menu directly from here -
#or return to the above code
    special = "?<>',?[]}{=-)(*&^%$#`~{}@"
    regex = /[#{special.gsub(/./){|char| "\\#{char}"}}]/
    if string =~ regex
      return true
    else
      return false
    end
  end
end

TestFile.new
