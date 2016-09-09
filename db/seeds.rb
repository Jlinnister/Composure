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

User.create!(
  username: "public",
  password: "password",
  email: "public@gmail.com",
  avatar_url: "https://secure.gravatar.com/avatar/d9fb812b41af97e6310fae5bcaf8c460?s=150&d=https://exposure-media.s3.amazonaws.com/static/exposure-logo-mark-avatar.png",
  profile_title: "Featured Stories",
  profile_description: "",
  website_url: "https://www.exposure.co"
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
  group_position: 1,
  full_width: false,
  story_id: 1
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2016/02/Fish-Tacos-What-To-Cook-68-503x682.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2016/02/Fish-Tacos-What-To-Cook-68-503x682.jpg",
  position: 3,
  group_position: 1,
  full_width: false,
  story_id: 1
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2016/02/Fish-Tacos-What-To-Cook-82-503x682.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2016/02/Fish-Tacos-What-To-Cook-82-503x682.jpg",
  position: 3,
  group_position: 1,
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
  group_position: 3,
  full_width: false,
  story_id: 1
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2016/02/Fish-Tacos-What-To-Cook-13-324x324.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2016/02/Fish-Tacos-What-To-Cook-13-324x324.jpg",
  position: 8,
  group_position: 3,
  full_width: false,
  story_id: 1
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2016/02/Fish-Tacos-What-To-Cook-80-324x324.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2016/02/Fish-Tacos-What-To-Cook-80-324x324.jpg",
  position: 8,
  group_position: 3,
  full_width: false,
  story_id: 1
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2016/02/IMG_0853-324x324.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2016/02/IMG_0853-324x324.jpg",
  position: 8,
  group_position: 3,
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
  group_position: 4,
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
  group_position: 1,
  full_width: false,
  story_id: 2
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2016/02/Tropical-Breakfast-Bar-What-To-Cook-39-503x682.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2016/02/Tropical-Breakfast-Bar-What-To-Cook-39-503x682.jpg",
  position: 3,
  group_position: 1,
  full_width: false,
  story_id: 2
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2016/02/Tropical-Breakfast-Bar-What-To-Cook-119-503x682.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2016/02/Tropical-Breakfast-Bar-What-To-Cook-119-503x682.jpg",
  position: 3,
  group_position: 1,
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
  group_position: 3,
  full_width: false,
  story_id: 2
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2016/02/Tropical-Breakfast-Bar-What-To-Cook-83-683x683.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2016/02/Tropical-Breakfast-Bar-What-To-Cook-83-683x683.jpg",
  position: 7,
  group_position: 3,
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
  group_position: 4,
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
  group_position: 1,
  full_width: false,
  story_id: 3
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2015/10/Yarra-Valley-Victoria-476-503x682.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2015/10/Yarra-Valley-Victoria-476-503x682.jpg",
  position: 2,
  group_position: 1,
  full_width: false,
  story_id: 3
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2015/10/Yarra-Valley-Victoria-158-503x682.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2015/10/Yarra-Valley-Victoria-158-503x682.jpg",
  position: 2,
  group_position: 1,
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
  group_position: 3,
  full_width: false,
  story_id: 3
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2015/10/Yarra-Valley-Victoria-176-324x324.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2015/10/Yarra-Valley-Victoria-176-324x324.jpg",
  position: 6,
  group_position: 3,
  full_width: false,
  story_id: 3
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2015/10/Yarra-Valley-Victoria-215-324x324.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2015/10/Yarra-Valley-Victoria-215-324x324.jpg",
  position: 6,
  group_position: 3,
  full_width: false,
  story_id: 3
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2015/10/Yarra-Valley-Victoria-463-324x324.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2015/10/Yarra-Valley-Victoria-463-324x324.jpg",
  position: 6,
  group_position: 3,
  full_width: false,
  story_id: 3
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2015/10/Yarra-Valley-Victoria-9-1400x683.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2015/10/Yarra-Valley-Victoria-9-1400x683.jpg",
  position: 7,
  group_position: 4,
  full_width: false,
  story_id: 3
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2015/10/Yarra-Valley-Victoria-228-1400x683.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2015/10/Yarra-Valley-Victoria-228-1400x683.jpg",
  position: 8,
  group_position: 5,
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
  group_position: 3,
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
  group_position: 5,
  full_width: false,
  story_id: 4
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2016/02/Beef-Burrito-Bowl-What-To-Cook-38-503x682.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2016/02/Beef-Burrito-Bowl-What-To-Cook-38-503x682.jpg",
  position: 9,
  group_position: 5,
  full_width: false,
  story_id: 4
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2016/02/Beef-Burrito-Bowl-What-To-Cook-80-503x682.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2016/02/Beef-Burrito-Bowl-What-To-Cook-80-503x682.jpg",
  position: 9,
  group_position: 5,
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
  group_position: 1,
  full_width: false,
  story_id: 5
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2015/08/Lasagne-What-To-Cook-75-683x683.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2015/08/Lasagne-What-To-Cook-75-683x683.jpg",
  position: 2,
  group_position: 1,
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
  group_position: 2,
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
  group_position: 3,
  full_width: false,
  story_id: 5
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2015/08/Lasagne-What-To-Cook-38-324x324.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2015/08/Lasagne-What-To-Cook-38-324x324.jpg",
  position: 9,
  group_position: 3,
  full_width: false,
  story_id: 5
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2015/08/Lasagne-What-To-Cook-50-324x324.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2015/08/Lasagne-What-To-Cook-50-324x324.jpg",
  position: 9,
  group_position: 3,
  full_width: false,
  story_id: 5
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2015/08/Lasagne-What-To-Cook-53-324x324.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2015/08/Lasagne-What-To-Cook-53-324x324.jpg",
  position: 9,
  group_position: 3,
  full_width: false,
  story_id: 5
)


Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2015/08/Lasagne-What-To-Cook-81-1400x784.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2015/08/Lasagne-What-To-Cook-81-1400x784.jpg",
  position: 10,
  group_position: 4,
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
  group_position: 1,
  full_width: false,
  story_id: 6
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2016/04/Sweet-Potato-Feta-Ravioli-What-To-Cook-125-503x503.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2016/04/Sweet-Potato-Feta-Ravioli-What-To-Cook-125-503x503.jpg",
  position: 2,
  group_position: 1,
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
  group_position: 2,
  full_width: false,
  story_id: 6
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2016/04/Sweet-Potato-Feta-Ravioli-What-To-Cook-101-503x682.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2016/04/Sweet-Potato-Feta-Ravioli-What-To-Cook-101-503x682.jpg",
  position: 4,
  group_position: 2,
  full_width: false,
  story_id: 6
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2016/04/Sweet-Potato-Feta-Ravioli-What-To-Cook-80-503x682.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2016/04/Sweet-Potato-Feta-Ravioli-What-To-Cook-80-503x682.jpg",
  position: 4,
  group_position: 2,
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
  group_position: 3,
  full_width: true,
  story_id: 6
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2016/04/Sweet-Potato-Feta-Ravioli-What-To-Cook-109-1400x784.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2016/04/Sweet-Potato-Feta-Ravioli-What-To-Cook-109-1400x784.jpg",
  position: 11,
  group_position: 4,
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
  group_position: 1,
  full_width: false,
  story_id: 7
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2015/08/Jaffles-What-To-Cook-44-324x324.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2015/08/Jaffles-What-To-Cook-44-324x324.jpg",
  position: 2,
  group_position: 1,
  full_width: false,
  story_id: 7
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2015/08/Jaffles-What-To-Cook-81-324x324.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2015/08/Jaffles-What-To-Cook-81-324x324.jpg",
  position: 2,
  group_position: 1,
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
  group_position: 2,
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
  group_position: 3,
  full_width: false,
  story_id: 7
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2015/08/Jaffles-What-To-Cook-60-503x682.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2015/08/Jaffles-What-To-Cook-60-503x682.jpg",
  position: 8,
  group_position: 3,
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
  group_position: 4,
  full_width: false,
  story_id: 7
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2015/08/Jaffles-What-To-Cook-33-324x324.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2015/08/Jaffles-What-To-Cook-33-324x324.jpg",
  position: 11,
  group_position: 4,
  full_width: false,
  story_id: 7
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2015/08/Jaffles-What-To-Cook-53-1400x784.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2015/08/Jaffles-What-To-Cook-53-1400x784.jpg",
  position: 12,
  group_position: 5,
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
  group_position: 2,
  full_width: false,
  story_id: 8
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2014/05/WTC-Minestrone-Soup-503x503.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2014/05/WTC-Minestrone-Soup-503x503.jpg",
  position: 6,
  group_position: 2,
  full_width: false,
  story_id: 8
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2014/05/WTC-Minestrone-Soup-19-503x682.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2014/05/WTC-Minestrone-Soup-19-503x682.jpg",
  position: 6,
  group_position: 2,
  full_width: false,
  story_id: 8
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2014/05/WTC-Minestrone-Soup--1400x784.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2014/05/WTC-Minestrone-Soup--1400x784.jpg",
  position: 7,
  group_position: 3,
  full_width: false,
  story_id: 8
)
#end

