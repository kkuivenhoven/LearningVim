# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

@blogOne = Blog.create!(title: "Cupcake Ipsum", post: "Cupcake ipsum dolor sit amet. Chocolate bar donut muffin cupcake tiramisu caramels biscuit oat cake. Cake sesame snaps cheesecake powder chupa chups cotton candy tiramisu tart. Cupcake sweet cookie. Gummi bears marshmallow fruitcake. Cake chocolate bar pastry toffee candy canes pastry chocolate cake. Powder croissant candy chupa chups dragée cotton candy liquorice. Carrot cake cake cotton candy. Soufflé cake sweet roll lemon drops. Candy liquorice candy sesame snaps cookie. Gummies lemon drops fruitcake jujubes tootsie roll danish. Icing chocolate candy bear claw cheesecake dessert apple pie bear claw. Pie muffin cake tootsie roll cheesecake tiramisu caramels.")

@blogTwo = Blog.create!(title: "Cheese Ipsum", post: "Cheesy grin lancashire mozzarella. Bavarian bergkase cheese and wine who moved my cheese taleggio queso chalk and cheese paneer feta. Paneer manchego cheesy feet macaroni cheese cauliflower cheese jarlsberg croque monsieur cheesecake. Cheesy feet cheese and biscuits goat stilton parmesan blue castello fromage frais halloumi. Cheese triangles everyone loves macaroni cheese cheese on toast.")

@blogThree = Blog.create!(title: "Yar Pirate Ipsum", post: "League tender man-of-war Blimey squiffy list keelhaul salmagundi fathom Brethren of the Coast. Avast man-of-war ye jury mast keelhaul schooner Cat o'nine tails parrel Letter of Marque Arr. Swing the lead loot square-rigged Barbary Coast Sail ho bowsprit brigantine mizzenmast to go on account hearties.")

@blogFour = Blog.create!(title: "Office Life Ipsum", post: "Make it sexy that will be a conversation piece and needs to be sleeker. Can you make the font bigger? it's great, can you add a beard though . I really like the colour but can you change it I like it, but can the snow look a little warmer i cant pay you nor doing some work for us 'pro bono' will really add to your portfolio i promise you are lucky to even be doing this for us, yet this turned out different that i decscribed. You might wanna give it another shot mmm, exactly like that, but different for we don't need a backup, it never goes down! can you put 'find us on facebook' by the facebook logo? for make it original, but can you please change the color theme of the website to pink and purple? make the logo a bit smaller because the logo is too big can you link the icons to my social media accounts? oh and please put pictures of cats everywhere but concept is bang on, but can we look at a better execution. Could you move it a tad to the left we are a startup, so can you make it look more designed so we don't need a contract, do we.")

@blogOne.hash_tags << HashTag.create!(name: "hipster")
@blogOne.hash_tags << HashTag.create!(name: "cupcake")
@blogOne.hash_tags << HashTag.create!(name: "baking")
@blogOne.hash_tags << HashTag.create!(name: "fancy")
@blogOne.hash_tags << HashTag.create!(name: "sweets")

@blogTwo.hash_tags << HashTag.where(name: "hipster")
@blogTwo.hash_tags << HashTag.where(name: "fancy")
@blogTwo.hash_tags << HashTag.create!(name: "dairy")
@blogTwo.hash_tags << HashTag.create!(name: "tasty")
@blogTwo.hash_tags << HashTag.create!(name: "work-life")

@blogThree.hash_tags << HashTag.create!(name: "ahoy")
@blogThree.hash_tags << HashTag.create!(name: "bounty")
@blogThree.hash_tags << HashTag.create!(name: "pirate")
@blogThree.hash_tags << HashTag.where(name: "fancy")
@blogThree.hash_tags << HashTag.where(name: "work-life")

@blogFour.hash_tags << HashTag.where(name: "work-life")
@blogFour.hash_tags << HashTag.where(name: "pirate")
@blogFour.hash_tags << HashTag.where(name: "hipster")
@blogFour.hash_tags << HashTag.where(name: "work-life")
@blogFour.hash_tags << HashTag.create!(name: "office")


