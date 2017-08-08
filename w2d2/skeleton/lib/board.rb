class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = Array.new(14) { [] }
    place_stones
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    @cups.each_index do |i|
      unless i == 6 || i == 13
        @cups[i] += Array.new(4) { :stone }
      end
    end
  end

  def valid_move?(start_pos)
    raise "Invalid starting cup" unless start_pos.between?(1,12)
    raise "Invalid starting cup" if @cups[start_pos].empty?
  end

  def make_move(start_pos, current_player_name)
    # pick up stones, empty starting cup
    stones = @cups[start_pos]
    @cups[start_pos] = []

    distr_index = start_pos
    until stones.empty?
      distr_index += 1
      distr_index = 0 if distr_index > 13 #wrap back around

      # distribute stones into cups
      # only player1 puts stone in cup 13, player2 puts stone in cup 6
      if distr_index == 6
        @cups[6] << stones.pop if current_player_name == @name1
      elsif distr_index == 13
        @cups[13] << stones.pop if current_player_name == @name2
      else
        @cups[distr_index] << stones.pop
      end
    end

    render
    next_turn(distr_index)    
  end

  def next_turn(ending_cup_idx)
    # helper method to determine what #make_move returns
    if @cups[ending_cup_idx].length == 1
      # ends in empty cup, switch turns
      :switch
    elsif [ending_cup_idx] == 6 || [ending_cup_idx] == 13
      # ends in store, prompt play again
      :prompt
    else
      # ends on cup with stones, start again on this start_pos
      ending_cup_idx
    end
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
