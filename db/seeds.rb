# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Activity.destroy_all
User.destroy_all

p = "password123"
# activities

puts "Creating activities dark and full of terrors"


# users

puts "Creating really hot and creepy users"

User.create(
    first_name: "Harry",
    email: "h.potter@ministryofmagic.gouv.com",
    password: p,
    avatar: "https://source.unsplash.com/XhMSz5I1kn8/",
    description: "I'm a professional quidditch player and a bona fide sport afficionado."
  )

User.create(
    first_name: "Firenze",
    email: "f.centaurusr@gmail.com",
    password: p,
    avatar: "https://source.unsplash.com/5OjfCQduO9E/",
    description: "I was born on a horse. If you'd like to discover Paris surroundings in a less conventional way, I would love to show you beautiful and unexpected places."
    )

User.create(
    first_name: "Victor",
    email: "v.krum@gmail.com",
    password: p,
    avatar: "https://source.unsplash.com/QCPXRvl9Ylc/",
    description: "As a student in Medieval History, Paris is more than a home for me: it's a teacher, a lover, a mystery to be relentlessly discovered."
  )

User.create(
    first_name: "George",
    email: "g.weasley@gmail.com",
    password: p,
    avatar: "https://source.unsplash.com/vMV6r4VRhJ8/",
    description: "A good laugh heals a lot of hurts. A little bit of thrill can't hurt either"
  )

User.create(
    first_name: "Severus",
    email: "s.snape@gmail.com",
    password: p,
    avatar: "https://source.unsplash.com/SZ9y9PGVQbY/",
    description: "Always"
  )

User.create(
    first_name: "Fenrir",
    email: "f.greyback@gmail.com",
    password: p,
    avatar: "https://source.unsplash.com/aWQhVALvDZ4/",
    description: "I belong to the darkness. I'll show you the darker side of the City of Lights, full of tortures, witchcraft and crimes"
  )

User.create(
    first_name: "Neuville",
    email: "n.longbottom@gmail.com",
    password: p,
    avatar: "https://source.unsplash.com/i4OHxtxiMtk",
    description: "Artist by night and by day, street art and urban culture are my jam"
  )

User.create(
    first_name: "Cedric",
    email: "c.diggory@gmail.com",
    password: p,
    avatar: "https://source.unsplash.com/iJVDkgWqp3U",
    description: "I was born a guitar a hand and violon in the other. Wether you're looking for the jazziest jam session, a more classical concerto evening or trying to learn accordion - I'm your guy."
  )


Activity.create!(name: "Satanism and Paris",
  description: "If the Age of the Enlightenment and its philosophers has been greatly influenced by French authors, the XIX century marks the return of the devil. Even Victor Hugo had gladly accepted the title of president of the Satanic Temple of France, French press had awarded him.",
  price: "25",
  address: "Place Saint-Michel, Paris",
  photo: "../images/satanism.jpg",
  category: "Occult & Esotericism",
  user: User.first)

Activity.create!(name: "Dublin Ghosts Tour",
  description: "From sinister surgeons and bodysnatchers to ghosts and ghouls... Discover mythological villains and real ones too, buried deep in Dublin's gruesome past. Visit a medieval vault a hidden city graveyard. It's a night tour and there's quite a bit of walking involved, so put on your sneakers. Besides heels aren't practical when running away from werewolves.",
  price: "25",
  address: "Christchurch, Dublin",
  photo: "dublin_bus.jpg",
  category: "Occult & Esotericism",
  user: User.first)

Activity.create!(name: "Zombie Hunt",
  description: "History shows that this idea dates back to the 8th century. The word 'zombie' is said to have come from nzambi, which in Kongo means 'spirit of a dead person', or zonbi, used in the Louisiana Creole or the Haitian Creole that represents a person who died and was then brought to life without speech or free will. If you're ready for the hunt, be careful not to become the prey.",
  price: "12",
  address: "Louisiana",
  photo: "../images/zombie_hunt.jpg",
  category: "Occult & Esotericism",
  user: User.first)

Activity.create!(name: "Ghosts of Montmartre",
  description: "Mont de Mars - the soon-to-become Mont des Martyrs where Saint-Denis, decapitated, would hold his severed head and haunt the streets of the hill. Follow me for a visit hosted by the phantoms - famous or not, of the hillock. Relive the tragedy of Montmartre's windmills, the insanity of its artists (Van Gogh, Nerval...) or the invasion of Place du Tertre.",
  price: "20",
  address: "Montmartre, Paris",
  photo: "../images/ghost_montmartre.jpg",
  category: "Occult & Esotericism",
  user: User.first)

Activity.create!(name: "Sedlec Ossuary",
  description: "The Sedlec Ossuary is nothing spectacular in the outside. It is a small chapel located in Sedlec, in the suburbs of Kutna Hora, in the Czech Republic. You would think that it is just an average old medieval gothic church. As you enter the Sedlec Ossuary though, you will soon realize why it is one of the most amazing and unique churches in the world.The Sedlec Ossuary is artistically decorated by more than 40.000 human skeletons.",
  price: "20",
  address: "Kutná Hora",
  photo: "../images/bone_chapel.jpg",
  category: "Culture & History",
  user: User.first)

Activity.create!(name: "Mystery in Edinburgh",
  description: "As you walk up the Royal Mile, it's hard to miss the arched entryways that sit on either side. Signposted with odd names like 'Fleshmarket', 'Lady Stair's' and 'World's End', these closes, wynds, courts and entries play an essential role in Edinburgh's charming infrastructure. Situated within the (former) town walls, the exceptionally narrow streets weren't a mistake of engineering. With the threat of English attack always at the forefront, skinny streets surrounded by tall buildings provided early city dwellers with protection and peace of mind. Edinburgh's medieval honeycomb of hidden alleyways also contains some of the city's best stories, secrets and mysteries. Many of Edinburgh's most influential characters once called these closes home – and some are believed to still lurk among the cobblestones.",
  price: "10",
  address: "High Street, Edinburgh",
  photo: "../images/edinburgh.jpg",
  category: "Culture & History",
  user: User.first)

Activity.create!(name: "In the Footsteps of Jack The Ripper",
  description: "As the night falls, and the long shadows reach into the darker recesses of the streets of Whitechapel and Spitalfields, our Original Jack the Ripper Crime Scene Investigation sets out  to join the Victorian police as they hunt history's most infamous serial killer through the crooked, cobbled alleyways of the Victorian abyss. Step by blood-curdling step, you will find yourself spirited back to the mean streets of the 19th century East End where every corner turned and every step taken will lead you further in to a murder mystery that has been baffling and terrifying people for more than 125 years.",
  price: "35",
  address: "London",
  photo: "../images/the_ripper.jpg",
  category: "True Crime",
  user: User.first)


