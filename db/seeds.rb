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
