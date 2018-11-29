puts 'cleaning the soffie db...'

BookCategory.delete_all
BookMood.delete_all
Mood.delete_all
Category.delete_all
UsersBook.delete_all
User.delete_all

puts 'planting seeds for soffie...'

# esteban = User.create(email: 'esteban@soffie.info', password: 'wagonwagon', first_name: 'esteban', last_name: 'montantes', reading_speed: "190")
# claire = User.create(email: 'claire@soffie.info', password: 'wagonwagon', first_name: 'claire', last_name: 'sackman', reading_speed: "185")
camille = User.create(email: 'ca.villard@gmail.com', password: 'wagonwagon', first_name: 'camille', last_name: 'villard', reading_speed: "220")
# serge = User.create(email: 'serge@soffie.info', password: 'wagonwagon', first_name: 'serge', last_name: 'leclerc', reading_speed: "210" )


Category.create(name: 'fiction')
Category.create(name: 'romance')
Category.create(name: 'thriller')
Category.create(name: 'young adult')
Category.create(name: 'tragedy')
Category.create(name: 'biography')
Category.create(name: 'chick lit')
Category.create(name: 'classic')
Category.create(name: 'dystopia')
Category.create(name: 'fantasy')
Category.create(name: 'history')
Category.create(name: 'horror')
Category.create(name: 'comedy')
Category.create(name: 'poetry')
Category.create(name: 'mystery')
Category.create(name: 'philosophy')
Category.create(name: 'religion')
Category.create(name: 'science fiction')
Category.create(name: 'children')
Category.create(name: 'travel')

Mood.create(name: "relaxing with a glass of whatever you need it to be", description: "pretty self-explanatory.")
Mood.create(name: "reading for after an intense 9 weeks coding bootcamp", description: "perfect for an over-used brain that cries for some light reading.")
Mood.create(name: "learning graphic design things", description: "useful for those you still use Comic Sans MS and actually think it's a good idea.")
Mood.create(name: "paris is always a good idea", description: "bread, cheese & parisian stories")
Mood.create(name: "stories that made you cry", description: "excellent for wintertime")


relax = Mood.find_by(name: "relaxing with a glass of whatever you need it to be")
light = Mood.find_by(name: "reading for after an intense 9 weeks coding bootcamp")
learn = Mood.find_by(name: "learning graphic design things")
paris = Mood.find_by(name: "paris is always a good idea")
cry = Mood.find_by(name: "stories that made you cry")


harry_potter_1 = UsersBook.create(
    user_id: camille.id,
    title: "Harry Potter And The Philosopher's Stone",
    author: 'JK Rowling',
    isbn: 9780747532743,
    image_url: "https://images.gr-assets.com/books/1327190600l/72193.jpg",
    num_pages: 223,
    description:"Harry Potter's life is miserable. His parents are dead and he's stuck with his
heartless relatives, who force him to live in a tiny closet under the stairs.
But his fortune changes when he receives a letter that tells him the truth about
himself: he's a wizard. A mysterious visitor rescues him from his relatives and
takes him to his new home, Hogwarts School of Witchcraft and Wizardry.

After a lifetime of bottling up his magical powers, Harry finally feels like a
normal kid. But even within the Wizarding community, he is special. He is the
boy who lived: the only person to have ever survived a killing curse inflicted
by the evil Lord Voldemort, who launched a brutal takeover of the Wizarding
world, only to vanish after failing to kill Harry.

Though Harry's first year at Hogwarts is the best of his life, not everything is
perfect. There is a dangerous secret object hidden within the castle walls, and
Harry believes it's his responsibility to prevent it from falling into evil
hands. But doing so will bring him into contact with forces more terrifying than
he ever could have imagined.

Full of sympathetic characters, wildly imaginative situations, and countless
exciting details, the first installment in the series assembles an unforgettable
magical world and sets the stage for many high-stakes adventures to come." ,
    )