Story.create!(
  title: "Beef Pho",
  description: "This will just make you feel good! So much freshness. So much lightness. So much deliciousness. If you get really good quality beef it will take it to the next level!",
  user_id: 2,
  cover_image_id: 77
)

TextArea.create!(
title: "",
body: "1. In a large heavy-based saucepan add the; stock, consommé, water, ginger, onion, garlic, star anise, cinnamon, palm sugar and fish sauce. Bring to the boil then reduce the heat, cover and simmer for 20 minutes. Strain the pho liquid, (discarding the solids), then return the soup to the saucepan. Cover and return to the boil.",
position: 1,
story_id: 9
)

TextArea.create!(
title: "",
body: "2. Prepare the rice stick noodles following the instructions on the packet. Once prepared, drain well and divide the noodles into four soup bowls. Top with the beef. Pour over the hot pho (this will cook the beef). Top with bean sprouts.",
position: 2,
story_id: 9
)

TextArea.create!(
title: "",
body: "3. Serve garnished with spring onions, chilli, mint, coriander and a squeeze of lemon juice.",
position: 3,
story_id: 9
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2014/07/WTC-Beef-Pho-6-324x324.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2014/07/WTC-Beef-Pho-6-324x324.jpg",
  position: 4,
  group_position: 1,
  full_width: false,
  story_id: 9
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2014/07/WTC-Beef-Pho-2-324x324.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2014/07/WTC-Beef-Pho-2-324x324.jpg",
  position: 4,
  group_position: 1,
  full_width: false,
  story_id: 9
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2014/07/WTC-Beef-Pho-31-1041x683.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2014/07/WTC-Beef-Pho-31-1041x683.jpg",
  position: 5,
  group_position: 2,
  full_width: false,
  story_id: 9
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2014/07/WTC-Beef-Pho-28-503x682.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2014/07/WTC-Beef-Pho-28-503x682.jpg",
  position: 6,
  group_position: 3,
  full_width: false,
  story_id: 9
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2014/07/WTC-Beef-Pho-20-503x503.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2014/07/WTC-Beef-Pho-20-503x503.jpg",
  position: 6,
  group_position: 3,
  full_width: false,
  story_id: 9
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2014/07/WTC-Beef-Pho-29.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2014/07/WTC-Beef-Pho-29.jpg",
  position: 7,
  group_position: 4,
  full_width: true,
  story_id: 9
)
#end

Story.create!(
  title: "Sausage & Vegetable Bake",
  description: "The easiest dinner on the planet",
  user_id: 2,
  cover_image_id: 80
)

TextArea.create!(
title: "",
body: "This has to be one of the most perfect weeknight dinners you could ever think of cooking. It’s minimal preparation and then about 1% actual cooking effort. Weeknight perfection!",
position: 1,
story_id: 10
)

TextArea.create!(
title: "",
body: "1. Preheat oven to 180c. Place all ingredients (excluding the basil & parsley) in a large baking tray lined with baking paper. Spray with oil and season to taste.",
position: 2,
story_id: 10
)

TextArea.create!(
title: "",
body: "2. Place in the oven and cook for 35-40 minutes or until sausages have cooked through. Half way through cooking, turn the sausages over. Remove from oven and garnish with the fresh basil & parsley.",
position: 3,
story_id: 10
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2014/10/WTC-Sausage-Bake-11-1400x683.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2014/10/WTC-Sausage-Bake-11-1400x683.jpg",
  position: 4,
  group_position: 1,
  full_width: true,
  story_id: 10
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2014/10/WTC-Sausage-Bake-17-1400x683.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2014/10/WTC-Sausage-Bake-17-1400x683.jpg",
  position: 5,
  group_position: 2,
  full_width: true,
  story_id: 10
)

Photo.create!(
  url: "https://www.whattocook.com.au/wp-content/uploads/2014/10/WTC-Sausage-Bake-15.jpg",
  med_url: "https://www.whattocook.com.au/wp-content/uploads/2014/10/WTC-Sausage-Bake-15.jpg",
  position: 5,
  group_position: 3,
  full_width: true,
  story_id: 10
)
#end

#public-1
Story.create!(
  title: "The Real Steel",
  description: "We go behind the scenes to discover the intricacies involved in the build process of the Black Sheep | Stinner Racing bikes.",
  user_id: 3,
  cover_image_id: 81
)

Photo.create!(
  url: "https://exposure.imgix.net/production/posts/183018/cover-photo/cover-1466125923.jpg?w=1800&q=58&fm=pjpg&auto=format",
  med_url: "https://exposure.imgix.net/production/posts/183018/cover-photo/cover-1466125923.jpg?w=1800&q=58&fm=pjpg&auto=format",
  position: 1,
  group_position: 1,
  full_width: true,
  story_id: 11
)

TextArea.create!(
title: "",
body: "Stinner Frameworks builds high-quality handmade bicycles in the South of California, USA. Every Stinner bike is custom made using state of the art materials such as steel and titanium to design and deliver the simple freedom of a perfect ride. Stinner prides itself on their individuality, with each frame being unique in its own way. People cycle for different reasons, we know that. However, whether you’re racing or commuting we all have something in common, we enjoy being on two wheels. Stinner aims to unite businesses and people, emphasising responsible manufacturing and community in every way they can. From an idea on a piece of paper to the perfect racing machine, learn how the five Black Sheep | Stinner Racing bikes came to be.",
position: 2,
story_id: 11
)

TextArea.create!(
title: "The riders of Black Sheep | Stinner need to be able to merely look at their bike and feel fast.",
body: "",
position: 3,
story_id: 11
)

Photo.create!(
  url: "https://exposure.imgix.net/production/photos/knc8obzsbc1gnw6pgijp2e29z5wpbwxy3iav/original.jpg?fm=pjpg&auto=format&q=95&fm=jpg&w=2000",
  med_url: "https://exposure.imgix.net/production/photos/knc8obzsbc1gnw6pgijp2e29z5wpbwxy3iav/original.jpg?fm=pjpg&auto=format&q=95&fm=jpg&w=2000",
  position: 4,
  group_position: 2,
  full_width: true,
  story_id: 11
)

TextArea.create!(
title: "Initial Stages.",
body: "",
position: 5,
story_id: 11
)

TextArea.create!(
title: "",
body: "We pride ourselves on being able to design and build the perfect bike for someone we may never get to meet face to face. At Stinner we have decades of collective fit experience. The first step is gathering some basic measurements from the rider’s body and bike. We developed a simple yet precise method for clearly communicating the information we need from the customer. Once we gather the basic information, we start a discussion with the rider about ride expectations from their bike. This conversation is just as important as the numbers. With this information we can ensure that the new Stinner will be that dream bike the customer imagines.",
position: 6,
story_id: 11
)

