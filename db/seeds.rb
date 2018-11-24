# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'cleaning the soffie db...'

BookCategory.delete_all
UsersBook.delete_all
Category.delete_all
User.delete_all

puts 'planting seeds for soffie...'

esteban = User.create(email: 'esteban@lewagon.org', password: 'wagonwagon', first_name: 'esteban', last_name: 'montantes')
claire = User.create(email: 'claire@lewagon.org', password: 'wagonwagon', first_name: 'claire', last_name: 'sackman')
camille = User.create(email: 'camille@lewagon.org', password: 'wagonwagon', first_name: 'camille', last_name: 'villard')
serge = User.create(email: 'serge@lewagon.org', password: 'wagonwagon', first_name: 'serge', last_name: 'leclerc' )


harry_potter_2 = UsersBook.create(
    user_id: camille.id,
    title: 'Harry Potter And The Chamber Of Secrets',
    author: 'JK Rowling',
    isbn: 9780747538486,
    image_url: "http://books.google.com/books/content?id=_kLanQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api",
    num_pages: 3408,
    reading_time: "312308.4",
    description: "'There is a plot, Harry Potter. A plot to make most terrible things happen at Hogwarts School of Witchcraft and Wizardry this year. Harry Potter's summer has included the worst birthday ever, doomy warnings from a house-elf called Dobby, and rescue from the Dursleys by his friend Ron Weasley in a magical flying car! Back at Hogwarts School of Witchcraft and Wizardry for his second year, Harry hears strange whispers echo through empty corridors - and then the attacks start. Students are found as though turned to stone... Dobby's sinister predictions seem to be coming true."
    )

harry_potter_7 = UsersBook.create(
    user_id: camille.id,
    title: 'Harry Potter and the Deathly Hallows',
    author: 'JK Rowling',
    isbn: 9780747538486,
    image_url: "http://books.google.com/books/content?id=KXyNjwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api",
    num_pages: 784,
    reading_time: "71866",
    description: "Harry Potter is leaving Privet Drive for the last time. But as he climbs into the sidecar of Hagrid’s motorbike and they take to the skies, he knows Lord Voldemort and the Death Eaters will not be far behind.The protective charm that has kept him safe until now is broken. But the Dark Lord is breathing fear into everything he loves. And he knows he can’t keep hiding. To stop Voldemort, Harry knows he must find the remaining Horcruxes and destroy them. He will have to face his enemy in one final battle."
    )


rien_ne_soppose = UsersBook.create(
    user_id: camille.id,
    title: 'Rien ne soppose à la nuit',
    author: 'Delphine de Vigan',
    isbn: 9782253164265,
    image_url: "http://books.google.com/books/content?id=8uDOAgAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api",
    num_pages: 352,
    reading_time: "32266.7",
    description: "La 4e de couverture indique : 'Ma famille incarne ce que la joie a de plus bruyant, de plus spectaculaire, l'écho inlassable des morts, et le retentissement du désastre. Aujourd'hui je sais aussi qu'elle illustre, comme tant d'autres familles, le pouvoir de destruction du verbe, et celui du silence.'"
    )

les_chaussures_italiennes = UsersBook.create(
    user_id: camille.id,
    title: 'Les Chaussures italiennes',
    author: 'Henning Mankell',
    isbn: 9782757821626,
    image_url: "http://books.google.com/books/content?id=oyYDrW7YSYUC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api",
    num_pages: 352,
    reading_time: "322667",
    description: "Living on a tiny island that is surrounded by ice during the long winter months, Fredrik Welin is so lost to the world that he cuts a hole in the ice every morning and lowers himself into the freezing water to remind himself that he is alive. Haunted by memories of the terrible mistake that drove him to this island and away from a successful career as a surgeon, he lives in a stasis so complete that an anthill grows undisturbed in his living room. When an unexpected visitor disrupts this frigid existence, Frederik begins an eccentric, elegiac journey—one that displays the full height of Henning Mankell’s storytelling powers. A deeply human tale of loss and redemption, Italian Shoes is “a voyage into the soul of a man” expertly crafted with “snares that Mankell has hidden with a hunter’s skill inside this spectral landscape."
    )

