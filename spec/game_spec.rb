require './lib/classes.rb'
  	
RSpec.describe Check_win do
	describe "#check win" do
		win= Check_win.new
		it "it returns true if there is a victory" do 
			board=["-","-","-","o","o","o","-","-","-"]
			expect(win.check_win(board)).to eql(true)
		end
		it "it returns true if there is a victory" do 
			board=["-","-","-","-","-","-","o","o","o"]
			expect(win.check_win(board)).to eql(true)
		end
		it "it returns true if there is a victory" do 
			board=["o","-","-","o","-","-","o","-","-"]
			expect(win.check_win(board)).to eql(true)
		end
		it "it returns true if there is a victory" do 
			board=["-","o","-","-","o","-","-","o","-"]
			expect(win.check_win(board)).to eql(true)
		end
		it "it returns true if there is a victory" do 
			board=["-","-","o","-","-","o","-","-","o"]
			expect(win.check_win(board)).to eql(true)
		end
		it "it returns true if there is a victory" do 
			board=["o","-","-","-","o","-","-","-","o"]
			expect(win.check_win(board)).to eql(true)
		end
		it "it returns true if there is a victory" do 
			board=["-","-","o","-","o","-","o","-","-"]
			expect(win.check_win(board)).to eql(true)
		end
		
		it "it returns true if there is a victory" do 
			board=["-","-","-","x","x","x","-","-","-"]
			expect(win.check_win(board)).to eql(true)
		end
		it "it returns true if there is a victory" do 
			board=["-","-","-","-","-","-","x","x","x"]
			expect(win.check_win(board)).to eql(true)
		end
		it "it returns true if there is a victory" do 
			board=["x","-","-","x","-","-","x","-","-"]
			expect(win.check_win(board)).to eql(true)
		end
		it "it returns true if there is a victory" do 
			board=["-","x","-","-","x","-","-","x","-"]
			expect(win.check_win(board)).to eql(true)
		end
		it "it returns true if there is a victory" do 
			board=["-","-","x","-","-","x","-","-","x"]
			expect(win.check_win(board)).to eql(true)
		end
		it "it returns true if there is a victory" do 
			board=["x","-","-","-","x","-","-","-","x"]
			expect(win.check_win(board)).to eql(true)
		end
		it "it returns true if there is a victory" do 
			board=["-","-","x","-","x","-","x","-","-"]
			expect(win.check_win(board)).to eql(true)
		end
		it "it returns false if there is not victory" do 
			board=["-","-","-","-","-","-","-","-","-"]
			expect(win.check_win(board)).to eql(false)
		end
	end

end

describe "#check draw" do
	draw=Check_draw.new
	it "it returns true if the game is a draw" do 
		board=["x","x","o","o","o","x","x","x","o"]
		expect(draw.check_draw(board)).to eql(true)
	end
	it "it returns false if the game is not a draw" do 
		board=["x","x","x","o","o","x","x","x","-"]
		expect(draw.check_draw(board)).not_to eql(true)
	end
end

describe "#change_player" do
	player=Player.new
	it "it tests that player x  has changed to player o" do 
		expect(player.change_player).to eql("o")
	end
	it "it tests that player o  has changed to player x" do 
		expect(player.change_player).to eql("x")
	end
end

describe "#board" do 
	it "it shows the default board" do 
		b=Board.new
		expect(b.show_board).to eql(["-", "-", "-", "-", "-", "-", "-", "-", "-"])
	end
	it "it shows the board passed as parameter" do 
		b=Board.new
		expect(b.show_board(["x", "x", "o", "-", "-", "-", "-", "-", "-"])).to eql(["x", "x", "o", "-", "-", "-", "-", "-", "-"])
	end
end