TextArea.create!(
title: "",
body: "We want the bike to feel like home as soon as the rider throws a leg over it.",
position: 7,
story_id: 11
)

Photo.create!(
  url: "https://exposure.imgix.net/production/photos/nchcb49w8pbtxhj34s01thuxrk3iyule7vzo/original.jpg?fm=pjpg&auto=format",
  med_url: "https://exposure.imgix.net/production/photos/nchcb49w8pbtxhj34s01thuxrk3iyule7vzo/original.jpg?fm=pjpg&auto=format",
  position: 8,
  group_position: 3,
  full_width: false,
  story_id: 11
)

Photo.create!(
  url: "https://exposure.imgix.net/production/photos/68u6gtphc21gf553xa1pmbo6r9moaz8r05gk/original.jpg?fm=pjpg&auto=format",
  med_url: "https://exposure.imgix.net/production/photos/68u6gtphc21gf553xa1pmbo6r9moaz8r05gk/original.jpg?fm=pjpg&auto=format",
  position: 9,
  group_position: 3,
  full_width: false,
  story_id: 11
)

Photo.create!(
  url: "https://exposure.imgix.net/production/photos/13u8efyc80q3krhfgvl7bvs4ixkhykmx2d3r/original.jpg?fm=pjpg&auto=format",
  med_url: "https://exposure.imgix.net/production/photos/13u8efyc80q3krhfgvl7bvs4ixkhykmx2d3r/original.jpg?fm=pjpg&auto=format",
  position: 10,
  group_position: 3,
  full_width: false,
  story_id: 11
)

TextArea.create!(
title: "",
body: "The build process starts with a conversation, we need to know exactly what’s expected, what fit will look like. For the Black Sheep | Stinner Racing, the bikes had to meet the expectations of some of the most particular cyclists out there: elite level bike racers. We turn to True Temper’s S3 steel tubing to create a high quality, light, and responsive ride. Each bike went through the same considered build process, we wanted to make sure Black Sheep | Stinner Racing riders had full trust in their equipment.",
position: 11,
story_id: 11
)

TextArea.create!(
title: "",
body: "And it begins with the tubing…",
position: 12,
story_id: 11
)

Photo.create!(
  url: "https://exposure.imgix.net/production/photos/obqrukxwm7dlgfnvtqtyv6lxrlqivxmq4zn4/original.jpg?fm=pjpg&auto=format",
  med_url: "https://exposure.imgix.net/production/photos/obqrukxwm7dlgfnvtqtyv6lxrlqivxmq4zn4/original.jpg?fm=pjpg&auto=format",
  position: 13,
  group_position: 4,
  full_width: false,
  story_id: 11
)

Photo.create!(
  url: "https://exposure.imgix.net/production/photos/oiiqxsueythdlp5r0nsysnhfrlfl0jbs8kob/original.jpg?fm=pjpg&auto=format",
  med_url: "https://exposure.imgix.net/production/photos/oiiqxsueythdlp5r0nsysnhfrlfl0jbs8kob/original.jpg?fm=pjpg&auto=format",
  position: 14,
  group_position: 4,
  full_width: false,
  story_id: 11
)

TextArea.create!(
title: "Fabrication.",
body: "",
position: 15,
story_id: 11
)

TextArea.create!(
title: "",
body: "This is the first part of the build, and it starts with Stinner Fabricator Devin Jones (@doctor_jones_). The bikes were built with True Temper’s high-quality S3 Steel Tubing keeping the builds extremely light while retaining the responsive feel needed from a race bike. Each bike is ultimately customised to specific rider desires from geometry to slight differences in spec. Using the information from fit data provided by Operations Lead Jeremy Platt, Devin cuts each tube to the specific lengths and miters them to fit and join at requested angles. Good miters ensure tube junctions are tight and precise. The angles and tubing specifications for each tube and junction have a massive influence on the ride quality. Any additional modifications to the tubing happens here as well. Each tube type, material, and thickness requires special treatment and an extreme level of precision.",
position: 16,
story_id: 11
)

Photo.create!(
  url: "https://exposure.imgix.net/production/photos/pmwl7sw5n75rramk6llahsemi9xeabu7d22d/original.jpg?fm=pjpg&auto=format",
  med_url: "https://exposure.imgix.net/production/photos/pmwl7sw5n75rramk6llahsemi9xeabu7d22d/original.jpg?fm=pjpg&auto=format",
  position: 17,
  group_position: 5,
  full_width: false,
  story_id: 11
)

Photo.create!(
  url: "https://exposure.imgix.net/production/photos/mum5s7fx6yhyawqotx9vhd7vixvh2zkpr0ct/original.jpg?fm=pjpg&auto=format",
  med_url: "https://exposure.imgix.net/production/photos/mum5s7fx6yhyawqotx9vhd7vixvh2zkpr0ct/original.jpg?fm=pjpg&auto=format",
  position: 18,
  group_position: 5,
  full_width: false,
  story_id: 11
)

Photo.create!(
  url: "https://exposure.imgix.net/production/photos/iicl0reuv1h7vf5k525fusorar9r8ckx0jzx/original.jpg?fm=pjpg&auto=format",
  med_url: "https://exposure.imgix.net/production/photos/iicl0reuv1h7vf5k525fusorar9r8ckx0jzx/original.jpg?fm=pjpg&auto=format",
  position: 19,
  group_position: 5,
  full_width: false,
  story_id: 11
)

Photo.create!(
  url: "https://exposure.imgix.net/production/photos/rskr9rk5s20jdvhway747k3xr84h76b1y7ya/original.jpg?fm=pjpg&auto=format",
  med_url: "https://exposure.imgix.net/production/photos/rskr9rk5s20jdvhway747k3xr84h76b1y7ya/original.jpg?fm=pjpg&auto=format",
  position: 20,
  group_position: 6,
  full_width: false,
  story_id: 11
)

Photo.create!(
  url: "https://exposure.imgix.net/production/photos/y0703n57hochxqnwrbsnn4s4igwuwoojzl4y/original.jpg?fm=pjpg&auto=format",
  med_url: "https://exposure.imgix.net/production/photos/y0703n57hochxqnwrbsnn4s4igwuwoojzl4y/original.jpg?fm=pjpg&auto=format",
  position: 21,
  group_position: 6,
  full_width: false,
  story_id: 11
)

TextArea.create!(
title: "Welding.",
body: "",
position: 22,
story_id: 11
)

TextArea.create!(
title: "",
body: "Structure and strength come from the welds. Astute readers will see that welds rely on good miters. We use Tig welding because it is extremely strong as well as very clean looking. Stinner Welder, Carlos Velasquez, comes from the aerospace industry, where his welds were keeping airplanes together. Like Devin, Carlos is a true craftsmen. Weld and Fabrication have to work closely together. From fabrication, the bike starts looking like something of a bike and it goes into a jig that is set precisely to the requested angles. The mitered tubes are welded together (and adjusted as needed). Good fabrication, means better welds and the weld process requires the utmost precision. Thus, the fabricator and welder really lean on each other to do their jobs. For those that have not seen tig welding before, it requires three limbs at any given time. It’s not easy. Each step in the process is QCed, and will not be deemed “done” until all aspects of the weld are guaranteed.",
position: 23,
story_id: 11
)

Photo.create!(
  url: "https://exposure.imgix.net/production/photos/4icyvtnzczvwzgg6njdqn3tyb9xmwoxps5h7/original.jpg?fm=pjpg&auto=format",
  med_url: "https://exposure.imgix.net/production/photos/4icyvtnzczvwzgg6njdqn3tyb9xmwoxps5h7/original.jpg?fm=pjpg&auto=format",
  position: 24,
  group_position: 7,
  full_width: false,
  story_id: 11
)