singuliere_tristesse = UsersBook.create(
    user_id: camille.id,
    title: 'La Singulière Tristesse du gâteau au citron',
    author: 'Aimee Bender',
    isbn: 9782879297804,
    image_url: "http://books.google.com/books/content?id=CCvfBfUU_WYC&printsec=frontcover&img=1&zoom=1&source=gbs_api",
    num_pages: 3411,
    reading_time: "312308.4",
    description: "Le jour de ses neuf ans, Rose Edelstein mord avec délice dans le gâteau au citron préparé pour l'occasion. S'ensuit une incroyable révélation : elle ressent précisément l'émotion éprouvée par sa mère, alors qu'elle assemblait les couches de génoise et de crème. Sous la douceur la plus exquise, Rose perçoit le désespoir. Ce bouleversement va entraîner la petite fille dans une enquête sur sa famille. Car, chez les Edelstein, tous disposent d'un pouvoir embarrassant : odorat surpuissant ou capacité de se fondre dans le décor au point de disparaître. Pour ces superhéros du quotidien, ce don est un fardeau. Chacun pense être affligé d'un mal unique, d'un pouvoir qu'il faut passer sous silence. Comment vivre lorsque les petits arrangements avec la vérité sont impossibles ? Comment supporter le monde lorsque la moindre bouchée provoque un séisme intérieur ? Comme le singulier gâteau de Rose, les livres d'Aimee Bender sont recouverts d'un succulent glaçage, fait d'humour et de fantaisie. Dans ce texte plein de charme, proche des films de Wes Anderson, elle met l'imagination au pouvoir et prouve qu'elle est l'un des auteurs les plus originaux du paysage littéraire américain. Aimee Bender vit à Los Angeles. Après un roman (L'Ombre de moi-même) et deux recueils de nouvelles (La Fille en jupe inflammable et Des créatures obstinées) publiés aux Éditions de l'Olivier, elle a connu un grand succès aux États-Unis avec La Singulière Tristesse du gâteau au citron."
    )

saga_harry_potter = UsersBook.create(
    user_id: camille.id,
    title: 'Harry Potter - the whole saga',
    author: 'JK Rowling',
    isbn: 9780747538486,
    image_url: "http://books.google.com/books/content?id=KXyNjwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api",
    num_pages: 3407,
    reading_time: "312308.4",
    description: "The whole Harry Potter saga."
    )

my_brilliant_friend = UsersBook.create(
    user_id: camille.id,
    title: 'My Brilliant Friend',
    author: 'Elena Ferrante',
    isbn: 9781609450786,
    image_url: "http://books.google.com/books/content?id=KYUHsZOX1gwC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api",
    num_pages: 336,
    reading_time: "31625",
    description: "Book one in the series follows Lila and Elena from their first fateful meeting as ten-year-olds through their school years and adolescence.",
    )

the_neapolitan_quartet_reader = UsersBook.create(
    user_id: camille.id,
    title: "The Neapolitan Quartet Reader",
    author: "Europa Editions",
    isbn: 9781609454128,
    image_url: "http://books.google.com/books/content?id=ghmyDAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api",
    num_pages: 95,
    reading_time: "987",
    description: "Reading Groups have made Elena Ferrante’s Neapolitan Quartet a long-selling bestseller. At Europa Editions we’d like to express by offering this extensive guide to the four installments of the Neapolitan series for book groups, reading groups, and book discussion leaders. With a summary of the series, discussion questions, a summary of international praise and much more, this publication should prove a helpful guide to any and all discussions about Ferrante’s masterpiece."
    )

brighton_rock = UsersBook.create(
    user_id: camille.id,
    title: 'Brighton Rock',
    author: 'Graham Greene',
    isbn: 9780142437971,
    image_url: "http://books.google.com/books/content?id=LG5gQgAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api",
    num_pages: 270,
    reading_time: "1237.5",
    description: "When Pinkie kills a man during a gang war raging through the underworld of Brighton, he believes he can escape retribution, but is unprepared for Ida Arnold who is determined to avenge a death.",
    )
# start Category.create below the following books
to_kill_a_mockingbird = UsersBook.create(
    user_id: camille.id,
    title: "To Kill a Mockingbird (Enhanced Edition)",
    author: "Harper Lee",
    isbn: 9780062369635,
    image_url: "http://books.google.com/books/content?id=-D8WBAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api",
    num_pages: 336,
    reading_time: "31625",
    description: "Nominated as one of America’s best-loved novels by PBS’s The Great American Read Harper Lee's Pulitzer Prize-winning masterwork of honor and injustice in the deep South—and the heroism of one man in the face of blind and violent hatred One of the best-loved stories of all time, To Kill a Mockingbird has been translated into more than forty languages, sold more than forty million copies worldwide, served as the basis for an enormously popular motion picture, and was voted one of the best novels of the twentieth century by librarians across the country. A gripping, heart-wrenching, and wholly remarkable tale of coming-of-age in a South poisoned by virulent prejudice, it views a world of great beauty and savage inequities through the eyes of a young girl, as her father—a crusading local lawyer—risks everything to defend a black man unjustly accused of a terrible crime."
    )

