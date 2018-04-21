class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    until game_over
      take_turn
    end
    game_over_message
    reset_game
  end

  def take_turn
    show_sequence
    require_sequence
    round_success_message if game_over == false
    @sequence_length += 1
  end

  def show_sequence
    add_random_color
    color_sequence = @seq.dup
    until color_sequence.length == 0
      puts color_sequence.shift
      sleep(1)
      system("clear")
    end
  end

  def require_sequence
    color_sequence = @seq.dup
    until @game_over || color_sequence.empty?
      puts "What's the next color in the sequence?"
      input = gets.chomp
      @game_over = true if input != color_sequence.shift
    end
  end

  def add_random_color
    random_color = COLORS.sample
    @seq << random_color
  end

  def round_success_message
    puts "Congrats, you beat the round!"
  end

  def game_over_message
    puts "Sorry, that was wrong. Better luck next time!"
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end
