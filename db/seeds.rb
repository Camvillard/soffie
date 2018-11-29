puts 'cleaning the soffie db...'

BookCategory.delete_all
BookMood.delete_all
Mood.delete_all
Category.delete_all
UsersBook.delete_all
User.delete_all

puts 'planting seeds for soffie...'

camille = User.create(email: 'ca.villard@gmail.com', password: 'wagonwagon', first_name: 'camille', last_name: 'villard', reading_speed: "220")


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

Mood.create(
  name: "relaxing with a glass of wine - or whatever you need it to be",
  image_url: "https://res.cloudinary.com/camvillard/image/upload/v1543358544/soffie/book-2.jpg",
  description: "pretty self-explanatory.",
  user: camille
)

Mood.create(
  name: "reading for after an intense 9 weeks coding bootcamp",
  description: "perfect for an over-used brain that cries for some light reading.",
  image_url: "https://res.cloudinary.com/camvillard/image/upload/v1543452106/soffie/book-6.jpg",
  user: camille
)


wine = Mood.find_by(name: "relaxing with a glass of wine - or whatever you need it to be")
light = Mood.find_by(name: "reading for after an intense 9 weeks coding bootcamp")


harry_potter_1 = UsersBook.create(
    user_id: camille.id,
    title: "Harry Potter And The Philosopher's Stone",
    author: 'JK Rowling',
    isbn: 9780747532743,
    image_url: "https://images.gr-assets.com/books/1327190600l/72193.jpg",
    num_pages: 223,
    status: "Reading in progress",
    completed_pages: 145,
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
harry_potter_1.moods = [wine, light]


harry_potter_4 = UsersBook.create(
    user_id: camille.id,
    title: "Harry Potter and the Goblet of Fire",
    author: "JK Rowling",
    isbn: 9780439139601,
    completed_pages: 15,
    status: "Reading in progress",
    image_url: "https://images.gr-assets.com/books/1361482611l/6.jpg",
    num_pages: 734,
    description:"Harry Potter is midway through his training as a wizard and his coming of age.
Harry wants to get away from the pernicious Dursleys and go to the International
Quidditch Cup. He wants to find out about the mysterious event that's supposed
to take place at Hogwarts this year, an event involving two other rival schools
of magic, and a competition that hasn't happened for a hundred years. He wants
to be a normal, fourteen-year-old wizard. But unfortunately for Harry Potter,
he's not normal - even by wizarding standards. And in his case, different can be
deadly."
)
harry_potter_4.categories = [Category.find_by(name: "fiction"),Category.find_by(name: "young adult")]
harry_potter_4.moods = [wine, light]

harry_potter_5 = UsersBook.create(
    user_id: camille.id,
    title: "Harry Potter and the Goblet of Fire",
    author: "JK Rowling",
    isbn: 9780439358071,
    image_url: "https://images.gr-assets.com/books/1542550214l/2.jpg",
    num_pages: 870,
    description:"There is a door at the end of a silent corridor. And it’s haunting Harry
Pottter’s dreams. Why else would he be waking in the middle of the night,
screaming in terror?
Harry has a lot on his mind for this, his fifth year at Hogwarts: a Defense
Against the Dark Arts teacher with a personality like poisoned honey; a big
surprise on the Gryffindor Quidditch team; and the looming terror of the
Ordinary Wizarding Level exams. But all these things pale next to the growing
threat of He-Who-Must-Not-Be-Named---a threat that neither the magical
government nor the authorities at Hogwarts can stop.
As the grasp of darkness tightens, Harry must discover the true depth and
strength of his friends, the importance of boundless loyalty, and the shocking
price of unbearable sacrifice.

His fate depends on them all."
)
harry_potter_5.categories = [Category.find_by(name: "fiction"),Category.find_by(name: "young adult")]
harry_potter_5.moods = [wine, light]


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
inabouti.
"
    )