farenheit_451 = UsersBook.create(
    user_id: camille.id,
    title: "Fahrenheit 451",
    author: "Ray Bradbury",
    isbn: 9780743247221,
    image_url: "http://books.google.com/books/content?id=b-o_K_AFJiUC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api",
    num_pages: 190,
    reading_time: "978.9",
    description: "A totalitarian regime has ordered all books to be destroyed, but one of the book burners suddenly realizes their merit.",
    )

night_hawk = UsersBook.create(
    user_id: camille.id,
    title: "Night Hawk",
    author: "Beverly Jenkins",
    isbn: 9780062031242,
    image_url: "http://books.google.com/books/content?id=cLvkBm9OtOsC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api",
    num_pages: 384,
    reading_time: "37459",
    description: "'Beverly Jenkins has reached romance superstardom .' —Detroit Free Press “Jenkins’s sassy heroines, well drawn secondary characters and seamless incorporation of black history result in a fresh, winning historical.” —Publishers Weekly The premier name in African-American historical romance fiction, the incomparable Beverly Jenkins returns to the American West with Night Hawk—a blistering tale of high-stakes romance that unites a hard-as-nails bounty hunter with a gorgeous spitfire whom he rescues from a vigilante mob. Set in 1884 Wyoming, Night Hunter by multiple Emma Award winner Jenkins offers a breathtaking combination of passion and adventure that will surely increase her already substantial legion of dedicated fans.",
    )

where_the_wild_things_are = UsersBook.create(
    user_id: camille.id,
    title: "Where the Wild Things Are",
    author: "Maurice Sendak",
    isbn: 9780060254926,
    image_url: "http://books.google.com/books/content?id=M-CocWLBGB4C&printsec=frontcover&img=1&zoom=1&source=gbs_api",
    num_pages: 48,
    reading_time: "689.9",
    description: "Maurice Sendak′s classic book Where the Wild Things Are follows the adventures of Max, a headstrong young boy who leaves home after having a fight with his mother, only to find himself in a mysterious forest bordering a vast sea. Misunderstood and rebellious, Max sets sail to the land of the Wild Things, where mischief reigns. But how do you turn one of the world′s favorite children′s books into a movie? This film incorporates the most dynamic elements of voice performance, live-action puppetry, and computer animation into a live-action adventure story that captures the magic of the book-and takes it to a new dimension. In order to preserve the realistic nature of the film, the Wild Things are not created digitally. Instead, Spike Jonze brings these characters to life in the form of physical suits built by the Jim Henson Company. These creatures, operated by a suit performer, interact with the live actor playing Max on set in front of the camera. After principal photography is finished, CGI is being used to make the creatures completely lifelike and convincing. HEADS ON AND WE SHOOT unveils the unique collaboration behind this highly anticipated film-the combined work of Maurice Sendak, Spike Jonze, Dave Eggers, and all the cast and crew. The book design is heavily image-based, a mix of early sketches, storyboards, character designs, and extensive behind-the-scenes photographs that show both incredible live-action puppetry and computer animation. The text includes forewords by Jonze and Eggers, interviews with the cast and crew, stories from on and off the set, and early drafts of the screenplay. The resulting book will be simultaneously a beautiful object for collectors, an insider′s guide for devotees, and an intimate window into the creative process.",
    )

the_phantom_tollbooth = UsersBook.create(
    user_id: camille.id,
    title: "The Phantom Tollbooth",
    author: "Norton Juster",
    isbn: 9780394820378,
    image_url: "http://books.google.com/books/content?id=87UWNi83IrIC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api",
    num_pages: 256,
    reading_time: "1197.7",
    description: "A journey through a land where Milo learns the importance of words and numbers provides a cure for his boredom.",
    )

the_hate_you_give = UsersBook.create(
    user_id: camille.id,
    title: "The Hate U Give",
    author: "Angie Thomas",
    isbn: 9780062498533,
    image_url: "http://books.google.com/books/content?id=b-o_K_AFJiUC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api",
    num_pages: 464,
    reading_time: "41625",
    description: "Sixteen-year-old Starr Carter moves between two worlds: the poor neighborhood where she lives and the fancy suburban prep school she attends. The uneasy balance between these worlds is shattered when Starr witnesses the fatal shooting of her childhood best friend Khalil at the hands of a police officer. Khalil was unarmed. Soon afterward, his death is a national headline. Some are calling him a thug, maybe even a drug dealer and a gangbanger. Protesters are taking to the streets in Khalil’s name. Some cops and the local drug lord try to intimidate Starr and her family. What everyone wants to know is: what really went down that night? And the only person alive who can answer that is Starr. But what Starr does—or does not—say could upend her community. It could also endanger her life. And don't miss On the Come Up, Angie Thomas's powerful follow-up to The Hate U Give.",
    )

