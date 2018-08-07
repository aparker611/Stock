require_relative "include.rb"

#Script start
class Run
  def initialize
    #welcome message
    puts "Welcome, please wait while we fetch the required files..#{'.'.flash}".bg_yellow
    #load files -> display message acknowledging this |database or spreadsheet?
    #do something in files and stop playing with colours.
    puts "Welcome to main menu".bold
    puts "Please input manufacturer"
    manufacturer = gets.chomp

  @@validate = Validation.new(manufacturer, "string")



  end
end

Run.new
