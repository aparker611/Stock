require_relative "Addons/colorize.rb"
require_relative "Addons/search.rb"

#Script start
class Run
  def initialize
    #welcome message
    puts "Welcome, please wait while we fetch the required files..#{'.'.flash}".bg_yellow
    #load files -> display message acknowledging this |database or spreadsheet?
    search = Search.new
    #do something in files and stop playing with colours.
  end
end

Run.new
