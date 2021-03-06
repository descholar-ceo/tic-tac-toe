require_relative '../lib/board.rb'
require_relative '../lib/game.rb'

describe Board do
  let(:board) { Board.new }

  describe '#valid_piece_placement?' do
    it 'should return true if piece placement is valid' do
      expect(board.valid_piece_placement?(4)).to be(true)
    end
  end

  describe '#diagonal_wins' do
    it 'should return true if player wins diagonally' do
      board.board = %w[Y 2 3 4 Y 6 7 8 Y]
      expect(board.diagonal_wins?('Y')).to be(true)
    end
  end

  describe '#hori_wins' do
    it 'should return true if player wins horizontally' do
      board.board = %w[Y Y Y 4 5 6 7 8 9]
      expect(board.hori_wins?('Y')).to be(true)
    end
  end

  describe '#vert_wins' do
    it 'should return true if player wins vertically' do
      board.board = %w[Y 2 3 Y 5 6 Y 8 9]
      expect(board.vert_wins?('Y')).to be(true)
    end
  end

  describe '#win_combo' do
    it 'should return true if player wins vertically' do
      board.board = %w[Y 2 3 Y 5 6 Y 8 9]
      expect(board.win_combo?('Y')).to be(true)
    end
  end

  describe '#full?' do
    it 'should return true when full' do
      board.positions = []
      expect(board.full?).to be(true)
    end
  end
end
