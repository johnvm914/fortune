class ExercisesController < ApplicationController

  def fortune
    fortunes = ["You will live a long life!", "You will go on a great vacation!", "You will meet your soulmate!"]
    @fortune = fortunes.sample
    render "fortune.html.erb"
  end

  def numbers
    @random_numbers = []
    6.times do
      @random_numbers <<  rand(1...60)
    end
    @numbers = @random_numbers.join(" ")
    render "numbers.html.erb"
  end

  def lyrics
    x = 99
    bottles = x.to_s
    @lyrics = ""
    while x >= 2
      @lyrics = @lyrics + "#{bottles} bottles of beer on the wall, #{bottles} bottles of beer. Take one down and pass it around"
      x -= 1
    end
    render "lyrics.html.erb"
  end

end