miss_peregrines_home_for_peculiar_children = UsersBook.create(
    user_id: camille.id,
    title: "Miss Peregrine's Home for Peculiar Children",
    author: "Ransom Riggs",
    isbn: 9781594745133,
    image_url: "http://books.google.com/books/content?id=pkGqafH1V40C&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api",
    num_pages: 352,
    reading_time: "322667",
    description: "Ten peculiar children flee an army of deadly monsters. And only one person can help them—but she’s trapped in the body of a bird. The extraordinary journey that began in Miss Peregrine’s Home for Peculiar Children continues as Jacob Portman and his newfound friends journey to London, the peculiar capital of the world. There, they hope to find a cure for their beloved headmistress, Miss Peregrine. But in this war-torn city, hideous surprises lurk around every corner. And before Jacob can deliver the peculiar children to safety, he must make an important decision about his love for Emma Bloom.",
    )

divergent = UsersBook.create(
    user_id: camille.id,
    title: "Divergent",
    author: "Veronica Roth",
    isbn: 9780062077011,
    image_url: "http://books.google.com/books/content?id=nv9lZM_0RI4C&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api",
    num_pages: 576,
    reading_time: "56789",
    description: "One choice can destroy you. Veronica Roth's second #1 New York Times bestseller continues the dystopian thrill ride that began in Divergent. A hit with both teen and adult readers, Insurgent is the action-packed, emotional adventure that inspired the major motion picture starring Shailene Woodley, Theo James, Ansel Elgort, and Octavia Spencer. As war surges in the factions of dystopian Chicago all around her, Tris attempts to save those she loves—and herself—while grappling with haunting questions of grief and forgiveness, identity and loyalty, politics and love. And don't miss The Fates Divide, Veronica Roth's powerful sequel to the bestselling Carve the Mark!",
    )

the_maze_runner = UsersBook.create(
    user_id: camille.id,
    title: "The Maze Runner",
    author: "James Dashner",
    isbn: 9780375896125,
    image_url: "http://books.google.com/books/content?id=8t5GVWLo_eEC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api",
    num_pages: 384,
    reading_time: "33276",
    description: "When Thomas wakes up in the lift, the only thing he can remember is his name. He’s surrounded by strangers—boys whose memories are also gone. Nice to meet ya, shank. Welcome to the Glade. Outside the towering stone walls that surround the Glade is a limitless, ever-changing maze. It’s the only way out—and no one’s ever made it through alive. Everything is going to change. Then a girl arrives. The first girl ever. And the message she delivers is terrifying. Remember. Survive. Run.",
    )

the_chocolate_war = UsersBook.create(
    user_id: camille.id,
    title: "The Chocolate War",
    author: "Robert Cormier",
    isbn: 9780307834294,
    image_url: "http://books.google.com/books/content?id=NH1hB1raa1AC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api",
    num_pages: 272,
    reading_time: "1300",
    description: "The school year is almost at an end, and the chocolate sale is ancient history. But no one at Trinity School can forget the Chocolate War. Devious Archie Costello, commander of the secret school organization called the Vigils, still has some torturous assignments to hand out before he graduates. In spite of this pleasure, Archie is troubled that his right-hand man, Obie, has started to move away from the Vigils. Luckily Archie knows his stooges will fix that. But Obie has some plans of his own.",
    )

a_reaper_at_the_gates = UsersBook.create(
    user_id: camille.id,
    title: "A Reaper at the Gates",
    author: "Sabaa Tahir",
    isbn: 9780448494524,
    image_url: "http://books.google.com/books/content?id=f8IwDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api",
    num_pages: 480,
    reading_time: "33837",
    description: "Book Review Laia is a slave. Elias is a soldier. Neither is free. Under the Martial Empire, defiance is met with death. Those who do not vow their blood and bodies to the Emperor risk the execution of their loved ones and the destruction of all they hold dear. It is in this brutal world, inspired by ancient Rome, that Laia lives with her grandparents and older brother. The family ekes out an existence in the Empire’s impoverished backstreets. They do not challenge the Empire. They’ve seen what happens to those who do. But when Laia’s brother is arrested for treason, Laia is forced to make a decision. In exchange for help from rebels who promise to rescue her brother, she will risk her life to spy for them from within the Empire’s greatest military academy. There, Laia meets Elias, the school’s finest soldier—and secretly, its most unwilling. Elias wants only to be free of the tyranny he’s being trained to enforce. He and Laia will soon realize that their destinies are intertwined—and that their choices will change the fate of the Empire itself.",
    )