rien_ne_soppose.categories = [Category.find_by(name: "fiction"), Category.find_by(name: "tragedy")]


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
séisme intérieur ?",
    )
singuliere_tristesse.categories = [Category.find_by(name: "fiction"),Category.find_by(name: "young adult")]
singuliere_tristesse.moods = [wine, light]


saga_harry_potter = UsersBook.create(
    user_id: camille.id,
    title: 'Harry Potter - the whole saga',
    author: 'JK Rowling',
    isbn: 9780747538486,
    image_url: "https://images.gr-assets.com/books/1474169725l/15881.jpg",
    num_pages: 3407,
    description: "Harry Potter is a series of fantasy novels written by British author J. K.
Rowling. The novels chronicle the lives of a young wizard, Harry Potter, and his
friends Hermione Granger and Ron Weasley, all of whom are students at Hogwarts
School of Witchcraft and Wizardry. The main story arc concerns Harry's struggle
against Lord Voldemort, a dark wizard who intends to become immortal, overthrow
the wizard governing body known as the Ministry of Magic, and subjugate all
wizards and Muggles (non-magical people)."
)

saga_harry_potter.categories = [Category.find_by(name: "fiction"),Category.find_by(name: "young adult")]
saga_harry_potter.moods = [wine, light]



to_kill_a_mockingbird = UsersBook.create(
    user_id: camille.id,
    title: "To Kill a Mockingbird (Enhanced Edition)",
    author: "Harper Lee",
    isbn: 9780062369635,
    image_url: "https://images.gr-assets.com/books/1361975680l/2657.jpg",
    num_pages: 336,
    completed_pages: 210,
    status: "Reading in progress",
    description: "Nominated as one of America’s best-loved novels by PBS’s The Great American Read Harper Lee's Pulitzer Prize-winning masterwork of honor and injustice in the deep South—and the heroism of one man in the face of blind and violent hatred One of the best-loved stories of all time, To Kill a Mockingbird has been translated into more than forty languages, sold more than forty million copies worldwide, served as the basis for an enormously popular motion picture, and was voted one of the best novels of the twentieth century by librarians across the country. A gripping, heart-wrenching, and wholly remarkable tale of coming-of-age in a South poisoned by virulent prejudice, it views a world of great beauty and savage inequities through the eyes of a young girl, as her father—a crusading local lawyer—risks everything to defend a black man unjustly accused of a terrible crime."
    )
to_kill_a_mockingbird.categories = [Category.find_by(name: "fiction"), Category.find_by(name: "classic")]



vie_devant_soi = UsersBook.create(
    user_id: camille.id,
    title: "La vie devant soi",
    author: "Romain Gary",
    isbn: 9782070373628,
    image_url: "https://images.gr-assets.com/books/1327936672l/635150.jpg",
    num_pages: 273,
    description: "Signé Ajar, ce roman reçut le prix Goncourt en 1975. Histoire d'amour d'un petit
garçon arabe pour une très vieille femme juive : Momo se débat contre les six
étages que Madame Rosa ne veut plus monter et contre la vie parce que ' ça ne
pardonne pas ' et parce qu'il n'est ' pas nécessaire d'avoir des raisons pour
avoir peur '. Le petit garçon l'aidera à se cacher dans son ' trou juif ', elle
n'ira pas mourir à l'hôpital et pourra ainsi bénéficier du droit sacré ' des
peuples à disposer d'eux-mêmes ' qui n'est pas respecté par l'Ordre des
médecins. Il lui tiendra compagnie jusqu'à ce qu'elle meure et même au-delà de
la mort.."
)
vie_devant_soi.categories = [Category.find_by(name: "fiction")]
vie_devant_soi.moods = [wine]


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
the_hate_you_give.moods = [wine]


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
the_girl_on_the_train.moods = [light]


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
pride_and_prejudice.moods = [light, wine]



puts 'soffie is ready to search ^_^-b'