harry_potter_1.categories = [Category.find_by(name: "fiction"),Category.find_by(name: "young adult")]
harry_potter_1.moods = [relax, light]

harry_potter_2 = UsersBook.create(
    user_id: camille.id,
    title: "Harry Potter And The Chamber Of Secrets",
    author: "JK Rowling",
    isbn: 9780747538486,
    image_url: "https://images.gr-assets.com/books/1474169725l/15881.jpg",
    num_pages: 357,
    description:"The Dursleys were so mean and hideous that summer that all Harry Potter wanted was to get back to the Hogwarts School for Witchcraft and Wizardry.
    But just as he's packing his bags, Harry receives a warning from a strange, impish creature named Dobby who says that if Harry Potter returns to Hogwarts, disaster will strike.
    And strike it does. For in Harry's second year at Hogwarts, fresh torments and horrors arise, including an outrageously stuck-up new professor,
    Gilderoy Lockhart, a spirit named Moaning Myrtle who haunts the girls' bathroom, and the unwanted attentions of Ron Weasley's younger sister, Ginny.
    But each of these seem minor annoyances when the real trouble begins, and someone -- or something -- starts turning Hogwarts students to stone.
    Could it be Draco Malfoy, a more poisonous rival than ever? Could it possibly be Hagrid, whose mysterious past is finally told? Or could it be the one everyone at Hogwarts most suspects . . . Harry Potter himself?" ,
    )
harry_potter_2.categories = [Category.find_by(name: "fiction"),Category.find_by(name: "young adult")]
harry_potter_2.moods = [relax, light]

harry_potter_3 = UsersBook.create(
    user_id: camille.id,
    title: "Harry Potter and the Prisoner of Azkaban",
    author: "JK Rowling",
    isbn: 9780747532743,
    image_url: "https://images.gr-assets.com/books/1499277281l/5.jpg",
    num_pages: 435,
    description:"Harry Potter's third year at Hogwarts is full of new dangers. A convicted
murderer, Sirius Black, has broken out of Azkaban prison, and it seems he's
after Harry. Now Hogwarts is being patrolled by the dementors, the Azkaban
guards who are hunting Sirius. But Harry can't imagine that Sirius or, for that
matter, the evil Lord Voldemort could be more frightening than the dementors
themselves, who have the terrible power to fill anyone they come across with
aching loneliness and despair. Meanwhile, life continues as usual at Hogwarts. A
top-of-the-line broom takes Harry's success at Quidditch, the sport of the
Wizarding world, to new heights. A cute fourth-year student catches his eye. And
he becomes close with the new Defense of the Dark Arts teacher, who was a
childhood friend of his father. Yet despite the relative safety of life at
Hogwarts and the best efforts of the dementors, the threat of Sirius Black grows
ever closer. But if Harry has learned anything from his education in wizardry,
it is that things are often not what they seem. Tragic revelations, heartwarming
surprises, and high-stakes magical adventures await the boy wizard in this funny
and poignant third installment of the beloved series.
"
)
harry_potter_3.categories = [Category.find_by(name: "fiction"),Category.find_by(name: "young adult")]
harry_potter_3.moods = [relax, light]


harry_potter_7 = UsersBook.create(
    user_id: camille.id,
    title: 'Harry Potter and the Deathly Hallows',
    author: 'JK Rowling',
    isbn: 9780747538486,
    image_url: "https://images.gr-assets.com/books/1474171184l/136251.jpg",
    num_pages: 784,
    description: "Harry Potter is leaving Privet Drive for the last time. But as he climbs into the sidecar of Hagrid’s motorbike and they take to the skies, he knows Lord Voldemort and the Death Eaters will not be far behind.
    The protective charm that has kept him safe until now is broken. But the Dark Lord is breathing fear into everything he loves.
    And he knows he can’t keep hiding. To stop Voldemort, Harry knows he must find the remaining Horcruxes and destroy them.
    He will have to face his enemy in one final battle."
    )