a_wrinkle_in_time = UsersBook.create(
    user_id: camille.id,
    title: "A Wrinkle in Time",
    author: "Madeleine L'Engle",
    isbn: 9781429915649,
    image_url: "http://books.google.com/books/content?id=r119-dYq0mwC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api ",
    num_pages: 216,
    reading_time: "24143",
    description: "Madeleine L'Engle's ground-breaking science fiction and fantasy classic, soon to be a major motion picture. It was a dark and stormy night; Meg Murry, her small brother Charles Wallace, and her mother had come down to the kitchen for a midnight snack when they were upset by the arrival of a most disturbing stranger. \"Wild nights are my glory,\" the unearthly stranger told them. \"I just got caught in a downdraft and blown off course. Let me sit down for a moment, and then I'll be on my way. Speaking of ways, by the way, there is such a thing as a tesseract.\" A tesseract (in case the reader doesn't know) is a wrinkle in time. To tell more would rob the reader of the enjoyment of Miss L'Engle's unusual book. A Wrinkle in Time, winner of the Newbery Medal in 1963, is the story of the adventures in space and time of Meg, Charles Wallace, and Calvin O'Keefe (athlete, student, and one of the most popular boys in high school). They are in search of Meg's father, a scientist who disappeared while engaged in secret work for the government on the tesseract problem. A Wrinkle in Time is the winner of the 1963 Newbery Medal. It is the first book in The Time Quintet, which consists of A Wrinkle in Time, A Wind in the Door, A Swiftly Tilting Planet, Many Waters, and An Acceptable Time. A Wrinkle in Time is soon to be a movie from Disney, directed by Ava DuVernay, starring Storm Reid, Oprah Winfrey, Reese Witherspoon and Mindy Kaling. This title has Common Core connections. Books by Madeleine L'Engle A Wrinkle in Time Quintet A Wrinkle in Time A Wind in the Door A Swiftly Tilting Planet Many Waters An Acceptable Time A Wrinkle in Time: The Graphic Novel by Madeleine L'Engle; adapted & illustrated by Hope Larson Intergalactic P.S. 3 by Madeleine L'Engle; illustrated by Hope Larson: A standalone story set in the world of A Wrinkle in Time. The Austin Family Chronicles Meet the Austins (Volume 1) The Moon by Night (Volume 2) The Young Unicorns (Volume 3) A Ring of Endless Light (Volume 4) A Newbery Honor book! Troubling a Star (Volume 5) The Polly O'Keefe books The Arm of the Starfish Dragons in the Waters A House Like a Lotus And Both Were Young Camilla The Joys of Love",
    )

an_abundance_of_katherines = UsersBook.create(
    user_id: camille.id,
    title: "An Abundance of Katherines",
    author: "John Green",
    isbn: 9781481422505,
    image_url: "http://books.google.com/books/content?id=pjLhAAAAMAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api",
    num_pages: 227,
    reading_time: "27896",
    description: "Always being dumped by girls named Katherine, Colin Singleton, a washed-up child prodigy with a Judge-Judy obsessed best friend, embarks on a quest to prove The Theorem of Underlying Katherine Predictability, which will impact all of his future relationships and change his life.",
    )

the_girl_on_the_train = UsersBook.create(
    user_id: camille.id,
    title: "The Girl on the Train",
    author: "Paula Hawkins",
    isbn: 9781786825131,
    image_url: "http://books.google.com/books/content?id=aFNaDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api",
    num_pages: 304,
    reading_time: "31687",
    description: "Three women, three men, connected through marriage or infidelity. Each is to blame for something. But only one is a killer in this #1 New York Times bestselling psychological thriller about human frailty and obsession. Just what goes on in the houses you pass by every day? Rachel takes the same commuter train every morning and evening, rattling over the same junctions, flashing past the same townhouses.The train stops at the same signal every day, and she sees the same couple, breakfasting on their roof terrace. Jason and Jess, as she calls them, seem so happy. Then one day Rachel sees someone new in their garden. Soon after, Rachel sees the woman she calls Jess on the news. Jess has disappeared. Through the ensuing police investigation, Rachel is drawn deeper into the lives of the couple she learns are really Megan and Scott Hipwell. As she befriends Scott, Rachel pieces together what really happened the day Megan disappeared. But when Megan's body is found, Rachel finds herself the chief suspect in the case. Plunged into a world of betrayals, secrets and deceptions, Rachel must confront the facts about her own past and her own failed marriage. A sinister and twisting story that will keep you guessing at every turn, The Girl on the Train is a high-speed chase for the truth.",

    )

