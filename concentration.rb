#Memory concentration Game
# Author: Tawheed Abdul-Raheem
# url: www.tawheedraheem.com
class BoardGame
	# This method method populates the concentration game board
	# populating and returning a 5*4 two-dimensional array
	# Initializes all the values to 0, then randomly populate
	# then randomly populate numbers from 1-10 in different cells
	# making sure that each number is used twice
	def populate
		# populate the array, with 0
		board = []
		for i in (1..4);
			board << [0,0,0,0]
		end
		#print board[3].size

		# loop through each of the rows in the array
		for x in (0..board.size-1);
			for j in (0..board[x].size-1);
				random_number = rand(10)
				
				# check to see if the number has already been used
				if board.flatten.include?(random_number)
					board[x][j] = random_number + 1
				else
					board[x][j] = random_number
				end
			end
		end
		
		return board
	end

	# Select card at position (x,y). Return a card object with
	# value for its x & y location cordinates. (i.e., [row][column])
	def select_card(x,y)
		card = {}
		card["x"] = x
		card["y"] = y
		selection = self.populate
		return card
	end


	# Given two card objects (like those created with select_card()
	# method), add a 5X4 game board matrix of 0-9 numbers like the  one
	# from the populate method. check if the values of the two cards are
	# the same. Use [x][y] coordinates from each card object (selected
	# card1 and selectedcard2) to refrence the matrix values at the 
	# coordinates for each. Compare them for a possible match. If they
	# match return true. Otherwise return false
	# Also make sure that selectedcard1 and selectedCard2 are not the same
	def isMatch(selectedCard1, selectedCard2, matrix)
		pos1 = selectedCard1['x']
		pos2 = selectedCard1['y']
		pos3 = selectedCard2['x']		
		pos4 = selectedCard2['y']		
		print matrix
		puts "Position1 has the value #{matrix[pos1][pos2]} and Position2 has the value #{matrix[pos3][pos4]}"
		if (matrix[pos1][pos2] == matrix[pos3][pos4])
			puts "Match Found"
			return true
		else
			puts "No Match"
			return false
		end
	end
end

game = BoardGame.new
card1 = game.select_card(0,0)
card2 = game.select_card(2,3)
matrix = game.populate
game.isMatch(card1,card2,matrix)
