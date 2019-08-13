# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Doggo.destroy_all
Post.destroy_all
Category.destroy_all
PostCategory.destroy_all

boii = Doggo.create({
    name: "Boii",
    breed: "Heppy",
    img_url: "https://i.imgur.com/ATO54c5.jpg"
})

nugget = Doggo.create({
    name: "Nugget",
    breed: "Shy",
    img_url: "https://i.imgur.com/cJtAnHK.jpg"
})

gruff = Doggo.create({
    name: "Gruff",
    breed: "Angery",
    img_url: "https://i.imgur.com/t5aSCOU.jpg"
})

post1 = Post.create({
    title: "I love tennis balls!!!",
    content: "TENNIS BALLS ARE SO FUN I LOVE TO CHASE THEM!!",
    doggo_id: boii.id
})
post2 = Post.create({
    title: "CHICKEN NUGGETS ARE A SPECIAL TREAT",
    content: "CHICKEN NUGGETS PLEASE OH MY GOD IT ALMOST TASTES AS GOOD AS MY POOP!",
    doggo_id: nugget.id
})
post3 = Post.create({
    title: "GET THOSE DAMN CATS OUTTA MY YARD",
    content: "They are evil and I will eliminate them.",
    doggo_id: gruff.id
})

cat1 = Category.create({
    name: "Evil Catz"
})

cat2 = Category.create({
    name: "Food & Snek"
})

cat3 = Category.create({
    name: "Toys & Activities"
})

cat4 = Category.create({
    name: "Good Boy Tips"
})

pc1 = PostCategory.create({
    post_id: post1.id,
    category_id: cat3.id
})

pc2 = PostCategory.create({
    post_id: post2.id,
    category_id: cat2.id
})

pc3 = PostCategory.create({
    post_id: post3.id,
    category_id: cat1.id
})

pc4 = PostCategory.create({
    post_id: post1.id,
    category_id: cat4.id
})

pc5 = PostCategory.create({
    post_id: post2.id,
    category_id: cat4.id
})

pc6 = PostCategory.create({
    post_id: post3.id,
    category_id: cat4.id
})