harry_potter_7.categories = [Category.find_by(name: "fiction"),Category.find_by(name: "young adult") ]


rien_ne_soppose = UsersBook.create(
    user_id: camille.id,
    title: "Rien ne soppose à la nuit",
    author: "Delphine de Vigan",
    isbn: 9782253164265,
    image_url: "https://images.gr-assets.com/books/1327247619l/12351695.jpg",
    num_pages: 352,
    description: "La douleur de Lucile, ma mère, a fait partie de notre enfance et plus tard de
notre vie d’adulte, la douleur de Lucile sans doute nous constitue, ma sœur et
moi, mais toute tentative d’explication est vouée à l’échec. L’écriture n’y peut
rien, tout au plus me permet-elle de poser les questions et d’interroger la
mémoire.  La famille de Lucile, la nôtre par conséquent, a suscité tout au long
de son histoire de nombreux hypothèses et commentaires. Les gens que j’ai
croisés au cours de mes recherches parlent de fascination ; je l’ai souvent
entendu dire dans mon enfance. Ma famille incarne ce que la joie a de plus
bruyant, de plus spectaculaire, l’écho inlassable des morts, et le
retentissement du désastre. Aujourd’hui je sais aussi qu’elle illustre, comme
tant d’autres familles, le pouvoir de destruction du Verbe, et celui du silence.
Le livre, peut-être, ne serait rien d’autre que ça, le récit de cette quête,
contiendrait en lui-même sa propre genèse, ses errances narratives, ses
tentatives inachevées. Mais il serait cet élan, de moi vers elle, hésitant et
inabouti."
    )
rien_ne_soppose.categories = [Category.find_by(name: "fiction"), Category.find_by(name: "tragedy")]
rien_ne_soppose.moods = [cry]

heures_souterraines = UsersBook.create(
    user_id: camille.id,
    title: "Les Heures souterraines",
    author: "Delphine de Vigan",
    isbn: 9782709630405,
    image_url: "https://images.gr-assets.com/books/1340481774l/6856986.jpg",
    num_pages: 299,
    description:"Chaque jour, Mathilde prend la ligne 9, puis la ligne 1, puis le RER D jusqu'au
Vert-de-Maisons. Chaque jour, elle effectue les mêmes gestes, emprunte les mêmes
couloirs de correspondance, monte dans les mêmes trains. Chaque jour, elle
pointe, à la même heure, dans une entreprise où on ne l'attend plus. Car depuis
quelques mois, sans que rien n'ait été dit, sans raison objective, Mathilde n'a
plus rien à faire. Alors, elle laisse couler les heures. Ces heures dont elle ne
parle pas, qu'elle cache à ses amis, à sa famille, ces heures dont elle a honte.
Thibault travaille pour les Urgences Médicales de Paris. Chaque jour, il monte
dans sa voiture, se rend aux adresses que le standard lui indique. Dans cette
ville qui ne lui épargne rien, il est coincé dans un embouteillage, attend
derrière un camion, cherche une place. Ici ou là, chaque jour, des gens
l'attendent qui parfois ne verront que lui. Thibault connaît mieux que quiconque
les petites maladies et les grands désastres, la vitesse de la ville et
l'immense solitude qu'elle abrite. Mathilde et Thibault ne se connaissent pas.
Ils ne sont que deux silhouettes parmi des millions. Deux silhouettes qui
pourraient se rencontrer, se percuter, ou seulement se croiser. Un jour de mai.
Autour d'eux, la ville se presse, se tend, jamais ne s'arrête. Autour d'eux
s'agite un monde privé de douceur. Les heures souterraines est un roman sur la
violence silencieuse. Au coeur d'une ville sans cesse en mouvement, multipliée,
où l'on risque de se perdre sans aucun bruit.
"
)
heures_souterraines.categories = [Category.find_by(name: "fiction")]
heures_souterraines.moods = [cry]