Photo.create!(
  url: "https://exposure.imgix.net/production/photos/pbfspssyn207oxxsfxb3mcxrbcbf8r4arzob/original.jpg?fm=pjpg&auto=format",
  med_url: "https://exposure.imgix.net/production/photos/pbfspssyn207oxxsfxb3mcxrbcbf8r4arzob/original.jpg?fm=pjpg&auto=format",
  position: 25,
  group_position: 7,
  full_width: false,
  story_id: 11
)

Photo.create!(
  url: "https://exposure.imgix.net/production/photos/ppo873kv7qabm7sx3fecdizt8bokb2rb7034/original.jpg?fm=pjpg&auto=format",
  med_url: "https://exposure.imgix.net/production/photos/ppo873kv7qabm7sx3fecdizt8bokb2rb7034/original.jpg?fm=pjpg&auto=format",
  position: 26,
  group_position: 7,
  full_width: false,
  story_id: 11
)

Photo.create!(
  url: "https://exposure.imgix.net/production/photos/an82zhe60dfjjgqhb5vp1fw291cfcj2tlq3x/original.jpg?fm=pjpg&auto=format",
  med_url: "https://exposure.imgix.net/production/photos/an82zhe60dfjjgqhb5vp1fw291cfcj2tlq3x/original.jpg?fm=pjpg&auto=format",
  position: 27,
  group_position: 8,
  full_width: false,
  story_id: 11
)

TextArea.create!(
title: "Getting Artsy.",
body: "",
position: 28,
story_id: 11
)

TextArea.create!(
title: "",
body: "This is where a bit of creativity comes into play. Stinner painter James Bellerue went to school for graphic design and has spent a lot of time in the bike industry, particularly at shops as a mechanic. James uses wet paint (as opposed to powder coating) and a three-stage paint process:",
position: 29,
story_id: 11
)

TextArea.create!(
title: "",
body: "Priming. Base Coat (Colours, symbols, patterns). And the clear coat.",
position: 30,
story_id: 11
)

TextArea.create!(
title: "",
body: "The anthracite and pink Black Sheep | Stinner Racing bikes’ topographic schemes were particularly intricate. We don’t use stickers and everything must be masked by hand before another colour can be laid down. The bikes were painted entirely in anthracite, before being masked in order to apply the pink paint. The black topographic lines were one of the most intricate paint jobs we’ve done, and the masking for the artwork required a lot of care, skill, and patience. And some fortitude. The topography itself came from a vector pattern that was cut in masking vinyl to precisely match the digital artwork. Personalised paint jobs, designs, and symbols are never out of the question. As such, as a final touch, each bike has a logo that represents its riders (a hawk, a sloth, a peach, a kiwi, etc.)",
position: 31,
story_id: 11
)

Photo.create!(
  url: "https://exposure.imgix.net/production/photos/u8et2bgkp6iqssat7q4jcerk932tzautihfg/original.jpg?fm=pjpg&auto=format",
  med_url: "https://exposure.imgix.net/production/photos/u8et2bgkp6iqssat7q4jcerk932tzautihfg/original.jpg?fm=pjpg&auto=format",
  position: 32,
  group_position: 9,
  full_width: false,
  story_id: 11
)

Photo.create!(
  url: "https://exposure.imgix.net/production/photos/lghp8klmukk6q4zf6rktn8kt967mar0nrr1x/original.jpg?fm=pjpg&auto=format",
  med_url: "https://exposure.imgix.net/production/photos/lghp8klmukk6q4zf6rktn8kt967mar0nrr1x/original.jpg?fm=pjpg&auto=format",
  position: 33,
  group_position: 9,
  full_width: false,
  story_id: 11
)

Photo.create!(
  url: "https://exposure.imgix.net/production/photos/bqhg980lsb6ymqphd6c8k0rudius591g08pb/original.jpg?fm=pjpg&auto=format",
  med_url: "https://exposure.imgix.net/production/photos/bqhg980lsb6ymqphd6c8k0rudius591g08pb/original.jpg?fm=pjpg&auto=format",
  position: 34,
  group_position: 9,
  full_width: false,
  story_id: 11
)

Photo.create!(
  url: "https://exposure.imgix.net/production/photos/q2tzrogwgpmy0zdlb8uayvi5xe2rx0ad1x2x/original.jpg?fm=pjpg&auto=format",
  med_url: "https://exposure.imgix.net/production/photos/q2tzrogwgpmy0zdlb8uayvi5xe2rx0ad1x2x/original.jpg?fm=pjpg&auto=format",
  position: 35,
  group_position: 10,
  full_width: false,
  story_id: 11
)

Photo.create!(
  url: "https://exposure.imgix.net/production/photos/14kdco5me3s8u0wgg3cogeewmi2uio4cc0um/original.jpg?fm=pjpg&auto=format",
  med_url: "https://exposure.imgix.net/production/photos/14kdco5me3s8u0wgg3cogeewmi2uio4cc0um/original.jpg?fm=pjpg&auto=format",
  position: 36,
  group_position: 11,
  full_width: false,
  story_id: 11
)

Photo.create!(
  url: "https://exposure.imgix.net/production/photos/udlgh5qihxbk868tuu7x8ncdim4fywpga03z/original.jpg?fm=pjpg&auto=format",
  med_url: "https://exposure.imgix.net/production/photos/udlgh5qihxbk868tuu7x8ncdim4fywpga03z/original.jpg?fm=pjpg&auto=format",
  position: 37,
  group_position: 11,
  full_width: false,
  story_id: 11
)

TextArea.create!(
title: "Assembly.",
body: "",
position: 38,
story_id: 11
)

TextArea.create!(
title: "",
body: "Operations Lead Jeremy Platt and Customer Experience Lead Mark Edwards will help with all componentry and bike specification questions. Both possess a deep knowledge of bike parts and compatibility issues from years of bike shop experience and hours of research. Once the bike is painted, it moves to assembly where Jeremy will complete the process. The Black Sheep | Stinner Racing bikes are equipped with SRAM’s wireless shifting group, SRAM E-Tap, as well as cockpits from ENVE, and headsets, bottom brackets, and hubs from Chris King. Each brand is at the top of the bike industry, known for innovation, quality, and performance. The bike build can take a while – from considering ideal housing length and routing to working with tight clearances – but the bike won’t be shipped until everything is working perfectly and also looking good. The builds are test ridden and checked multiple times. Before the final step.",
position: 39,
story_id: 11
)

Photo.create!(
  url: "https://exposure.imgix.net/production/photos/oiu3nuyj1hnkikna4obgfogvi00llj2wece1/original.jpg?fm=pjpg&auto=format",
  med_url: "https://exposure.imgix.net/production/photos/oiu3nuyj1hnkikna4obgfogvi00llj2wece1/original.jpg?fm=pjpg&auto=format",
  position: 40,
  group_position: 12,
  full_width: false,
  story_id: 11
)

Photo.create!(
  url: "https://exposure.imgix.net/production/photos/qjog9h78sctc3syq7duz0k9npu1dnl4yf2wx/original.jpg?fm=pjpg&auto=format",
  med_url: "https://exposure.imgix.net/production/photos/qjog9h78sctc3syq7duz0k9npu1dnl4yf2wx/original.jpg?fm=pjpg&auto=format",
  position: 41,
  group_position: 12,
  full_width: false,
  story_id: 11
)

TextArea.create!(
title: "Lastly.",
body: "",
position: 42,
story_id: 11
)

TextArea.create!(
title: "",
body: "Jeremy’s last step is the meticulous shipping process. Getting several bikes to Australia means quite a lot of travel and we needed to make sure they arrived unscathed. We’ve shipped bikes all over the world, from Europe, to Australia, to Asia, to the Middle East. Nobody wants a bike to show up scratched or damaged, and we’ll never trust shippers 100%. Thus, the bikes are carefully prepared for shipping to guard against even the worst possible shippers.",
position: 43,
story_id: 11
)

TextArea.create!(
title: "About the Collab.",
body: "",
position: 44,
story_id: 11
)

