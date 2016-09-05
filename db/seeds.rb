# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
TextArea.delete_all
Photo.delete_all
Story.delete_all
User.delete_all

User.create!(
  username: "composure",
  password: "password",
  email: "guest@gmail.com",
  avatar_url: "https://secure.gravatar.com/avatar/d9fb812b41af97e6310fae5bcaf8c460?s=150&d=https://exposure-media.s3.amazonaws.com/static/exposure-logo-mark-avatar.png",
  profile_title: "Lobster and Swan",
  profile_description: "Welcome to Lobster & Swan. The place where I like to share all the things that warm my heart, from favourite recipes and home decor ideas to daily discoveries and inspirations.",
  website_url: "http://www.lobsterandswan.com"
)

User.create!(
  username: "guest",
  password: "password",
  email: "cook@gmail.com",
  avatar_url: "http://res.cloudinary.com/dw8oe4f1v/image/upload/v1472961671/tfcgtxj7hhlrnuho0z5r.gif",
  profile_title: "What to Cook",
  profile_description: "What To Cook is a father daughter (Andrew and Sophie) team based in Sydney, Australia.",
  website_url: "https://www.whattocook.com.au/"
)

Story.create!(
  title: "Battered Fish Tacos",
  description: "The ideal recipe for Friday nights with beers (&/or margaritas) and a bunch of friends! So fun!",
  user_id: 2,
  cover_image_id: 1
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2016/02/Fish-Tacos-What-To-Cook-44-1400x784.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2016/02/Fish-Tacos-What-To-Cook-44-1400x784.jpg",
  position: 1,
  group_position: 1,
  full_width: true,
  story_id: 1
)

TextArea.create!(
  title: "",
  body: "Whenever I hear the words 'fish tacos' I instantly start seriously craving them! In my opinion, fish tacos are the holy grail of the taco world. They’re fun, fresh & incredibly delicious…so you can’t get anything better really.",
  position: 2,
  story_id: 1
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2016/02/Fish-Tacos-What-To-Cook-53-503x682.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2016/02/Fish-Tacos-What-To-Cook-53-503x682.jpg",
  position: 3,
  group_position: 3,
  full_width: false,
  story_id: 1
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2016/02/Fish-Tacos-What-To-Cook-68-503x682.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2016/02/Fish-Tacos-What-To-Cook-68-503x682.jpg",
  position: 3,
  group_position: 3,
  full_width: false,
  story_id: 1
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2016/02/Fish-Tacos-What-To-Cook-82-503x682.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2016/02/Fish-Tacos-What-To-Cook-82-503x682.jpg",
  position: 3,
  group_position: 3,
  full_width: false,
  story_id: 1
)

TextArea.create!(
  title: "",
  body: "Especially on a Friday night, out on the deck with a bunch of friends or your family. Just add some beers, margaritas, evening sunshine, a cool breeze & you have the at-home dining situation that dreams are made of! This is actually making me want to cancel tonights plans to do just that haha!",
  position: 4,
  story_id: 1
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2016/02/Fish-Tacos-What-To-Cook-61-683x683.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2016/02/Fish-Tacos-What-To-Cook-61-683x683.jpg",
  position: 5,
  group_position: 2,
  full_width: false,
  story_id: 1
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2016/02/Fish-Tacos-What-To-Cook-9-683x683.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2016/02/Fish-Tacos-What-To-Cook-9-683x683.jpg",
  position: 6,
  group_position: 2,
  full_width: false,
  story_id: 1
)

TextArea.create!(
  title: "",
  body: "For the accompaniments that go with the fish, we always tend to do the same thing – pico de gallo & smashed avocado. The reason being….it’s just too damn good! However, it’s also so much fun to change it up and add all your favourite Mexican trimmings. I sometimes like to look through the menus of my favourite Mexican restaurants & get inspired to see what creative combinations they have come up with. All you absolutely need is a lot of fresh lime & coriander and it will be scrumptious! Enjoy!",
  position: 7,
  story_id: 1
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2016/02/Fish-Tacos-What-To-Cook-10-324x324.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2016/02/Fish-Tacos-What-To-Cook-10-324x324.jpg",
  position: 8,
  group_position: 4,
  full_width: false,
  story_id: 1
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2016/02/Fish-Tacos-What-To-Cook-13-324x324.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2016/02/Fish-Tacos-What-To-Cook-13-324x324.jpg",
  position: 8,
  group_position: 4,
  full_width: false,
  story_id: 1
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2016/02/Fish-Tacos-What-To-Cook-80-324x324.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2016/02/Fish-Tacos-What-To-Cook-80-324x324.jpg",
  position: 8,
  group_position: 4,
  full_width: false,
  story_id: 1
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2016/02/IMG_0853-324x324.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2016/02/IMG_0853-324x324.jpg",
  position: 8,
  group_position: 4,
  full_width: false,
  story_id: 1
)