les_chaussures_italiennes = UsersBook.create(
    user_id: camille.id,
    title: 'Les Chaussures italiennes',
    author: 'Henning Mankell',
    isbn: 9782757821626,
    image_url: "https://images.gr-assets.com/books/1329585015l/7145210.jpg",
    num_pages: 352,
    description: "Living on a tiny island that is surrounded by ice during the long winter months, Fredrik Welin is so lost to the world that he cuts a hole in the ice every morning and lowers himself into the freezing water to remind himself that he is alive.
    Haunted by memories of the terrible mistake that drove him to this island and away from a successful career as a surgeon, he lives in a stasis so complete that an anthill grows undisturbed in his living room.
    When an unexpected visitor disrupts this frigid existence, Frederik begins an eccentric, elegiac journey—one that displays the full height of Henning Mankell’s storytelling powers.
    A deeply human tale of loss and redemption, Italian Shoes is “a voyage into the soul of a man” expertly crafted with “snares that Mankell has hidden with a hunter’s skill inside this spectral landscape."
    )
les_chaussures_italiennes.categories = [Category.find_by(name: "fiction"), Category.find_by(name: "tragedy")]
les_chaussures_italiennes.moods = [cry]


singuliere_tristesse = UsersBook.create(
    user_id: camille.id,
    title: 'La Singulière Tristesse du gâteau au citron',
    author: 'Aimee Bender',
    isbn: 9782879297804,
    image_url: "https://images.gr-assets.com/books/1369746930l/17984746.jpg",
    num_pages: 292,
    description: "Le jour de ses neuf ans, Rose Edelstein mord avec délice dans le gâteau au
citron préparé pour célébrer ce moment de fête. S’ensuit une incroyable
révélation : elle parvient précisément à ressentir l’émotion de sa mère
lorsqu’elle a confectionné le gâteau. Sous les couches de génoise et de crème,
Rose perçoit le désespoir. Ce bouleversement va entraîner la petite fille dans
une enquête sur sa famille. Car, chez les Edelstein, tous disposent d’un pouvoir
embarrassant : odorat surpuissant ou capacité de se fondre dans le décor au
point de disparaître. Pour ces superhéros du quotidien, ce don est un fardeau.
Chacun pense être affligé d’un mal unique, d’un pouvoir qu’il faut passer sous
silence. Comment vivre lorsque les petits arrangements avec la vérité sont
impossibles ? Comment supporter le monde lorsqu’une simple bouchée provoque un
séisme intérieur ? Dans ce texte original, proche des films de Wes Anderson ou
de Michel Gondry, Aimee Bender met une fois de plus l’imagination au pouvoir.
Comme le singulier gâteau de Rose, les romans d’Aimee Bender sont recouverts
d’un succulent glaçage, fait d’humour et de fantaisie.",
    )
singuliere_tristesse.categories = [Category.find_by(name: "fiction"),Category.find_by(name: "young adult")]
singuliere_tristesse.moods = [relax, light]


saga_harry_potter = UsersBook.create(
    user_id: camille.id,
    title: 'Harry Potter - the whole saga',
    author: 'JK Rowling',
    isbn: 9780747538486,
    image_url: "https://images.gr-assets.com/books/1474169725l/15881.jpg",
    num_pages: 3407,
    # reading_time: "312308.4",
    description: "The whole Harry Potter saga."
    )
saga_harry_potter.categories = [Category.find_by(name: "fiction"),Category.find_by(name: "young adult")]


my_brilliant_friend = UsersBook.create(
    user_id: camille.id,
    title: 'My Brilliant Friend',
    author: 'Elena Ferrante',
    isbn: 9781609450786,
    image_url: "https://images.gr-assets.com/books/1343064947l/13586707.jpg",
    num_pages: 336,
    description: "Book one in the series follows Lila and Elena from their first fateful meeting as ten-year-olds through their school years and adolescence.",
    )
my_brilliant_friend.categories = [Category.find_by(name: "fiction")]
my_brilliant_friend.moods = [relax]