gone_girl = UsersBook.create(
    user_id: camille.id,
    title: "Gone Girl",
    author: "Gillian Flynn",
    isbn: 9780606270175,
    image_url: "http://books.google.com/books/content?id=3Jv4kgEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api",
    num_pages: 422,
    reading_time: "33400",
    description: "When a woman goes missing on her fifth wedding anniversary, her diary reveals hidden turmoil in her marriage, while her husband, desperate to clear himself of suspicion, realizes that something more disturbing than murder may have occurred.",

    )

big_little_lies = UsersBook.create(
    user_id: camille.id,
    title: "Big Little Lies",
    author: "Liane Moriarty",
    isbn: 9781101636237,
    image_url: "http://books.google.com/books/content?id=jZIUcMyLFzAC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api",
    num_pages: 416,
    reading_time: "33170",
    description: "Sometimes it's the little lies that turn out to be the most lethal. . . . A murder... . . . a tragic accident... . . . or just parents behaving badly? What's indisputable is that someone is dead. But who did what ? Big Little Lies follows three women, each at a crossroads: Madeline is a force to be reckoned with. She's funny and biting, passionate, she remembers everything and forgives no one. She's just turned forty—forty?! Her ex-husband and his yogi new wife have moved into her beloved beachside community, and their daughter is in the same kindergarten class as Madeline's youngest (how is this possible?). And to top it all off, Madeline's teenage daughter seems to be choosing...",

    )

city_of_ice = UsersBook.create(
    user_id: camille.id,
    title: "City Of Ice",
    author: "John Farrow",
    isbn: 9781443402996,
    image_url: "http://books.google.com/books/content?id=MlSDqMcY58EC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api",
    num_pages: 544,
    reading_time: "33170",
    description: "Montreal has been damaged by political uncertainty over separatism, and violent turf wars leave the police force struggling to keep the city safe. Even Sergeant-Detective Émile Cinq-Mars appears to have been compromised. How has he managed to penetrate Montreal’s criminal elite? Who are his informants? And who is the young female operative he seems so desperate to save from the clutches of the mob?",

    )

last_night_in_montreal = UsersBook.create(
    user_id: camille.id,
    title: "Last Night in Montreal",
    author: "Emily St. John Mandel",
    isbn: 9781932961683,
    image_url: "http://books.google.com/books/content?id=SAwBAwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api",
    num_pages: 247,
    reading_time: "28840",
    description: "Eli searches for his ex-lover Lilia after she disappears one morning from his Brooklyn apartment, but he discovers surprises about her childhood after going to Montreal on a tip from a source who says that Lilia may be there.",

    )

one_little_lie = UsersBook.create(
    user_id: camille.id,
    title: "One Little Lie",
    author: "Sam Carrington",
    isbn: 9780008300814,
    image_url: "http://books.google.com/books/content?id=6Z4DtAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api",
    num_pages: 384,
    reading_time: "33276",
    description: "Deborah's son was killed four years ago.Alice's son is in prison for committing that crime. Deborah would give anything to have her boy back, and Alice would do anything to right her son's wrongs. Driven by guilt and the need for redemption, Alice has started a support group for parents with troubled children. But as the network begins to grow, she soon finds out just how easy it is for one little lie to spiral out of control... They call it mother's intuition, but can you ever really know your own child? A twisty and unnerving thriller about the price of motherhood and the unthinkable things we do to protect our children. Perfect for fans of B A Paris and Clare Mackintosh.",

    )

raisin_wine = UsersBook.create(
    user_id: camille.id,
    title: "Raisin Wine",
    author: "James K. Bartleman",
    isbn: 9781551992068,
    image_url: "http://books.google.com/books/content?id=EhJNR8vSpLQC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api",
    num_pages: 272,
    reading_time: "33276",
    description: "A senior Canadian diplomat is viciously assaulted in his hotel room in South Africa. His world collapses in post-traumatic shock and he is haunted by flashback images of the discrimination he and his family endured when they moved to a small community in central Ontario immediately following World War Two. To exorcise these ghosts, he returns to the past to relive his childhood and youth. In the ensuing memoir, he describes the colorful personalities of a small northern community in which individuals, Indian and white, are larger than life, and in which race relations reflect the unenlightened attitudes of the times. Throughout Out Of Muskoka Jim Bartleman contrasts the universal existential conditions he faced as a child (discrimination, poverty, suicide, religious quest) with what he experienced as a diplomat serving in five continents over 35 years. In the process, he discovered that to feel whole, he had to feel accepted by the two worlds of his ancestry: Native and white.",

    )