TextArea.create!(
  title: "",
  body: "ingredients\n6oog firm white fish, cut into small fillets\n\n1 x 150g packet tempura batter mix\n\n1/2 cup natural yogurt\n2 cups iceberg lettuce, shredded\n1 cup red cabbage, shredded\n\nPico De Gallo\n\nSmashed Avocado\n1 avocado, chopped\n30ml lime juice\nPinch of sea salt\n\nTo serve;\nLimes\nCoriander leaves\nHot sauce",
  position: 9,
  story_id: 1
)

TextArea.create!(
  title: "",
  body: "method\n\n1. Start by making the pico de gallo then set aside. For the smashed avocado, combine avo + lime juice + salt in a bowl and combine. Set aside.\n\n2. Pre-heat the deep fryer to 180c. Prepare the batter mix, following the packet instructions. Add the fish to the batter and coat well. Carefully add the fish to the deep fryer and cook in batches until golden. Remove & transfer from the deep fryer to a plate.\n\n3. Meanwhile warm the tortillas. Now it’s time to build the tacos; cover the tortilla with yogurt and lettuce. Add the fish then the pico de gallo, red cabbage and smashed avocado. Serve the tacos with limes and coriander leaves.",
  position: 10,
  story_id: 1
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2016/02/Fish-Tacos-What-To-Cook-49-1400x683.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2016/02/Fish-Tacos-What-To-Cook-49-1400x683.jpg",
  position: 11,
  group_position: 1,
  full_width: true,
  story_id: 1
)
# end

Story.create!(
  title: "Tropical Breakfast Bar",
  description: "Fresh, vibrant, happy & delicious! Entertain your friends with a tropical inspired breakfast bar!",
  user_id: 2,
  cover_image_id: 12
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2016/02/Tropical-Breakfast-Bar-What-To-Cook-303-1400x683.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2016/02/Tropical-Breakfast-Bar-What-To-Cook-303-1400x683.jpg",
  position: 1,
  group_position: 1,
  full_width: false,
  story_id: 2
)

TextArea.create!(
  title: "",
  body: "If only every single day started with a breakfast as fresh & vibrant as this one. With the oppressive summer heat we’ve recently been having, I’ve been so inspired by everything tropical; from the fruits, to the colours, the smells & the ocean. Everything about it just screams ‘paradise‘!",
  position: 2,
  story_id: 2
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2016/02/Tropical-Breakfast-Bar-What-To-Cook-205-503x682.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2016/02/Tropical-Breakfast-Bar-What-To-Cook-205-503x632.jpg",
  position: 3,
  group_position: 3,
  full_width: false,
  story_id: 2
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2016/02/Tropical-Breakfast-Bar-What-To-Cook-39-503x682.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2016/02/Tropical-Breakfast-Bar-What-To-Cook-39-503x682.jpg",
  position: 3,
  group_position: 3,
  full_width: false,
  story_id: 2
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2016/02/Tropical-Breakfast-Bar-What-To-Cook-119-503x682.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2016/02/Tropical-Breakfast-Bar-What-To-Cook-119-503x682.jpg",
  position: 3,
  group_position: 3,
  full_width: false,
  story_id: 2
)

TextArea.create!(
  title: "",
  body: "So instead of running away on a tropical adventure, I was really inspired to bring the tropics to our backyard & have a poolside breakfast bar! It was so much fun & the most inspiring way to start a fresh new summers day.",
  position: 4,
  story_id: 2
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2016/02/Tropical-Breakfast-Bar-What-To-Cook-226-683x683.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2016/02/Tropical-Breakfast-Bar-What-To-Cook-226-683x683.jpg",
  position: 5,
  group_position: 2,
  full_width: false,
  story_id: 2
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2016/02/Tropical-Breakfast-Bar-What-To-Cook-68-683x683.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2016/02/Tropical-Breakfast-Bar-What-To-Cook-68-683x683.jpg",
  position: 5,
  group_position: 2,
  full_width: false,
  story_id: 2
)

