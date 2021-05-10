# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "SEEDING HAS BEGUN"

PictureCollection.destroy_all
Picture.destroy_all
Collection.destroy_all
User.destroy_all
PictureCollection.reset_pk_sequence
Picture.reset_pk_sequence
Collection.reset_pk_sequence
User.reset_pk_sequence

user1 = User.create(email: "hvelas93@gmail.com", name: "Hank Velasquez")
user2 = User.create(email: "dijali@gmail.com", name: "Dian Meeoww")
user3 = User.create(email: "thps2@shredding.com", name: "Tony Hawk")
user4 = User.create(email: "st00pkid@heyarnold.com", name: "Stoop Kid")
user5 = User.create(email: "imanginelo@renaissance.com", name: "Michael Angelo")

collection1 = Collection.create(name: "Henry's Collection", description: "Lucid Dreams", user_id:1)
collection2 = Collection.create(name: "Diana's Collection", description: "D-Banana Chronicles", user_id:2)

existing_users = User.all

existing_users.each do |user|
    Collection.create(name: "#{user.name}'s Masterpiece", description: "#{Faker::Lorem.sentence(word_count: 4)}", user_id: user.id )
    Collection.create(name: "#{user.name}'s Second Masterpiece", description: "#{Faker::Lorem.sentence(word_count: 4)}", user_id: user.id )
end

#9images
test_image_urls = ["https://media.timeout.com/images/105590782/1372/772/image.jpg","https://image.jimcdn.com/app/cms/image/transf/none/path/sa6549607c78f5c11/image/i6b743a5bd2529b6a/version/1500387064/unmissable-paintings-in-europe-la-clairvoyance-by-magritte.jpg","https://image.jimcdn.com/app/cms/image/transf/none/path/sa6549607c78f5c11/image/ib8d40ed65f35ce8b/version/1500388745/unmissable-paintings-in-europe-die-ideale-by-piet-mondrian.jpg","https://image.jimcdn.com/app/cms/image/transf/none/path/sa6549607c78f5c11/image/ie8120f8044f1cb95/version/1500387747/unmissable-paintings-in-europe-guernica-picasso.jpg","https://image.jimcdn.com/app/cms/image/transf/none/path/sa6549607c78f5c11/image/i2659f8a51ca81e3b/version/1500390188/unmissable-paintings-in-europe-bleu-yves-klein.jpg","https://image.jimcdn.com/app/cms/image/transf/none/path/sa6549607c78f5c11/image/i2a156671e374a961/version/1500382804/unmissable-paintings-in-europe-impression-soleil-levant-monet.jpg","https://image.jimcdn.com/app/cms/image/transf/none/path/sa6549607c78f5c11/image/iea0f9dc06abd4d9d/version/1500388125/unmissable-paintings-in-europe-la-nascita-di-venere-by-boticelli.jpg","https://image.jimcdn.com/app/cms/image/transf/none/path/sa6549607c78f5c11/image/iaba535b136256f1e/version/1500389082/unmissable-paintings-in-europe-the-creation-of-adam-by-michelangelo.jpg","https://image.jimcdn.com/app/cms/image/transf/none/path/sa6549607c78f5c11/image/i1836d9b29554a4d6/version/1500387016/unmissable-paintings-in-europe-the-return-by-magritte.jpg"]

count = 1
test_image_urls.each do |pic|
    Picture.create(name: "Picture #{count}", description: "#{Faker::Lorem.sentence(word_count: 3)}", test_image: pic)
    count += 1
end

15.times do
    PictureCollection.create(collection_id: (1..12).to_a.sample , picture_id:(1..9).to_a.sample)
end

puts "🖌️🎨 SUCCESSFULLY SEEDED 🎨🖌️ "


