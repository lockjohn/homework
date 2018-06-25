class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @seq = []
    @game_over = false
    @sequence_length = 1
  end

  def play
    until game_over
      take_turn
      sleep 1
      system "clear"
    end
    game_over_message
    reset_game
  end

  def take_turn
    show_sequence
    sleep 2
    system "clear"
    require_sequence
    round_success_message unless game_over
    self.sequence_length += 1
  end

  def show_sequence
    add_random_color
    print "The sequence is #{seq.join(' ')}"
  end

  def require_sequence
    puts "Now, enter the sequence on the same line, ex: red blue green"
    player_sequence = gets.chomp
    @game_over = true if player_sequence.split(" ") != @seq
  end

  def add_random_color
    seq << COLORS.sample
  end

  def round_success_message
    puts "Great job, next round: #{sequence_length+1}"
  end

  def game_over_message
    print "Sorry, you lose. The sequence was #{seq}\n"
  end

  def reset_game
    @seq = []
    @game_over = false
    @sequence_length = 1
  end
end

if __FILE__ == $PROGRAM_NAME
  Simon.new.play
end