TextArea.create!(
  title: "",
  body: "I had my super talented Tanya from Oh Flora, do the flowers for me and had Leah from My Creative Space do some custom tropical inspired watercolour illustrations & hand lettering to really take it up the next level – she was absolutely amazing to work with! Plus, West Elm is one of my all-time favourite homeware stores and I really wanted to incorporate them into the scene too, so a lot of the bowls, plates & coasters are from them! It looked like the most crazy colourful & vibrant set-up and I just couldn’t stop taking photos.",
  position: 6,
  story_id: 2
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2016/02/Tropical-Breakfast-Bar-What-To-Cook-116-683x683.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2016/02/Tropical-Breakfast-Bar-What-To-Cook-116-683x673.jpg",
  position: 7,
  group_position: 2,
  full_width: false,
  story_id: 2
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2016/02/Tropical-Breakfast-Bar-What-To-Cook-83-683x683.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2016/02/Tropical-Breakfast-Bar-What-To-Cook-83-683x683.jpg",
  position: 7,
  group_position: 2,
  full_width: false,
  story_id: 2
)

TextArea.create!(
  title: "",
  body: "For the actual food part of the morning, I had; watermelon, pineapple, coconuts, dragon fruit, passion fruits, kiwi fruits, peaches, plums, papaya, grapefruit, mangoes, strawberries, pomegranate, & some really interesting mini orange fruits that I can now no longer remember the name of, but were very refreshing. It was mainly all about the fruit, but it was nice to have a little muesli in there too! Next time I’m definitely planning to have acai in the mix too & perhaps some green smoothies, just to make it super “instagram” haha!",
  position: 8,
  story_id: 2
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2016/02/Tropical-Breakfast-Bar-What-To-Cook-296-1400x683.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2016/02/Tropical-Breakfast-Bar-What-To-Cook-296-1400x683.jpg",
  position: 9,
  group_position: 1,
  full_width: true,
  story_id: 2
)
# end

Story.create!(
  title: "Yarra Valley Travel Guide",
  description: "The most magical region of Victoria!",
  user_id: 2,
  cover_image_id: 31
)

TextArea.create!(
  title: "",
  body: "The Yarra Valley is one of a kind! It’s not often that you come across a region that you feel an instant warmness as soon as you arrive. We all noticed it straight away – every single person, business or farmer that we met were so incredibly lovely and genuinely wanted you to love every second of being in the area that they call home.",
  position: 1,
  story_id: 3
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2015/10/Yarra-Valley-Victoria-51-503x682.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2015/10/Yarra-Valley-Victoria-51-503x682.jpg",
  position: 2,
  group_position: 3,
  full_width: false,
  story_id: 3
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2015/10/Yarra-Valley-Victoria-476-503x682.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2015/10/Yarra-Valley-Victoria-476-503x682.jpg",
  position: 2,
  group_position: 3,
  full_width: false,
  story_id: 3
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2015/10/Yarra-Valley-Victoria-158-503x682.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2015/10/Yarra-Valley-Victoria-158-503x682.jpg",
  position: 2,
  group_position: 3,
  full_width: false,
  story_id: 3
)

TextArea.create!(
  title: "",
  body: "With it being less than an hours drive away from Melbourne I was expecting it to have a city feel to the rural landscape. Instead, it feels like a country town miles and miles away from the city, yet still with everything you could need. Win-win!",
  position: 3,
  story_id: 3
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2015/10/Yarra-Valley-Victoria-364-683x683.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2015/10/Yarra-Valley-Victoria-364-683x683.jpg",
  position: 4,
  group_position: 2,
  full_width: false,
  story_id: 3
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2015/10/Yarra-Valley-Victoria-232-683x683.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2015/10/Yarra-Valley-Victoria-232-683x683.jpg",
  position: 4,
  group_position: 2,
  full_width: false,
  story_id: 3
)

