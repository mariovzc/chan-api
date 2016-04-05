p "seed"
Board.where(name: 'b', description: "hi i am a board description").first_or_create
Board.where(name: 'x', description: "hi i am a board description").first_or_create
Board.where(name: 'pol', description: "hi i am a board description").first_or_create
p "seed of post"
Post.create(title: "hello", user_ip: "127.0.0.0", board_id: 1, body: "I am the body of the post")
Post.create(title: "hello2", user_ip: "127.0.0.0", board_id: 1, body: "I am the body of the post")
Post.create(title: "hello3", user_ip: "127.0.0.0", board_id: 1, body: "I am the body of the post")
Post.create(title: "hello4", user_ip: "127.0.0.0", board_id: 1, body: "I am the body of the post")
Post.create(title: "hello5", user_ip: "127.0.0.0", board_id: 1, body: "I am the body of the post")
p "end of the seed"
