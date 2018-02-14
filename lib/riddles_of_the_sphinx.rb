class Riddles
  def initialize
    @riddle_hash = {"What has roots as nobody sees, Is taller than trees, Up, up it goes, And yet never grows?" => "mountains", "Why did the Vampire get fired from the Blood Bank?" => "drinking", "What's it like to be kissed by a vampire?" => "pain in the neck", "This can be found on a golf course, But it is not a blade of grass, Instead it’s something that’s grainy, And is found in an hourglass" => "sand", }
    # @current_riddle = @riddle_hash.keys[(rand(0..3))]
    # @answer = @riddle_hash.fetch(@current_riddle)
  end


  def answer position
    @riddle_hash.values[(position)]
  end

  def current_riddle position
   @riddle_hash.keys[(position)]

  end

  def riddle_check(guess)
    if guess == @answer
      return true
    end
    false
  end
end

# New_Riddle = Riddles.new()
#
# puts New_Riddle.riddle()