TextArea.create!(
title: "",
body: "The Black Sheep | Stinner Racing bikes are are meant to be innovative. They are meant to be another way to test our own processes. This collaboration is a way for us to not only show that our bikes are able to perform at a high level, but also a way for us to get feedback from riders who ask the most out of their equipment, to work towards the perfect bike.",
position: 45,
story_id: 11
)
#end

#public-2
Story.create!(
  title: "Belize",
  description: "Guardians of the reef",
  user_id: 3,
  cover_image_id: 105
)

Photo.create!(
  url: "https://exposure.imgix.net/production/posts/168603/cover-photo/cover-1460539503.jpg?w=1800&q=58&fm=pjpg&auto=format",
  med_url: "https://exposure.imgix.net/production/posts/168603/cover-photo/cover-1460539503.jpg?w=1800&q=58&fm=pjpg&auto=format",
  position: 1,
  group_position: 1,
  full_width: true,
  story_id: 12
)

TextArea.create!(
title: "",
body: "A report produced for WWF shows how natural World Heritage sites across the world contribute to economic and social development through the protection of the environment, but also details global failures to protect these areas of outstanding universal value. The report echoes the voices of people we met in Belize. The Belize Barrier Reef Reserve System is shown to be at risk from unsustainable coastal construction, large-scale mangrove clearance, harmful agricultural run-off, and the potential of dangerous oil exploration. These threats put the well-being of 190,000 people – half of Belize‘s population – at risk.",
position: 2,
story_id: 12
)

TextArea.create!(
title: "",
body: "People are already finding solutions to address these threats. From mothers to fishers to scientists to developers, Belizeans are taking the reef’s future into their hands.",
position: 3,
story_id: 12
)

Photo.create!(
  url: "https://exposure.imgix.net/production/photos/vyidvxrzjkir18edtpbi96bt9whbfo8zwhna/original.jpg?fm=pjpg&auto=format",
  med_url: "https://exposure.imgix.net/production/photos/vyidvxrzjkir18edtpbi96bt9whbfo8zwhna/original.jpg?fm=pjpg&auto=format",
  position: 4,
  group_position: 2,
  full_width: false,
  story_id: 12
)

Photo.create!(
  url: "https://exposure.imgix.net/production/photos/ckmheof3dfkuli0mz8dzn0zfr7lw06oveuvm/original.jpg?fm=pjpg&auto=format",
  med_url: "https://exposure.imgix.net/production/photos/ckmheof3dfkuli0mz8dzn0zfr7lw06oveuvm/original.jpg?fm=pjpg&auto=format",
  position: 4,
  group_position: 2,
  full_width: false,
  story_id: 12
)

Photo.create!(
  url: "https://exposure.imgix.net/production/photos/sswpffm18zao2d9bz4pe97ldigafzbaxwz1j/original.jpg?fm=pjpg&auto=format",
  med_url: "https://exposure.imgix.net/production/photos/sswpffm18zao2d9bz4pe97ldigafzbaxwz1j/original.jpg?fm=pjpg&auto=format",
  position: 4,
  group_position: 2,
  full_width: false,
  story_id: 12
)

TextArea.create!(
title: "",
body: "Becoming a tour guide turned out to be the best thing that could happen to Mariko Wallen. “It opened a whole new world to me that I never really imagined,” she says. A native from the small village of Placencia in southern Belize, she used to spend her time helping out her parents at their grocery store or taking care of her two children at home. Now each day she puts on fins, snorkel and mask to dive into her workplace, an underwater world off the coast of her hometown: the Belize reef.",
position: 5,
story_id: 12
)

TextArea.create!(
title: "",
body: "A submarine wall that runs parallel to the shore of the tiny Caribbean nation, the Belize barrier reef is part of one of the largest reef systems in the world and the largest in the Western Hemisphere. More than 350 kilometers of coral build this ecosystem that provides a home for fishes, invertebrates, and other species.",
position: 6,
story_id: 12
)

TextArea.create!(
title: "'You just get caught up when you’re down there,' Wallen says. 'Seeing all the different creatures is like you’re visiting outer space.'",
body: "",
position: 7,
story_id: 12
)

Photo.create!(
  url: "https://exposure.imgix.net/production/photos/ummyrl531s4o6msji0bqvkj4iuwvwgrk69dn/original.jpg?fm=pjpg&auto=format",
  med_url: "https://exposure.imgix.net/production/photos/ummyrl531s4o6msji0bqvkj4iuwvwgrk69dn/original.jpg?fm=pjpg&auto=format",
  position: 8,
  group_position: 3,
  full_width: false,
  story_id: 12
)

Photo.create!(
  url: "https://exposure.imgix.net/production/photos/zlbhj92ovvzwbrll35hoajorhv54ajp57wd5/original.jpg?fm=pjpg&auto=format",
  med_url: "https://exposure.imgix.net/production/photos/zlbhj92ovvzwbrll35hoajorhv54ajp57wd5/original.jpg?fm=pjpg&auto=format",
  position: 9,
  group_position: 3,
  full_width: false,
  story_id: 12
)

Photo.create!(
  url: "https://exposure.imgix.net/production/photos/ish9wpmjv2a8034ayk3xrzo0org0scast6fx/original.jpg?fm=pjpg&auto=format",
  med_url: "https://exposure.imgix.net/production/photos/ish9wpmjv2a8034ayk3xrzo0org0scast6fx/original.jpg?fm=pjpg&auto=format",
  position: 10,
  group_position: 3,
  full_width: false,
  story_id: 12
)

TextArea.create!(
title: "",
body: "A living network of incredible complexity, the reef means everything for Belizeans. A WWF report calculates that more than half of Belize’s population, or about 190,000 people, are supported by incomes generated through reef-related tourism and fisheries. The reef is key to sustain Belize and its people, and it is a prime draw for Belize’s booming tourism industry. The reef also works as a first line of defense against natural disasters, shielding the coast from floods and storms and providing stability to the shoreline.",
position: 11,
story_id: 12
)

TextArea.create!(
title: "",
body: "Despite being no stranger to the sea, growing up as the daughter of a traditional fisherman, tour guiding opened Wallen’s eyes to how important the reef actually is: “I guess it was time for me to acknowledge what we have here and to not take it for granted.",
position: 12,
story_id: 12
)

TextArea.create!(
title: "",
body: "The Belize Barrier Reef Reserve System – made up of seven distinct sites strung out along Belize’s coast – was designated a UNESCO World Heritage site in 1996 in recognition of its “unique array of reef types” and diversity of marine species. But the once pristine system has suffered damage brought by both people and nature itself. Several hurricanes have directly hit the reef, which can take years to recover; waters warmed by El Niño events have triggered coral bleaching; harmful industrial activities have polluted and fragmented the reef and its habitats. The combined effects of these events prompted UNESCO in 2009 to place the Belize Barrier Reef Reserve System on the List of World Heritage in Danger. Today it’s at its most vulnerable point.",
position: 13,
story_id: 12
)

Photo.create!(
  url: "https://exposure.imgix.net/production/photos/y47t1dffr69bffflxy7hqia4i4p97mps6yzt/original.jpg?fm=pjpg&auto=format",
  med_url: "https://exposure.imgix.net/production/photos/y47t1dffr69bffflxy7hqia4i4p97mps6yzt/original.jpg?fm=pjpg&auto=format",
  position: 14,
  group_position: 4,
  full_width: false,
  story_id: 12
)

Photo.create!(
  url: "https://exposure.imgix.net/production/photos/lnuoq95qlwd3iemddeu3dilt1me0sarjtprj/original.jpg?fm=pjpg&auto=format",
  med_url: "https://exposure.imgix.net/production/photos/lnuoq95qlwd3iemddeu3dilt1me0sarjtprj/original.jpg?fm=pjpg&auto=format",
  position: 15,
  group_position: 4,
  full_width: false,
  story_id: 12
)