TextArea.create!(
  title: "",
  body: "We stayed in the region for 2 nights and felt like we could have been there for a whole week and not even have the chance to do everything we wanted to. Karen, from Botanica Editions, was an incredible help in putting together a cohesive list of the regions highlights. See below for our guide to the incredible Yarra Valley.",
  position: 5,
  story_id: 3
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2015/10/Yarra-Valley-Victoria-244-324x324.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2015/10/Yarra-Valley-Victoria-244-324x324.jpg",
  position: 6,
  group_position: 4,
  full_width: false,
  story_id: 3
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2015/10/Yarra-Valley-Victoria-176-324x324.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2015/10/Yarra-Valley-Victoria-176-324x324.jpg",
  position: 6,
  group_position: 4,
  full_width: false,
  story_id: 3
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2015/10/Yarra-Valley-Victoria-215-324x324.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2015/10/Yarra-Valley-Victoria-215-324x324.jpg",
  position: 6,
  group_position: 4,
  full_width: false,
  story_id: 3
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2015/10/Yarra-Valley-Victoria-463-324x324.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2015/10/Yarra-Valley-Victoria-463-324x324.jpg",
  position: 6,
  group_position: 4,
  full_width: false,
  story_id: 3
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2015/10/Yarra-Valley-Victoria-9-1400x683.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2015/10/Yarra-Valley-Victoria-9-1400x683.jpg",
  position: 7,
  group_position: 1,
  full_width: false,
  story_id: 3
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2015/10/Yarra-Valley-Victoria-228-1400x683.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2015/10/Yarra-Valley-Victoria-228-1400x683.jpg",
  position: 8,
  group_position: 1,
  full_width: true,
  story_id: 3
)
#end

Story.create!(
  title: "Beef Burrito Bowl",
  description: "A bowl of pure Mexican deliciousness. Have fun with this one & get creative with the toppings!",
  user_id: 2,
  cover_image_id: 32
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2016/02/Beef-Burrito-Bowl-What-To-Cook-86-1400x784.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2016/02/Beef-Burrito-Bowl-What-To-Cook-86-1400x784.jpg",
  position: 1,
  group_position: 1,
  full_width: true,
  story_id: 4
)

TextArea.create!(
  title: "",
  body: "I don’t know if you can get anything more comforting while also being deliciously fresh at the same time. That’s one of my favourite things about Mexican food; while you’re eating it, it feels like you’re getting a big comforting hug from your mum with the flavours still being incredibly fresh – you can really taste everything you’ve put into the recipe.",
  position: 2,
  story_id: 4
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2016/02/Beef-Burrito-Bowl-What-To-Cook-42-683x683.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2016/02/Beef-Burrito-Bowl-What-To-Cook-42-683x683.jpg",
  position: 3,
  group_position: 2,
  full_width: false,
  story_id: 4
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2016/02/Beef-Burrito-Bowl-What-To-Cook-26-683x683.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2016/02/Beef-Burrito-Bowl-What-To-Cook-26-683x683.jpg",
  position: 3,
  group_position: 2,
  full_width: false,
  story_id: 4
)

TextArea.create!(
  title: "",
  body: "A super great thing about making burrito bowls is that there’s only a little real cooking involved. The rest of it comes down to the combination of the toppings, and it’s here where you can get really crazy & creative. It was utterly delicious with some pico de gallo, guacamole, cheese, coriander, jalapeños & a couple Doritos & some lime on the side.\nIt’s currently Monday evening here and we are having these burrito bowls for dinner tonight after watching the Super Bowl today. It’s been a bit of a sombre mood around the house this afternoon as unfortunately the Carolina Panthers (the team George & I go for) lost against the Denver Broncos! These burrito bowls will surely cheer us up though! I also reckon that these burrito bowls would be the perfect Friday night at-home dinner with friends! You can pre-prepare all the toppings and just cook up the mince (or chicken – these would also be super delicious with some spicy chicken) when guests arrive. Serve them up with some American or Mexican beers and you have the ideal Friday night….in my book anyway :) Enjoy!",
  position: 4,
  story_id: 4
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2016/02/Beef-Burrito-Bowl-What-To-Cook-90-1400x683.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2016/02/Beef-Burrito-Bowl-What-To-Cook-90-1400x683.jpg",
  position: 5,
  group_position: 1,
  full_width: false,
  story_id: 4
)

TextArea.create!(
  title: "",
  body: "1. Start by preparing the rice (following the packet instructions) and then the Pico de Gallo & guacamole (we made a tomato-less & onion-less version seeing as we have the pico de gallo as well), then set aside. Combine all the spices together in a bowl & set aside.",
  position: 6,
  story_id: 4
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2016/02/Beef-Burrito-Bowl-What-To-Cook-77-324x324.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2016/02/Beef-Burrito-Bowl-What-To-Cook-77-324x324.jpg",
  position: 7,
  group_position: 4,
  full_width: false,
  story_id: 4
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2016/02/Beef-Burrito-Bowl-What-To-Cook-61-324x324.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2016/02/Beef-Burrito-Bowl-What-To-Cook-61-324x324.jpg",
  position: 7,
  group_position: 4,
  full_width: false,
  story_id: 4
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2016/02/Beef-Burrito-Bowl-What-To-Cook-99-324x324.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2016/02/Beef-Burrito-Bowl-What-To-Cook-99-324x324.jpg",
  position: 7,
  group_position: 4,
  full_width: false,
  story_id: 4
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2016/02/Beef-Burrito-Bowl-What-To-Cook-92-324x324.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2016/02/Beef-Burrito-Bowl-What-To-Cook-92-324x324.jpg",
  position: 7,
  group_position: 4,
  full_width: false,
  story_id: 4
)

