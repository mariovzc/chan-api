p "seed"
Board.where(name: 'b').first_or_create
Board.where(name: 'x').first_or_create
Board.where(name: 'pol').first_or_create
p "end of the seed"
