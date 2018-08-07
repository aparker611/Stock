class String
  def colorize(color_code)
    #colorizes the text
    "\e[#{color_code}m#{self}\e[0m"
  end

  def red
    #Turns text red
    colorize(31)
  end

  def green
    #Turns text green
    colorize(32)
  end

  def yellow
    #Turns text yellow
    colorize(33)
  end

  def blue
    #Turns text blue
    colorize(34)
  end

  def pink
    #Turns text pink
    colorize(35)
  end

  def lblue
    #Turns text light blue
    colorize(36)
  end

  def bg_red
    #turns background red
    colorize(41)
  end

  def bg_green
    #turns background green
    colorize(42)
  end

  def bg_yellow
    #turns background yellow
    colorize(43)
  end

  def bg_blue
    #turns background blue
    colorize(44)
  end

  def bg_pink
    #turns background pink
    colorize(45)
  end

  def bg_lblue
    #turns background light blue
    colorize(46)
  end

  def bold
    #makes the text bold
    colorize(1)
  end

  def flash
    #makes the text appear and disappear(duh, flash?)
    colorize(5)
  end

  def underline
    #underline's the text
    colorize(4)
  end

  def is_i?
     /\A[-+]?\d+\z/ === self
  end


end
