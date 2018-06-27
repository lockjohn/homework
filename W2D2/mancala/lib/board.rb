require 'byebug'
class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @player1 = name1
    @player2 = name2
    @cups = Array.new(14){ Array.new}
    place_stones
  end

  # def [](pos)
  #   x,cup = pos
  #   @cups[x][cup]
  # end
  #
  # def []=(pos,value)
  #   x,cup = pos
  #   @cups[x][cup] = value
  # end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    #non-store: 0-5, store, 7-13, store
    cups.each_index do |i|
      cups[i] = :stone,:stone,:stone,:stone  if i < 6 || i.between?(7,12)
    end
  end

  def valid_move?(start_pos)
    if start_pos < 0 || start_pos > 13
      raise "Invalid starting cup"
    end
    if @cups[start_pos].empty?
      raise "Starting cup is empty"
    end
  end

  def make_move(start_pos, current_player_name)
    valid_move?(start_pos) #either raises error or just passes through
    # debugger
    current_player_name == @player1 ? skip = 13 : skip = 6
    stones = cups[start_pos].length
    @cups[start_pos] = [] #empties
    i = 1
      stones.times do |s| #s starts at zero
        pos = (start_pos + i) % 14
        if pos == skip
           @cups[(pos+1)%14]  << :stone
           i+=1
        else
          @cups[pos] << :stone
        end
        i+=1
      end
    p cups
    ending_cup_idx = (start_pos + stones) % 14
    render
    return :switch if cups[ending_cup_idx].length == 1
    return :prompt if cups[ending_cup_idx] == skip
    next_turn(ending_cup_idx) #should only get here if
  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
  end

  def winner
  end
end