the_couple_next_door = UsersBook.create(
    user_id: camille.id,
    title: "The Couple Next Door",
    author: "Shari Lapena",
    isbn: 9780735221086,
    image_url: "http://books.google.com/books/content?id=669ZjwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api",
    num_pages: 320,
    reading_time: "32176",
    description: "A domestic suspense debut about a young couple and their apparently friendly neighbors a twisty, rollercoaster ride of lies, betrayal, and the secrets between husbands and wives. . .\" Anne and Marco Conti seem to have it all a loving relationship, a wonderful home, and their beautiful baby, Cora. But one night when they are at a dinner party next door, a terrible crime is committed. Suspicion immediately focuses on the parents. But the truth is a much more complicated story. Inside the curtained house, an unsettling account of what actually happened unfolds. Detective Rasbach knows that the panicked couple is hiding something. Both Anne and Marco soon discover that the other is keeping secrets, secrets they've kept for years. What follows is the nerve-racking unraveling of a family a chilling tale of deception, duplicity, and unfaithfulness that will keep you breathless until the final shocking twist.",

    )

dirty_sweet = UsersBook.create(
    user_id: camille.id,
    title: "Dirty Sweet",
    author: "John McFetridge",
    isbn: 9781554902620,
    image_url: "http://books.google.com/books/content?id=lFK6VEo6VPwC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api",
    num_pages: 336,
    reading_time: "31625",
    description: "On a busy street on a Monday morning, a man behind the wheel of an SUV is shot in the head, and his killer drives off before the light changes. But what appears to be road rage or a random act of violence is actually an opportunity for everyone--everyone, that is, but the victim.",

    )

find_you_in_the_dark = UsersBook.create(
    user_id: camille.id,
    title: "Find You in the Dark",
    author: "Nathan Ripley",
    isbn: 9781501179075,
    image_url: "http://books.google.com/books/content?id=hhwyDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api",
    num_pages: 368,
    reading_time: "36425",
    description: "In this chilling debut thriller, in the vein of Dexter and The Talented Mr. Ripley, a family man obsessed with digging up the undiscovered remains of serial killer victims catches the attention of a murderer prowling the streets of Seattle. Martin Reese is obsessed with murder. For years, he has been illegally buying police files on serial killers and studying them in depth, using them as guides to find missing bodies. He doesn’t take any souvenirs, just photos that he stores in an old laptop, and then he turns in the results to the police anonymously. Martin sees his work as a public service, a righting of wrongs that cops have continuously failed to do. Detective Sandra Whittal sees it differently. On a meteoric rise in police ranks due to her case-closing efficiency, Whittal is suspicious of the mysterious caller—the Finder, she names him—leading the police to the bodies. Even if the Finder isn’t the one leaving bodies behind, who’s to say that he won’t start soon? On his latest dig, Martin searches for the first kill of Jason Shurn, the early 1990s murderer who may have been responsible for the disappearance of his sister-in-law, whom he never met. But when he arrives at the site, he finds a freshly killed body—a young and recently disappeared Seattle woman—lying among remains that were left there decades ago. Someone else knew where Jason Shurn buried his victims . . . and that someone isn’t happy that Martin has been going around digging up his work. When a crooked cop with a tenuous tie to Martin vanishes, Whittal begins to zero in on the Finder. Hunted by a real killer and by Whittal, Martin realizes that in order to escape the killer’s trap, he may have to go deeper into the world of murder than he ever thought.",

    )

pride_and_prejudice = UsersBook.create(
    user_id: camille.id,
    title: "Pride and Prejudice",
    author: "Jane Austen",
    isbn: 9781853260001,
    image_url: "http://books.google.com/books/content?id=s1gVAAAAYAAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api",
    num_pages: 401,
    reading_time: "32986",
    description: "Austen’s most celebrated novel tells the story of Elizabeth Bennet, a bright, lively young woman with four sisters, and a mother determined to marry them to wealthy men. At a party near the Bennets’ home in the English countryside, Elizabeth meets the wealthy, proud Fitzwilliam Darcy. Elizabeth initially finds Darcy haughty and intolerable, but circumstances continue to unite the pair. Mr. Darcy finds himself captivated by Elizabeth’s wit and candor, while her reservations about his character slowly vanish. The story is as much a social critique as it is a love story, and the prose crackles with Austen’s wry wit.",
    )