TextArea.create!(
  title: "",
  body: "2. Heat olive oil in a fry pan over a medium heat. Add the mince and break it up into smallish bits. Add in the spice mixture and stir to combine. Cook for about 5-6 minutes or until the mince is pretty much completely cooked then add in the beans. Stir to combine and cook for about 2-3 minutes or until the beans have been warmed through and the mince is completely cooked.",
  position: 8,
  story_id: 4
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2016/02/Beef-Burrito-Bowl-What-To-Cook-73-503x682.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2016/02/Beef-Burrito-Bowl-What-To-Cook-73-503x682.jpg",
  position: 9,
  group_position: 3,
  full_width: false,
  story_id: 4
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2016/02/Beef-Burrito-Bowl-What-To-Cook-38-503x682.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2016/02/Beef-Burrito-Bowl-What-To-Cook-38-503x682.jpg",
  position: 9,
  group_position: 3,
  full_width: false,
  story_id: 4
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2016/02/Beef-Burrito-Bowl-What-To-Cook-80-503x682.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2016/02/Beef-Burrito-Bowl-What-To-Cook-80-503x682.jpg",
  position: 9,
  group_position: 3,
  full_width: false,
  story_id: 4
)

TextArea.create!(
title: "",
body: "3. Now you can start constructing the bowls – the fun part. Start with a base of lettuce & red rice. Top with some more lettuce and some shredded cabbage. Then comes the beef & beans mixture. And then it’s time for the toppings – guacamole, pico de gallo, cheese, jalapeños, coriander, diced red onion, & a couple of Doritos too, with some limes on the side of course.",
position: 10,
story_id: 4
)
#end

Story.create!(
  title: "Homemade Lasagne",
  description: "Hearty, comforting and incredibly delicious! This is a great recipe for a simple homemade lasagne!",
  user_id: 2,
  cover_image_id: 50
)

TextArea.create!(
title: "",
body: "This is actually the first time we’ve ever made a homemade lasagne. You might have guessed that we are fairly pasta obsessed in the WTC Kitchen, but have never really had the desire to cook up our own lasagne. For our first lasagne, we decided to skip out on the bechamel sauce to keep it on the simpler side for at-home mid-week cooking. To make up for the lacking of the creamy bechamel sauce, just keep adding in more cheese….delicious!!",
position: 1,
story_id: 5
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2015/08/Lasagne-What-To-Cook-66-683x683.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2015/08/Lasagne-What-To-Cook-66-683x683.jpg",
  position: 2,
  group_position: 2,
  full_width: false,
  story_id: 5
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2015/08/Lasagne-What-To-Cook-75-683x683.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2015/08/Lasagne-What-To-Cook-75-683x683.jpg",
  position: 2,
  group_position: 2,
  full_width: false,
  story_id: 5
)

TextArea.create!(
title: "",
body: "1. Start by making the mince mixture; heat 30ml olive oil in a heavy based fry pan over a medium heat then add the chilli and stir briefly. Add in the onion and saute for a couple of minutes, until soft then add in the carrot and saute for a further 4-5 minutes, stirring often. Add in the fresh rosemary and combine.",
position: 3,
story_id: 5
)

TextArea.create!(
title: "",
body: "2. Push the carrot & onion mixture to the side and add the mince, breaking it up with the back of a wooden spoon and then combine with the onion & carrot mixture. Pour in the red wine and passata and combine. Season to taste and simmer for 5-10 minutes.",
position: 4,
story_id: 5
)

TextArea.create!(
title: "",
body: "3. Meanwhile, heat 20ml olive oil in a separate frypan over medium-high heat. Add the pancetta and cook until lightly crisp. Preheat oven to 180c. Brush oil on a baking dish.",
position: 5,
story_id: 5
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2015/08/Lasagne-What-To-Cook-86-1400x683.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2015/08/Lasagne-What-To-Cook-86-1400x683.jpg",
  position: 6,
  group_position: 1,
  full_width: false,
  story_id: 5
)