to_kill_a_mockingbird = UsersBook.create(
    user_id: camille.id,
    title: "To Kill a Mockingbird (Enhanced Edition)",
    author: "Harper Lee",
    isbn: 9780062369635,
    image_url: "https://images.gr-assets.com/books/1361975680l/2657.jpg",
    num_pages: 336,
    description: "Nominated as one of America’s best-loved novels by PBS’s The Great American Read Harper Lee's Pulitzer Prize-winning masterwork of honor and injustice in the deep South—and the heroism of one man in the face of blind and violent hatred One of the best-loved stories of all time, To Kill a Mockingbird has been translated into more than forty languages, sold more than forty million copies worldwide, served as the basis for an enormously popular motion picture, and was voted one of the best novels of the twentieth century by librarians across the country. A gripping, heart-wrenching, and wholly remarkable tale of coming-of-age in a South poisoned by virulent prejudice, it views a world of great beauty and savage inequities through the eyes of a young girl, as her father—a crusading local lawyer—risks everything to defend a black man unjustly accused of a terrible crime."
    )
to_kill_a_mockingbird.categories = [Category.find_by(name: "fiction"), Category.find_by(name: "classic")]


farenheit_451 = UsersBook.create(
    user_id: camille.id,
    title: "Fahrenheit 451",
    author: "Ray Bradbury",
    isbn: 9780743247221,
    image_url: "https://images.gr-assets.com/books/1383718290l/13079982.jpg",
    num_pages: 190,
    description: "A totalitarian regime has ordered all books to be destroyed, but one of the book burners suddenly realizes their merit.",
    )
farenheit_451.categories = [Category.find_by(name: "fiction"), Category.find_by(name: "science fiction"), Category.find_by(name: "dystopia")]



shining = UsersBook.create(
    user_id: camille.id,
    title: 'The Shining',
    author: 'Stephen King',
    isbn: 9780450040184,
    image_url: "https://images.gr-assets.com/books/1353277730l/11588.jpg",
    num_pages: 447,
    description: "Jack Torrance's new job at the Overlook Hotel is the perfect chance for a fresh
start. As the off-season caretaker at the atmospheric old hotel, he'll have
plenty of time to spend reconnecting with his family and working on his writing.
But as the harsh winter weather sets in, the idyllic location feels ever more
remote...and more sinister. And the only one to notice the strange and terrible
forces gathering around the Overlook is Danny Torrance, a uniquely gifted five-
year-old."
)
shining.categories = [Category.find_by(name: "horror"), Category.find_by(name: "thriller"), Category.find_by(name: "classic")]



where_the_wild_things_are = UsersBook.create(
    user_id: camille.id,
    title: "Where the Wild Things Are",
    author: "Maurice Sendak",
    isbn: 9780060254926,
    image_url: "https://images.gr-assets.com/books/1384434560l/19543.jpg",
    num_pages: 48,
    description: "Maurice Sendak′s classic book Where the Wild Things Are follows the adventures of Max, a headstrong young boy who leaves home after having a fight with his mother, only to find himself in a mysterious forest bordering a vast sea. Misunderstood and rebellious, Max sets sail to the land of the Wild Things, where mischief reigns. But how do you turn one of the world′s favorite children′s books into a movie? This film incorporates the most dynamic elements of voice performance, live-action puppetry, and computer animation into a live-action adventure story that captures the magic of the book-and takes it to a new dimension. In order to preserve the realistic nature of the film, the Wild Things are not created digitally. Instead, Spike Jonze brings these characters to life in the form of physical suits built by the Jim Henson Company. These creatures, operated by a suit performer, interact with the live actor playing Max on set in front of the camera. After principal photography is finished, CGI is being used to make the creatures completely lifelike and convincing. HEADS ON AND WE SHOOT unveils the unique collaboration behind this highly anticipated film-the combined work of Maurice Sendak, Spike Jonze, Dave Eggers, and all the cast and crew. The book design is heavily image-based, a mix of early sketches, storyboards, character designs, and extensive behind-the-scenes photographs that show both incredible live-action puppetry and computer animation. The text includes forewords by Jonze and Eggers, interviews with the cast and crew, stories from on and off the set, and early drafts of the screenplay. The resulting book will be simultaneously a beautiful object for collectors, an insider′s guide for devotees, and an intimate window into the creative process.",
    )