Photo.create!(
  url: "https://exposure.imgix.net/production/photos/zv4l0mrroe8tse8un8z1tt91aj6ca4eu1no8/original.jpg?fm=pjpg&auto=format",
  med_url: "https://exposure.imgix.net/production/photos/zv4l0mrroe8tse8un8z1tt91aj6ca4eu1no8/original.jpg?fm=pjpg&auto=format",
  position: 16,
  group_position: 4,
  full_width: false,
  story_id: 12
)

Photo.create!(
  url: "https://exposure.imgix.net/production/photos/pigmnq2u9xiwfqqmf3cjtt911tyy2tgx3s7y/original.jpg?fm=pjpg&auto=format",
  med_url: "https://exposure.imgix.net/production/photos/pigmnq2u9xiwfqqmf3cjtt911tyy2tgx3s7y/original.jpg?fm=pjpg&auto=format",
  position: 17,
  group_position: 5,
  full_width: false,
  story_id: 12
)

Photo.create!(
  url: "https://exposure.imgix.net/production/photos/n5zv8vi3bfd4gkwfzd9tz9f6rv93qsd3fkne/original.jpg?fm=pjpg&auto=format",
  med_url: "https://exposure.imgix.net/production/photos/n5zv8vi3bfd4gkwfzd9tz9f6rv93qsd3fkne/original.jpg?fm=pjpg&auto=format",
  position: 18,
  group_position: 5,
  full_width: false,
  story_id: 12
)

TextArea.create!(
title: "",
body: "Rather than hoping that the reef somehow manages to heal itself, some Belizeans have decided to take the reef’s future into their hands and are making significant efforts to protect the natural capital that sustains them. For Wallen, that moment came in 2012 when she started volunteering with Fragments of Hope, a local organization working to replenish coral areas that have been wiped out in the past.",
position: 19,
story_id: 12
)

TextArea.create!(
title: "",
body: "With support from WWF, they’re making progress rebuilding the reef and increasing biodiversity. “If it wasn’t for the restoration work, you would mostly see dead rubble here,” she says. But Wallen is not the only one reclaiming responsibility for the reef. Marine biologist Kirah Foreman works in northern Belize at Hol Chan Marine Reserve.",
position: 20,
story_id: 12
)

TextArea.create!(
title: "",
body: "Though not one of the World Heritage locations, Hol Chan is the oldest and only self-sustaining marine protected area in the country. Foreman believes this is because of the way they have approached the community, working closely with tour guides and fishers. While some marine protected areas prohibit fishing, in Hol Chan the protected area designation is used as a fisheries management tool. Locals have the traditional right to fish and rangers chase out fishers that come from other areas. It’s another way to avoid overfishing. “You can’t keep [locals] out,” Foreman says. “We have a lot of people questioning that decision, but then you look at a place like this, where it’s actually working.” In fact, Hol Chan is recognized as a biodiversity hotspot of the Caribbean-Atlantic and has expanded at least three times since it was declared.",
position: 21,
story_id: 12
)

Photo.create!(
  url: "https://exposure.imgix.net/production/photos/8uqacied7ch1vcxjahj5g66r8guz92i4e3it/original.jpg?fm=pjpg&auto=format",
  med_url: "https://exposure.imgix.net/production/photos/8uqacied7ch1vcxjahj5g66r8guz92i4e3it/original.jpg?fm=pjpg&auto=format",
  position: 22,
  group_position: 6,
  full_width: false,
  story_id: 12
)

Photo.create!(
  url: "https://exposure.imgix.net/production/photos/8pkjwslneadmnxlhgxsxrms4ibpn7tq6nzhi/original.jpg?fm=pjpg&auto=format",
  med_url: "https://exposure.imgix.net/production/photos/8pkjwslneadmnxlhgxsxrms4ibpn7tq6nzhi/original.jpg?fm=pjpg&auto=format",
  position: 23,
  group_position: 6,
  full_width: false,
  story_id: 12
)

Photo.create!(
  url: "https://exposure.imgix.net/production/photos/mfygey5kzm48ji7v5hw4gqfrtgg8toz1is8c/original.jpg?fm=pjpg&auto=format",
  med_url: "https://exposure.imgix.net/production/photos/mfygey5kzm48ji7v5hw4gqfrtgg8toz1is8c/original.jpg?fm=pjpg&auto=format",
  position: 24,
  group_position: 6,
  full_width: false,
  story_id: 12
)

TextArea.create!(
title: "",
body: "Located a few miles north of Hol Chan along Belize’s largest island, Ambergris Caye, lies the marine reserve of Bacalar Chico. Despite sharing the same island, and being one of the seven locations that make up the World Heritage site, Bacalar Chico is arguably having a harder time of it than Hol Chan, especially for turtles. Turtles were the reason Foreman started working at marine reserves in the first place. “Once you start working with them, you get hooked,” she says.",
position: 25,
story_id: 12
)

TextArea.create!(
title: "",
body: "But in recent years they have been struggling to survive. Temperature plays a fundamental role in marine turtle development – it even determines whether the embryo will transform into a male or a female. But if the temperature is too high for too long, they just die. Same thing is true with water – developing eggs need some moisture, but if a nest is flooded by high tides, the eggs will perish. Foreman and her colleagues fear this will happen more frequently as the sea level rises.",
position: 26,
story_id: 12
)

TextArea.create!(
title: "",
body: "But even without the long-term threat of climate change, the future is grim for the turtles and the reef. Unlike Hol Chan, Bacalar Chico and the surrounding areas have witnessed a significant expansion of coastal construction, including mega resorts and cruise terminals.",
position: 27,
story_id: 12
)

TextArea.create!(
title: "",
body: "But badly-planned and executed projects can degrade the natural assets that draw tourists in the first place. Hol Chan marine reserve works with tour guides who want to ensure that the environment is protected. After all, if there’s nothing left for tourists to see, they’ll most likely lose their jobs. The guides recognize the link between keeping the mangroves and seagrass beds safe and having a healthy reef, but most developers and investors haven’t yet.",
position: 28,
story_id: 12
)

TextArea.create!(
title: "",
body: "Historically, the turtles used to nest along all the island’s beaches. Now their nesting ground has been restricted to a single privately owned beach called Robles Point. “It’s prime real estate, so there is a threat that at some point somebody is going to purchase these properties,” Foreman says. If that should happen, turtles may not have a place to nest anymore. ",
position: 29,
story_id: 12
)

Photo.create!(
  url: "https://exposure.imgix.net/production/photos/aa1li7cpcx7hievzjd8hkhuxr8yn12za10ef/original.jpg?fm=pjpg&auto=format",
  med_url: "https://exposure.imgix.net/production/photos/aa1li7cpcx7hievzjd8hkhuxr8yn12za10ef/original.jpg?fm=pjpg&auto=format",
  position: 30,
  group_position: 7,
  full_width: true,
  story_id: 12
)

TextArea.create!(
title: "",
body: "Cases of unsustainable coastal construction abound in Belize. One recent example is the project at Harvest Caye, an island near Placencia. The construction of a cruise ship terminal on this small island has involved dredging, dumping of rocks and sand on corals, and clearing mangroves. When completed, the route from Harvest Caye to the mainland to take passengers to inland tours will cross right through primary breeding grounds for the West Indian manatee, raising the risk of watercraft collisions, which is one of the main threats to the vulnerable animal.",
position: 31,
story_id: 12
)

TextArea.create!(
title: "",
body: "The project is inconsistent with Belize’s National Sustainable Tourism Master Plan, a framework that is strong on paper, but which has apparently been insufficient to guide decision-making on the suitability of such projects. But that could soon change with the full resourcing and implementation of a national coastal zone management plan, recently endorsed by the cabinet, which includes recommendations for the sustainable use of Belize’s coastal and marine environment.",
position: 32,
story_id: 12
)