TextArea.create!(
title: "",
body: "4. Now is the time to start layering the lasagne. Add a third of the mince mixture into the baking dish. Cover with a pasta sheet and then spoon another third of the mince mixture on top. Top with buffalo mozzarella and the crispy pancetta then place a pasta sheet on top of it. Add the final layer of mince mixture. Top with the final pasta sheet, add buffalo mozzarella & sprinkle with the grated parmesan.",
position: 7,
story_id: 5
)

TextArea.create!(
title: "",
body: "5. Place in the preheated oven, cover with foil and bake for 20 minutes. Remove the foil and bake for a further 5-10 to crisp up the top.",
position: 8,
story_id: 5
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2015/08/Lasagne-What-To-Cook-54-324x324.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2015/08/Lasagne-What-To-Cook-54-324x324.jpg",
  position: 9,
  group_position: 4,
  full_width: false,
  story_id: 5
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2015/08/Lasagne-What-To-Cook-38-324x324.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2015/08/Lasagne-What-To-Cook-38-324x324.jpg",
  position: 9,
  group_position: 4,
  full_width: false,
  story_id: 5
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2015/08/Lasagne-What-To-Cook-50-324x324.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2015/08/Lasagne-What-To-Cook-50-324x324.jpg",
  position: 9,
  group_position: 4,
  full_width: false,
  story_id: 5
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2015/08/Lasagne-What-To-Cook-53-324x324.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2015/08/Lasagne-What-To-Cook-53-324x324.jpg",
  position: 9,
  group_position: 4,
  full_width: false,
  story_id: 5
)


Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2015/08/Lasagne-What-To-Cook-81-1400x784.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2015/08/Lasagne-What-To-Cook-81-1400x784.jpg",
  position: 10,
  group_position: 1,
  full_width: true,
  story_id: 5
)
#end

Story.create!(
  title: "Sweet Potato & Feta Ravioli",
  description: "A recipe to take your time with and enjoy the whole process. Slow cooking at its finest!",
  user_id: 2,
  cover_image_id: 57
)

TextArea.create!(
title: "",
body: "It’s only Tuesday but this recipe has me already dreaming of the weekend because this is the ideal weekend cooking project! It means you can take your time & truly enjoy the process of making homemade ravioli. It’s not about perfection either – that’s probably the best thing about homemade ravioli…it’s not the perfect little parcels you might get at the supermarket, but I think that that is what makes it taste so delicious!",
position: 1,
story_id: 6
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2016/04/Sweet-Potato-Feta-Ravioli-What-To-Cook-60-862x504.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2016/04/Sweet-Potato-Feta-Ravioli-What-To-Cook-60-862x504.jpg",
  position: 2,
  group_position: 2,
  full_width: false,
  story_id: 6
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2016/04/Sweet-Potato-Feta-Ravioli-What-To-Cook-125-503x503.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2016/04/Sweet-Potato-Feta-Ravioli-What-To-Cook-125-503x503.jpg",
  position: 2,
  group_position: 2,
  full_width: false,
  story_id: 6
)

TextArea.create!(
title: "",
body: "We’ve made a couple batches over the years and it’s so much fun to come up with the flavour combinations. This was was such a winner and is absolutely worth a try on the next free weekend you have. All you need to do is put on some music, get the whole family involved, have the wine flowing (or Ribena for the kids haha) & have a blast making some incredible food without the burden of time-pressures (unlike those pesky weeknights). How great is cooking! :) Enjoy!",
position: 3,
story_id: 6
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2016/04/Sweet-Potato-Feta-Ravioli-What-To-Cook-37-503x682.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2016/04/Sweet-Potato-Feta-Ravioli-What-To-Cook-37-503x682.jpg",
  position: 4,
  group_position: 3,
  full_width: false,
  story_id: 6
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2016/04/Sweet-Potato-Feta-Ravioli-What-To-Cook-101-503x682.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2016/04/Sweet-Potato-Feta-Ravioli-What-To-Cook-101-503x682.jpg",
  position: 4,
  group_position: 3,
  full_width: false,
  story_id: 6
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2016/04/Sweet-Potato-Feta-Ravioli-What-To-Cook-80-503x682.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2016/04/Sweet-Potato-Feta-Ravioli-What-To-Cook-80-503x682.jpg",
  position: 4,
  group_position: 3,
  full_width: false,
  story_id: 6
)

TextArea.create!(
title: "",
body: "1. Start by making the pasta dough. For filled pasta, roll two sheets of pasta to the thinest setting, then set aside.",
position: 5,
story_id: 6
)