where_the_wild_things_are.categories = [Category.find_by(name: "children")]
where_the_wild_things_are.moods = [light]



the_phantom_tollbooth = UsersBook.create(
    user_id: camille.id,
    title: "The Phantom Tollbooth",
    author: "Norton Juster",
    isbn: 9780394820378,
    image_url: "https://images.gr-assets.com/books/1438887022l/378.jpg",
    num_pages: 256,
    description: "For Milo, everything’s a bore. When a tollbooth mysteriously appears in his room, he drives through only because he’s got nothing better to do. But on the other side, things seem different. Milo visits the Island of Conclusions (you get there by jumping), learns about time from a ticking watchdog named Tock, and even embarks on a quest to rescue Rhyme and Reason! Somewhere along the way, Milo realizes something astonishing.
    Life is far from dull. In fact, it’s exciting beyond his wildest dreams. . . ",
    )


the_hate_you_give = UsersBook.create(
    user_id: camille.id,
    title: "The Hate U Give",
    author: "Angie Thomas",
    isbn: 9780062498533,
    image_url: "https://images.gr-assets.com/books/1535002553l/32075671.jpg",
    num_pages: 464,
    description: "Sixteen-year-old Starr Carter moves between two worlds: the poor neighborhood where she lives and the fancy suburban prep school she attends. The uneasy balance between these worlds is shattered when Starr witnesses the fatal shooting of her childhood best friend Khalil at the hands of a police officer. Khalil was unarmed. Soon afterward, his death is a national headline. Some are calling him a thug, maybe even a drug dealer and a gangbanger. Protesters are taking to the streets in Khalil’s name. Some cops and the local drug lord try to intimidate Starr and her family. What everyone wants to know is: what really went down that night? And the only person alive who can answer that is Starr. But what Starr does—or does not—say could upend her community. It could also endanger her life. And don't miss On the Come Up, Angie Thomas's powerful follow-up to The Hate U Give.",
    )
the_hate_you_give.categories = [Category.find_by(name: "young adult")]


miss_peregrines_home_for_peculiar_children = UsersBook.create(
    user_id: camille.id,
    title: "Miss Peregrine's Home for Peculiar Children",
    author: "Ransom Riggs",
    isbn: 9781594745133,
    image_url: "https://images.gr-assets.com/books/1472782916l/9460487.jpg",
    num_pages: 352,
    description: "Ten peculiar children flee an army of deadly monsters. And only one person can help them—but she’s trapped in the body of a bird. The extraordinary journey that began in Miss Peregrine’s Home for Peculiar Children continues as Jacob Portman and his newfound friends journey to London, the peculiar capital of the world. There, they hope to find a cure for their beloved headmistress, Miss Peregrine. But in this war-torn city, hideous surprises lurk around every corner. And before Jacob can deliver the peculiar children to safety, he must make an important decision about his love for Emma Bloom.",
    )
miss_peregrines_home_for_peculiar_children.categories = [Category.find_by(name: "young adult")]


an_abundance_of_katherines = UsersBook.create(
    user_id: camille.id,
    title: "An Abundance of Katherines",
    author: "John Green",
    isbn: 9781481422505,
    image_url: "https://images.gr-assets.com/books/1380645165l/17188744.jpg",
    num_pages: 227,
    description: "Always being dumped by girls named Katherine, Colin Singleton, a washed-up child prodigy with a Judge-Judy obsessed best friend, embarks on a quest to prove The Theorem of Underlying Katherine Predictability, which will impact all of his future relationships and change his life.",
    )