# sense_and_sensibility = UsersBook.create(
#     user_id: camille.id,
#     title: "Sense and Sensibility",
#     author: "Jane Austen",
#     isbn: 9781853260001,
#     image_url: "hhttp://books.google.com/books/content?id=s1gVAAAAYAAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api",
#     num_pages: 401,
#     reading_time: "32986",
#     description: "Austen’s most celebrated novel tells the story of Elizabeth Bennet, a bright, lively young woman with four sisters, and a mother determined to marry them to wealthy men. At a party near the Bennets’ home in the English countryside, Elizabeth meets the wealthy, proud Fitzwilliam Darcy. Elizabeth initially finds Darcy haughty and intolerable, but circumstances continue to unite the pair. Mr. Darcy finds himself captivated by Elizabeth’s wit and candor, while her reservations about his character slowly vanish. The story is as much a social critique as it is a love story, and the prose crackles with Austen’s wry wit.",
#     )



Category.create(name: 'fiction')
Category.create(name: 'romance')
Category.create(name: 'thriller')
Category.create(name: 'young adult')
Category.create(name: 'tragedy')
Category.create(name: 'biography')
Category.create(name: 'chick lit')
Category.create(name: 'classic')
Category.create(name: 'fantasy')
Category.create(name: 'history')
Category.create(name: 'horror')
Category.create(name: 'comedy')
Category.create(name: 'poetry')
Category.create(name: 'mystery')
Category.create(name: 'philosophy')
Category.create(name: 'religion')
Category.create(name: 'science fiction')
Category.create(name: 'sports')
Category.create(name: 'travel')


# fiction
harry_potter_7.categories = [Category.find_by(name: "fiction"),Category.find_by(name: "young adult") ]
saga_harry_potter.categories = [Category.find_by(name: "fiction"),Category.find_by(name: "young adult")]
harry_potter_2.categories = [Category.find_by(name: "fiction"),Category.find_by(name: "young adult")]
my_brilliant_friend.categories = [Category.find_by(name: "fiction")]
rien_ne_soppose.categories = [Category.find_by(name: "fiction")]
singuliere_tristesse.categories = [Category.find_by(name: "fiction"),Category.find_by(name: "young adult")]
les_chaussures_italiennes.categories = [Category.find_by(name: "fiction")]
the_neapolitan_quartet_reader = [Category.find_by(name: "fiction")]
to_kill_a_mockingbird.categories = [Category.find_by(name: "fiction")]
farenheit_451.categories = [Category.find_by(name: "fiction")]
night_hawk.categories = [Category.find_by(name: "fiction")]
# young adult
where_the_wild_things_are.categories = [Category.find_by(name: "young adult")]
the_phantom_tollbooth.categories = [Category.find_by(name: "young adult")]
the_hate_you_give.categories = [Category.find_by(name: "young adult")]
miss_peregrines_home_for_peculiar_children.categories = [Category.find_by(name: "young adult")]
divergent.categories = [Category.find_by(name: "young adult")]
the_maze_runner.categories = [Category.find_by(name: "young adult")]
the_chocolate_war.categories = [Category.find_by(name: "young adult")]
a_reaper_at_the_gates.categories = [Category.find_by(name: "young adult")]
a_wrinkle_in_time.categories = [Category.find_by(name: "young adult")]
an_abundance_of_katherines.categories = [Category.find_by(name: "young adult")]
# thriller
the_girl_on_the_train.categories = [Category.find_by(name: "thriller")]
gone_girl.categories = [Category.find_by(name: "thriller")]
big_little_lies.categories = [Category.find_by(name: "thriller")]
city_of_ice.categories = [Category.find_by(name: "thriller")]
last_night_in_montreal.categories = [Category.find_by(name: "thriller")]
one_little_lie.categories = [Category.find_by(name: "thriller")]
raisin_wine.categories = [Category.find_by(name: "thriller")]
the_couple_next_door.categories = [Category.find_by(name: "thriller")]
dirty_sweet.categories = [Category.find_by(name: "thriller")]
find_you_in_the_dark.categories = [Category.find_by(name: "thriller")]
#  romance
# fifty_shaeds_of_grey.categories = [Category.find_by(name: "romance")]
pride_and_prejudice.categories = [Category.find_by(name: "romance")]
# a_princess_in_theory.categories = [Category.find_by(name: "romance")]
# the_lover.categories = [Category.find_by(name: "romance")]
# love_in_catalina_cove.categories = [Category.find_by(name: "romance")]
# his_secret_son.categories = [Category.find_by(name: "romance")]
# the_darkest_passion.categories = [Category.find_by(name: "romance")]
# destinys_embrace.categories = [Category.find_by(name: "romance")]
# spontaneous.categories = [Category.find_by(name: "romance")]
# locked_in_temptation.categories = [Category.find_by(name: "romance")]



puts 'soffie is ready to search ^_^-b'