TextArea.create!(
title: "",
body: "2. For the filling; place the roasted sweet potato & parmesan in a food processor and briefly whizz. Add in the oregano leaves and continue to whizz until combined then the mixture to a bowl and add the feta. Season with cracked pepper & a little sea salt then mix to combine and set the mixture aside.",
position: 6,
story_id: 6
)

TextArea.create!(
title: "",
body: "3. Lightly brush one sheet of rolled pasta with water, then place 1.5 tsp of mixture 4cm apart and place the other sheet on top of the filling. Press around the mixture to remove any air bubbles and then cut into ravioli. Place on a tray and dust with semolina (or a little extra flour). Set aside while you make the sauce.",
position: 7,
story_id: 6
)

TextArea.create!(
title: "",
body: "4. Heat 40ml olive oil in a large fry pan over a medium heat. Add the diced onion and saute for 3 minutes (or until a little soft & fragrant), stirring often. Add the oregano, garlic & tomatoes then stir to combine and cook for 2 minutes. Pour in the white wine and cook for a further 2 minutes before adding in the passata. Cook for 5 minutes, or until the tomatoes start to slightly blister. Keep warm over a low heat while you cook the ravioli.",
position: 8,
story_id: 6
)

TextArea.create!(
title: "",
body: "5. Bring a large pot of well-salted water to the boil. Add the ravioli and cook for 2-3 minutes then remove & drain.",
position: 9,
story_id: 6
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2016/04/Sweet-Potato-Feta-Ravioli-What-To-Cook-91-1400x683.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2016/04/Sweet-Potato-Feta-Ravioli-What-To-Cook-91-1400x683.jpg",
  position: 10,
  group_position: 1,
  full_width: true,
  story_id: 6
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2016/04/Sweet-Potato-Feta-Ravioli-What-To-Cook-109-1400x784.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2016/04/Sweet-Potato-Feta-Ravioli-What-To-Cook-109-1400x784.jpg",
  position: 11,
  group_position: 1,
  full_width: true,
  story_id: 6
)
#end

Story.create!(
  title: "Jaffles Three Ways",
  description: "Mexican beef & beans; Brie, thyme & sautéed mushrooms; Salami & pickles...all super delicious!",
  user_id: 2,
  cover_image_id: 66
)

TextArea.create!(
title: "",
body: "Last weekend we made jaffles while sitting around a magical bonfire. It was pure perfection! We definitely recommend you doing something similar over an upcoming weekend, and if you do then here are three delicious different types of jaffles. You’ll need a jaffle maker to make them, however, if you don’t have one then just toast them up in the oven and they will still be absolutely scrumptious!",
position: 1,
story_id: 7
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2015/08/Jaffles-What-To-Cook-91-324x324.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2015/08/Jaffles-What-To-Cook-91-324x324.jpg",
  position: 2,
  group_position: 3,
  full_width: false,
  story_id: 7
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2015/08/Jaffles-What-To-Cook-44-324x324.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2015/08/Jaffles-What-To-Cook-44-324x324.jpg",
  position: 2,
  group_position: 3,
  full_width: false,
  story_id: 7
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2015/08/Jaffles-What-To-Cook-81-324x324.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2015/08/Jaffles-What-To-Cook-81-324x324.jpg",
  position: 2,
  group_position: 3,
  full_width: false,
  story_id: 7
)

TextArea.create!(
title: "",
body: "1. Starting with jaffle number one. For the beef mixture; heat olive oil in a frypan over a medium heat. Add the chilli & onion and saute for a couple minutes. Add the beef mince, breaking it up with a wooden spoon. Add in the fajita spice mix and the beans then combine. Cook for about 4-6 minutes, or until the mince is fully cooked through. Then remove from pan and set aside in a bowl.",
position: 3,
story_id: 7
)

TextArea.create!(
title: "",
body: "2. Assembling jaffle number one; Turn your jaffle maker on. Spread butter on some sliced bread. Place buttered side down on the jaffle maker. Top with the mince mixture. Add jalapeños, coriander & cheddar or manchego. Top with another slice of bread, making sure the buttered side is the one facing outwards. Shut the jaffle maker and toast the jaffle until golden & hot. Delicious!!",
position: 4,
story_id: 7
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2015/08/Jaffles-What-To-Cook-96-1041x683.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2015/08/Jaffles-What-To-Cook-96-1041x683.jpg",
  position: 5,
  group_position: 1,
  full_width: false,
  story_id: 7
)

TextArea.create!(
title: "",
body: "3. Jaffle number two. For the mushrooms; heat olive oil & butter in a frypan over high heat. Once butter is bubbling, add mushrooms and saute until golden. Remove from pan and set aside.",
position: 6,
story_id: 7
)

