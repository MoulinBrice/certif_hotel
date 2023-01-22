user_1 = User.new(email: "test@test.com", password: "123456")
user_1.save!
puts "Utilisateur créé"

Hotel.destroy_all
hotel_1 = Hotel.new(name: "Hotel1", address: "St Marie")
hotel_1.save!
hotel_2 = Hotel.new(name: "Hotel1", address: "St Marie")
hotel_2.save!
puts "hotel créé"

Room.destroy_all
room_1 = Room.new(price_per_night: 150, capacity: 2, hotel_id: hotel_1.id, photo: "https://images.unsplash.com/photo-1540518614846-7eded433c457?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1757&q=80")
room_1.save!
room_2 = Room.new(price_per_night: 250, capacity: 3, hotel_id: hotel_1.id, photo: "https://images.unsplash.com/photo-1578683010236-d716f9a3f461?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80")
room_2.save!
room_3 = Room.new(price_per_night: 300, capacity: 2, hotel_id: hotel_2.id, photo: "https://images.unsplash.com/photo-1562438668-bcf0ca6578f0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2660&q=80")
room_3.save!
room_4 = Room.new(price_per_night: 400, capacity: 1, hotel_id: hotel_2.id, photo: "https://images.unsplash.com/photo-1633944095397-878622ebc01c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1771&q=80")
room_4.save!
room_5 = Room.new(price_per_night: 500, capacity: 3, hotel_id: hotel_2.id, photo: "https://images.unsplash.com/photo-1615874959474-d609969a20ed?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1180&q=80")
room_5.save!
puts "rooms créées"