TextArea.create!(
title: "",
body: "In January 2015, rumors spread about plans to drill for oil in Belize’s waters. By December of last year, the government announced it intended to implement a policy to ban offshore oil exploration in the Belize Barrier Reef Reserve System World Heritage site. This is good news, but the measure is not enough. Altogether, the area in which oil exploration would be prohibited would only cover around 15 per cent of the marine environment, which leaves 85 per cent susceptible to offshore concessions, oil exploration and drilling. Given the relatively small area of Belize’s offshore waters, and the nature of the ocean currents in this part of the Caribbean, any oil-related accident in the areas outside the World Heritage locations would likely have an impact on them. Combine this with the fact that Belize lacks any capacity to respond to marine oil spills, and the risk to the Belize World Heritage site, and the wider reef, would seem to remain despite the intended oil ban.",
position: 33,
story_id: 12
)

TextArea.create!(
title: "However, the biggest challenge for the country is yet to come",
body: "",
position: 34,
story_id: 12
)

Photo.create!(
  url: "https://exposure.imgix.net/production/photos/xkd2pm1p9fp3o1zi4x36usormicay1zg0yww/original.jpg?fm=pjpg&auto=format",
  med_url: "https://exposure.imgix.net/production/photos/xkd2pm1p9fp3o1zi4x36usormicay1zg0yww/original.jpg?fm=pjpg&auto=format",
  position: 35,
  group_position: 8,
  full_width: false,
  story_id: 12
)

Photo.create!(
  url: "https://exposure.imgix.net/production/photos/97wr8tss2plcjohc09q9f6rkfxdoit0utllf/original.jpg?fm=pjpg&auto=format",
  med_url: "https://exposure.imgix.net/production/photos/97wr8tss2plcjohc09q9f6rkfxdoit0utllf/original.jpg?fm=pjpg&auto=format",
  position: 36,
  group_position: 8,
  full_width: false,
  story_id: 12
)
#end

#public3
Story.create!(
  title: "The Large Hadron Collider",
  description: "at CERN",
  user_id: 3,
  cover_image_id: 123
)

Photo.create!(
  url: "https://exposure.imgix.net/production/posts/50421/cover-photo/cover-1405074651.jpg?w=1800&q=58&fm=pjpg&auto=format",
  med_url: "https://exposure.imgix.net/production/posts/50421/cover-photo/cover-1405074651.jpg?w=1800&q=58&fm=pjpg&auto=format",
  position: 1,
  group_position: 1,
  full_width: true,
  story_id: 13
)

TextArea.create!(
title: "The Tunnel",
body: "The Large Hadron Collider was shut down in 2013 to allow for upgrades. It will run again at twice the energy in 2015. This is a perfect opportunity to visit the site and access the various parts. When it’s in operation, no one is allowed in the tunnel.",
position: 2,
story_id: 13
)

TextArea.create!(
title: "",
body: "100 meters underground, the tunnel is 27 km long. It’s not perfectly circular, it has straight segments to allow for collisions and acceleration. The curved parts don’t accelerate the protons, they just carry them and focus them.",
position: 3,
story_id: 13
)

Photo.create!(
  url: "https://exposure.imgix.net/production/photos/f6cpi6w63y72k3aumub6rx7xb9bw0su78ks6/original.jpg?fm=pjpg&auto=format",
  med_url: "https://exposure.imgix.net/production/photos/f6cpi6w63y72k3aumub6rx7xb9bw0su78ks6/original.jpg?fm=pjpg&auto=format",
  position: 4,
  group_position: 2,
  full_width: false,
  story_id: 13
)

Photo.create!(
  url: "https://exposure.imgix.net/production/photos/cyik9p8a7syuvfhfdyfho4ru1az81m5l2gqk/original.jpg?fm=pjpg&auto=format",
  med_url: "https://exposure.imgix.net/production/photos/cyik9p8a7syuvfhfdyfho4ru1az81m5l2gqk/original.jpg?fm=pjpg&auto=format",
  position: 5,
  group_position: 2,
  full_width: false,
  story_id: 13
)

Photo.create!(
  url: "https://exposure.imgix.net/production/photos/xrfyijkl4dciprwz7ipndr6l7jnd3gfonm18/original.jpg?fm=pjpg&auto=format",
  med_url: "https://exposure.imgix.net/production/photos/xrfyijkl4dciprwz7ipndr6l7jnd3gfonm18/original.jpg?fm=pjpg&auto=format",
  position: 6,
  group_position: 3,
  full_width: false,
  story_id: 13
)

Photo.create!(
  url: "https://exposure.imgix.net/production/photos/qen8qn2ffg9nvskor8btgw6hyc7ma5jgjdvz/original.jpg?fm=pjpg&auto=format",
  med_url: "https://exposure.imgix.net/production/photos/qen8qn2ffg9nvskor8btgw6hyc7ma5jgjdvz/original.jpg?fm=pjpg&auto=format",
  position: 7,
  group_position: 3,
  full_width: false,
  story_id: 13
)

TextArea.create!(
title: "The CMS Collider",
body: "Several detectors are spread around the LHC. They are called experiments and they operate independently from each other. The CMS Collider is one of the biggest detectors. It participated in the discovery of the Higgs boson. The two beams of protons collide head on in the middle of the detector and all the resulting subatomic particles fly in all directions from there, through the giant machine. Inside it, powerful magnets curve the trajectories of electrically charged particles. Here, the CMS is wide open for maintenance.",
position: 8,
story_id: 13
)

Photo.create!(
  url: "https://exposure.imgix.net/production/photos/y5vwxtb41emuz9xjbqd6b0u7oyywlyua4dxg/original.jpg?fm=pjpg&auto=format",
  med_url: "https://exposure.imgix.net/production/photos/y5vwxtb41emuz9xjbqd6b0u7oyywlyua4dxg/original.jpg?fm=pjpg&auto=format",
  position: 9,
  group_position: 4,
  full_width: false,
  story_id: 13
)

Photo.create!(
  url: "https://exposure.imgix.net/production/photos/xifz8mhpet8iksnx65bgury68x3gxlwvpqtx/original.jpg?fm=pjpg&auto=format",
  med_url: "https://exposure.imgix.net/production/photos/xifz8mhpet8iksnx65bgury68x3gxlwvpqtx/original.jpg?fm=pjpg&auto=format",
  position: 10,
  group_position: 5,
  full_width: false,
  story_id: 13
)

Photo.create!(
  url: "https://exposure.imgix.net/production/photos/9ipkbegx7673a6krt35oylyfa98lwc7rk5k6/original.jpg?fm=pjpg&auto=format",
  med_url: "https://exposure.imgix.net/production/photos/9ipkbegx7673a6krt35oylyfa98lwc7rk5k6/original.jpg?fm=pjpg&auto=format",
  position: 11,
  group_position: 5,
  full_width: false,
  story_id: 13
)

Photo.create!(
  url: "https://exposure.imgix.net/production/photos/ukuvpmriufnjh9gdamprfvze0eu4i3bksj67/original.jpg?fm=pjpg&auto=format",
  med_url: "https://exposure.imgix.net/production/photos/ukuvpmriufnjh9gdamprfvze0eu4i3bksj67/original.jpg?fm=pjpg&auto=format",
  position: 12,
  group_position: 5,
  full_width: false,
  story_id: 13
)

Photo.create!(
  url: "https://exposure.imgix.net/production/photos/mcdhl4165uihml911bs5icjme3piw0odem9d/original.jpg?fm=pjpg&auto=format",
  med_url: "https://exposure.imgix.net/production/photos/mcdhl4165uihml911bs5icjme3piw0odem9d/original.jpg?fm=pjpg&auto=format",
  position: 13,
  group_position: 5,
  full_width: false,
  story_id: 13
)

TextArea.create!(
title: "Big Data",
body: "One petabyte of data is sent from the various experiments on the LHC to the processing room each day. That is after a first filtering pass on the experiments sites where 99% of the data is discarded. 40,000 km of fiber optic cables run through the entire site.",
position: 14,
story_id: 13
)