an_abundance_of_katherines.categories = [Category.find_by(name: "young adult")]
an_abundance_of_katherines.moods = [light]


the_girl_on_the_train = UsersBook.create(
    user_id: camille.id,
    title: "The Girl on the Train",
    author: "Paula Hawkins",
    isbn: 9781786825131,
    image_url: "https://images.gr-assets.com/books/1490903702l/22557272.jpg",
    num_pages: 304,
    description: "Three women, three men, connected through marriage or infidelity. Each is to blame for something. But only one is a killer in this #1 New York Times bestselling psychological thriller about human frailty and obsession. Just what goes on in the houses you pass by every day? Rachel takes the same commuter train every morning and evening, rattling over the same junctions, flashing past the same townhouses.The train stops at the same signal every day, and she sees the same couple, breakfasting on their roof terrace. Jason and Jess, as she calls them, seem so happy. Then one day Rachel sees someone new in their garden. Soon after, Rachel sees the woman she calls Jess on the news. Jess has disappeared. Through the ensuing police investigation, Rachel is drawn deeper into the lives of the couple she learns are really Megan and Scott Hipwell. As she befriends Scott, Rachel pieces together what really happened the day Megan disappeared. But when Megan's body is found, Rachel finds herself the chief suspect in the case. Plunged into a world of betrayals, secrets and deceptions, Rachel must confront the facts about her own past and her own failed marriage. A sinister and twisting story that will keep you guessing at every turn, The Girl on the Train is a high-speed chase for the truth.",
    )
the_girl_on_the_train.categories = [Category.find_by(name: "thriller"), Category.find_by(name: "mystery")]


gone_girl = UsersBook.create(
    user_id: camille.id,
    title: "Gone Girl",
    author: "Gillian Flynn",
    isbn: 9780606270175,
    image_url: "https://images.gr-assets.com/books/1397056917l/19288043.jpg",
    num_pages: 422,
    description: "When a woman goes missing on her fifth wedding anniversary, her diary reveals hidden turmoil in her marriage, while her husband, desperate to clear himself of suspicion, realizes that something more disturbing than murder may have occurred.",
    )
gone_girl.categories = [Category.find_by(name: "thriller")]


big_little_lies = UsersBook.create(
    user_id: camille.id,
    title: "Big Little Lies",
    author: "Liane Moriarty",
    isbn: 9781101636237,
    image_url: "https://images.gr-assets.com/books/1492239430l/19486412.jpg",
    num_pages: 416,
    description: "Sometimes it's the little lies that turn out to be the most lethal. . . . A murder... . . . a tragic accident... . . . or just parents behaving badly? What's indisputable is that someone is dead. But who did what ? Big Little Lies follows three women, each at a crossroads: Madeline is a force to be reckoned with. She's funny and biting, passionate, she remembers everything and forgives no one. She's just turned forty—forty?! Her ex-husband and his yogi new wife have moved into her beloved beachside community, and their daughter is in the same kindergarten class as Madeline's youngest (how is this possible?). And to top it all off, Madeline's teenage daughter seems to be choosing...",
    )
big_little_lies.categories = [Category.find_by(name: "thriller")]


city_of_ice = UsersBook.create(
    user_id: camille.id,
    title: "City Of Ice",
    author: "John Farrow",
    isbn: 9781443402996,
    image_url: "http://books.google.com/books/content?id=MlSDqMcY58EC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api",
    num_pages: 544,
    description: "Montreal has been damaged by political uncertainty over separatism, and violent turf wars leave the police force struggling to keep the city safe. Even Sergeant-Detective Émile Cinq-Mars appears to have been compromised. How has he managed to penetrate Montreal’s criminal elite? Who are his informants? And who is the young female operative he seems so desperate to save from the clutches of the mob?",
    )
city_of_ice.categories = [Category.find_by(name: "thriller")]