TextArea.create!(
title: "",
body: "4. Assembling jaffle number two; Place the brie on a slice of rye. Top with the sautéed mushrooms and fresh thyme leaves. Place another slice on top (making sure the butter sides are on the outside) and toast until the jaffle is golden. YUM!",
position: 7,
story_id: 7
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2015/08/Jaffles-What-To-Cook-66-503x682.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2015/08/Jaffles-What-To-Cook-66-503x682.jpg",
  position: 8,
  group_position: 2,
  full_width: false,
  story_id: 7
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2015/08/Jaffles-What-To-Cook-60-503x682.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2015/08/Jaffles-What-To-Cook-60-503x682.jpg",
  position: 8,
  group_position: 2,
  full_width: false,
  story_id: 7
)

TextArea.create!(
title: "",
body: "5. For the third jaffle there’s no cooking involved so all you have to do is assemble the ingredients; place salami and tomatoes on a slice of rye. Season to taste. Top with cheddar and cornichons. Place in the jaffle maker and toast until golden. Scrumptious!",
position: 9,
story_id: 7
)

TextArea.create!(
title: "",
body: "6. Enjoy the feast with some beers or whiskey by the bonfire.",
position: 10,
story_id: 7
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2015/08/Jaffles-What-To-Cook-24-324x324.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2015/08/Jaffles-What-To-Cook-24-324x324.jpg",
  position: 11,
  group_position: 2,
  full_width: false,
  story_id: 7
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2015/08/Jaffles-What-To-Cook-33-324x324.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2015/08/Jaffles-What-To-Cook-33-324x324.jpg",
  position: 11,
  group_position: 2,
  full_width: false,
  story_id: 7
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2015/08/Jaffles-What-To-Cook-53-1400x784.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2015/08/Jaffles-What-To-Cook-53-1400x784.jpg",
  position: 12,
  group_position: 1,
  full_width: true,
  story_id: 7
)
#end

Story.create!(
  title: "Minestrone Soup",
  description: "The perfect soup that's comforting enough for cold weather but also light enough for hot weather!",
  user_id: 2,
  cover_image_id: 71
)

TextArea.create!(
title: "",
body: "After arriving back in a cold and rainy Sydney (after a week in the Hawaiian sun), we have all been craving soup! But a soup that’s not too heavy (we definitely overate while we were away haha). Enter the Minestrone. It’s so light and packed full of flavour while also being perfectly comforting on a cold autumn night! Enjoy!",
position: 1,
story_id: 8
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2014/05/WTC-Minestrone-Soup-14-1400x683.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2014/05/WTC-Minestrone-Soup-14-1400x683.jpg",
  position: 2,
  group_position: 1,
  full_width: false,
  story_id: 8
)

TextArea.create!(
title: "",
body: "1. In a heavy based sauce pan heat the oil over a medium heat, add the pancetta and sauté for 2-4 minutes. Then add the garlic, onion, carrots, celery and parsley and sauté for a further 5-10 minutes until soft. Add the wine and bring to the boil.",
position: 3,
story_id: 8
)

TextArea.create!(
title: "",
body: "2. Then add the tomatoes, zucchini and Parmesan rind. Reduce the heat and simmer for 10 minutes or until soup thickens then add the cabbage, borlotti beans and stock and stir to combine.",
position: 4,
story_id: 8
)

TextArea.create!(
title: "",
body: "3. Add pasta shells and simmer for 10 minutes or until pasta is cooked. Season to taste and serve with grated Parmesan.",
position: 5,
story_id: 8
)


Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2014/05/WTC-Minestrone-Soup-15-503x682.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2014/05/WTC-Minestrone-Soup-15-503x682.jpg",
  position: 6,
  group_position: 3,
  full_width: false,
  story_id: 8
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2014/05/WTC-Minestrone-Soup-503x503.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2014/05/WTC-Minestrone-Soup-503x503.jpg",
  position: 6,
  group_position: 3,
  full_width: false,
  story_id: 8
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2014/05/WTC-Minestrone-Soup-19-503x682.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2014/05/WTC-Minestrone-Soup-19-503x682.jpg",
  position: 6,
  group_position: 3,
  full_width: false,
  story_id: 8
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2014/05/WTC-Minestrone-Soup--1400x784.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2014/05/WTC-Minestrone-Soup--1400x784.jpg",
  position: 7,
  group_position: 1,
  full_width: false,
  story_id: 8
)
#end