Photo.create!(
  url: "https://exposure.imgix.net/production/photos/plrjagyumvlg0fqo7eaul6kpyni3nfgk7m2i/original.jpg?fm=pjpg&auto=format",
  med_url: "https://exposure.imgix.net/production/photos/plrjagyumvlg0fqo7eaul6kpyni3nfgk7m2i/original.jpg?fm=pjpg&auto=format",
  position: 15,
  group_position: 6,
  full_width: false,
  story_id: 13
)

Photo.create!(
  url: "https://exposure.imgix.net/production/photos/wfz23pajm3cr8y8wfin6prl35d0mf4omqf6d/original.jpg?fm=pjpg&auto=format",
  med_url: "https://exposure.imgix.net/production/photos/wfz23pajm3cr8y8wfin6prl35d0mf4omqf6d/original.jpg?fm=pjpg&auto=format",
  position: 16,
  group_position: 6,
  full_width: false,
  story_id: 13
)

Photo.create!(
  url: "https://exposure.imgix.net/production/photos/juiz410n0se8fe52jezs7uxbr9o7gdf5yh0u/original.jpg?fm=pjpg&auto=format",
  med_url: "https://exposure.imgix.net/production/photos/juiz410n0se8fe52jezs7uxbr9o7gdf5yh0u/original.jpg?fm=pjpg&auto=format",
  position: 17,
  group_position: 6,
  full_width: false,
  story_id: 13
)

TextArea.create!(
title: "The Processing Room",
body: "The data from the experiments is sent here to be processed in order to compute the trajectory of particles. 10,000 servers. 90,000 cores. 3.5 MegaWatts, plus air conditioning.",
position: 18,
story_id: 13
)

Photo.create!(
  url: "https://exposure.imgix.net/production/photos/xirlxjuikmz22i1xgit0kbk8f4w7dm5bhiu2/original.jpg?fm=pjpg&auto=format",
  med_url: "https://exposure.imgix.net/production/photos/xirlxjuikmz22i1xgit0kbk8f4w7dm5bhiu2/original.jpg?fm=pjpg&auto=format",
  position: 19,
  group_position: 7,
  full_width: false,
  story_id: 13
)

Photo.create!(
  url: "https://exposure.imgix.net/production/photos/ck7xmxdl7bogtvnysfmunsdbylftocaog085/original.jpg?fm=pjpg&auto=format",
  med_url: "https://exposure.imgix.net/production/photos/ck7xmxdl7bogtvnysfmunsdbylftocaog085/original.jpg?fm=pjpg&auto=format",
  position: 20,
  group_position: 8,
  full_width: false,
  story_id: 13
)

Photo.create!(
  url: "https://exposure.imgix.net/production/photos/m1mhvx4qy7ut80uc66e8bva2vflca5z698vu/original.jpg?fm=pjpg&auto=format",
  med_url: "https://exposure.imgix.net/production/photos/m1mhvx4qy7ut80uc66e8bva2vflca5z698vu/original.jpg?fm=pjpg&auto=format",
  position: 21,
  group_position: 9,
  full_width: false,
  story_id: 13
)

Photo.create!(
  url: "https://exposure.imgix.net/production/photos/f9cv2fr3c2v1qsepli23gdwjbattcksq34dp/original.jpg?fm=pjpg&auto=format",
  med_url: "https://exposure.imgix.net/production/photos/f9cv2fr3c2v1qsepli23gdwjbattcksq34dp/original.jpg?fm=pjpg&auto=format",
  position: 22,
  group_position: 10,
  full_width: false,
  story_id: 13
)

Photo.create!(
  url: "https://exposure.imgix.net/production/photos/thf46n6h94d5ywq7kv1w05hrf91p4slsexvc/original.jpg?fm=pjpg&auto=format",
  med_url: "https://exposure.imgix.net/production/photos/thf46n6h94d5ywq7kv1w05hrf91p4slsexvc/original.jpg?fm=pjpg&auto=format",
  position: 23,
  group_position: 10,
  full_width: false,
  story_id: 13
)

Photo.create!(
  url: "https://exposure.imgix.net/production/photos/e1f1b0g6q2emu8knkt93kh0607sfb7r0vdl1/original.jpg?fm=pjpg&auto=format",
  med_url: "https://exposure.imgix.net/production/photos/e1f1b0g6q2emu8knkt93kh0607sfb7r0vdl1/original.jpg?fm=pjpg&auto=format",
  position: 24,
  group_position: 10,
  full_width: false,
  story_id: 13
)

Photo.create!(
  url: "https://exposure.imgix.net/production/photos/k7ugdf5b48jn7kz654zyomr647d26d6zdguf/original.jpg?fm=pjpg&auto=format",
  med_url: "https://exposure.imgix.net/production/photos/k7ugdf5b48jn7kz654zyomr647d26d6zdguf/original.jpg?fm=pjpg&auto=format",
  position: 25,
  group_position: 11,
  full_width: false,
  story_id: 13
)

Photo.create!(
  url: "https://exposure.imgix.net/production/photos/xl77drle3mk7m0if52lgp0bg6t6zizovh9fk/original.jpg?fm=pjpg&auto=format",
  med_url: "https://exposure.imgix.net/production/photos/xl77drle3mk7m0if52lgp0bg6t6zizovh9fk/original.jpg?fm=pjpg&auto=format",
  position: 26,
  group_position: 11,
  full_width: false,
  story_id: 13
)

TextArea.create!(
title: "The Tourist Room",
body: "This place is the sexiest room in the entire CERN. The windows become a giant touchscreen to playback some educational videos. They revert to transparent windows when the videos are over to provide a nice overlook on the processing room. ",
position: 27,
story_id: 13
)

Photo.create!(
  url: "https://exposure.imgix.net/production/photos/70y5fhc9iwhqc2iy3kzt5ge9a7yai79rk0a5/original.jpg?fm=pjpg&auto=format",
  med_url: "https://exposure.imgix.net/production/photos/70y5fhc9iwhqc2iy3kzt5ge9a7yai79rk0a5/original.jpg?fm=pjpg&auto=format",
  position: 28,
  group_position: 12,
  full_width: true,
  story_id: 13
)

TextArea.create!(
title: "The Control Room",
body: "Not as sexy as most people would imagine it, the control room is where everything is run. Each quasi-circle is the center of operation for a different part of the accelerator: cryogenics, the SPS (Super Proton Synchrotron) which acts as a pre-accelerator and the LHC itself.",
position: 29,
story_id: 13
)

Photo.create!(
  url: "https://exposure.imgix.net/production/photos/pvhxfigo8vh4s3jklh3yhbq8y8tiwo9pk765/original.jpg?fm=pjpg&auto=format",
  med_url: "https://exposure.imgix.net/production/photos/pvhxfigo8vh4s3jklh3yhbq8y8tiwo9pk765/original.jpg?fm=pjpg&auto=format",
  position: 30,
  group_position: 13,
  full_width: false,
  story_id: 13
)

Photo.create!(
  url: "https://exposure.imgix.net/production/photos/xgcis6l1iru4smi70045h1l0eq50g306u530/original.jpg?fm=pjpg&auto=format",
  med_url: "https://exposure.imgix.net/production/photos/xgcis6l1iru4smi70045h1l0eq50g306u530/original.jpg?fm=pjpg&auto=format",
  position: 31,
  group_position: 14,
  full_width: false,
  story_id: 13
)

Photo.create!(
  url: "https://exposure.imgix.net/production/photos/0g5fg4cuwrjmmqelgam6315kc2kxtznj5skt/original.jpg?fm=pjpg&auto=format",
  med_url: "https://exposure.imgix.net/production/photos/0g5fg4cuwrjmmqelgam6315kc2kxtznj5skt/original.jpg?fm=pjpg&auto=format",
  position: 32,
  group_position: 14,
  full_width: false,
  story_id: 13
)
#end