the_couple_next_door = UsersBook.create(
    user_id: camille.id,
    title: "The Couple Next Door",
    author: "Shari Lapena",
    isbn: 9780735221086,
    image_url: "http://books.google.com/books/content?id=669ZjwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api",
    num_pages: 320,
    description: "A domestic suspense debut about a young couple and their apparently friendly neighbors a twisty, rollercoaster ride of lies, betrayal, and the secrets between husbands and wives. . .\" Anne and Marco Conti seem to have it all a loving relationship, a wonderful home, and their beautiful baby, Cora. But one night when they are at a dinner party next door, a terrible crime is committed. Suspicion immediately focuses on the parents. But the truth is a much more complicated story. Inside the curtained house, an unsettling account of what actually happened unfolds. Detective Rasbach knows that the panicked couple is hiding something. Both Anne and Marco soon discover that the other is keeping secrets, secrets they've kept for years. What follows is the nerve-racking unraveling of a family a chilling tale of deception, duplicity, and unfaithfulness that will keep you breathless until the final shocking twist.",
    )
the_couple_next_door.categories = [Category.find_by(name: "thriller")]


pride_and_prejudice = UsersBook.create(
    user_id: camille.id,
    title: "Pride and Prejudice",
    author: "Jane Austen",
    isbn: 9781853260001,
    image_url: "https://images.gr-assets.com/books/1487841905l/84979.jpg",
    num_pages: 401,
    description: "Austen’s most celebrated novel tells the story of Elizabeth Bennet, a bright, lively young woman with four sisters, and a mother determined to marry them to wealthy men. At a party near the Bennets’ home in the English countryside, Elizabeth meets the wealthy, proud Fitzwilliam Darcy. Elizabeth initially finds Darcy haughty and intolerable, but circumstances continue to unite the pair. Mr. Darcy finds himself captivated by Elizabeth’s wit and candor, while her reservations about his character slowly vanish. The story is as much a social critique as it is a love story, and the prose crackles with Austen’s wry wit.",
    )
pride_and_prejudice.categories = [Category.find_by(name: "romance"), Category.find_by(name: "classic")]
pride_and_prejudice.moods = [light]


sense_and_sensibility = UsersBook.create(
    user_id: camille.id,
    title: "Sense and Sensibility",
    author: "Jane Austen",
    isbn: 9780141439662,
    image_url: "https://images.gr-assets.com/books/1397245675l/14935.jpg",
    num_pages: 409,
    description: "Marianne Dashwood wears her heart on her sleeve, and when she falls in love with the dashing but unsuitable John Willoughby she ignores her sister Elinor's warning that her impulsive behaviour leaves her open to gossip and innuendo. Meanwhile Elinor, always sensitive to social convention, is struggling to conceal her own romantic disappointment, even from those closest to her. Through their parallel experience of love—and its threatened loss—the sisters learn that sense must mix with sensibility if they are to find personal happiness in a society where status and money govern the rules of love.",
    )
sense_and_sensibility.categories = [Category.find_by(name: "romance"), Category.find_by(name: "classic")]
sense_and_sensibility.moods = [light]

jane_eyre = UsersBook.create(
    user_id: camille.id,
    title: "Jane Eyre",
    author: "Charlotte Bronte",
    isbn: 9780142437209,
    image_url: "https://images.gr-assets.com/books/1327867269l/10210.jpg",
    num_pages: 507,
    description: "Orphaned as a child, Jane has felt an outcast her whole young life. Her courage is tested once again when she arrives at Thornfield Hall, where she has been hired by the brooding, proud Edward Rochester to care for his ward Adèle. Jane finds herself drawn to his troubled yet kind spirit. She falls in love. Hard.
But there is a terrifying secret inside the gloomy, forbidding Thornfield Hall. Is Rochester hiding from Jane? Will Jane be left heartbroken and exiled once again?"
    )
jane_eyre.categories = [Category.find_by(name: "romance"), Category.find_by(name: "classic")]
jane_eyre.moods = [cry]


puts 'soffie is ready to search ^_^-b'
