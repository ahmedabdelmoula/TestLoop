//
//  DummyData.swift
//  TestLoop
//
//  Created by Ahmed Abdelmoula on 10/9/2021.
//

import Foundation

struct DummyData {
    
    static let actionMoviesArray : [Movie] = [
        Movie.init(movieName: "Black Panther", movieDesc: "After the death of his father, T'Challa returns home to the African nation of Wakanda to take his rightful place as king. When a powerful enemy suddenly reappears, T'Challa's mettle as king -- and as Black Panther -- gets tested when he's drawn into a conflict that puts the fate of Wakanda and the entire world at risk. Faced with treachery and danger, the young king must rally his allies and release the full power of Black Panther to defeat his foes and secure the safety of his people.", movieRating: 7.3, moviePoster: "panther_poster"),
        
        Movie.init(movieName: "Avengers: Endgame", movieDesc: "Adrift in space with no food or water, Tony Stark sends a message to Pepper Potts as his oxygen supply starts to dwindle. Meanwhile, the remaining Avengers -- Thor, Black Widow, Captain America and Bruce Banner -- must figure out a way to bring back their vanquished allies for an epic showdown with Thanos -- the evil demigod who decimated the planet and the universe.", movieRating: 8.4, moviePoster: "endgame_poster"),
        
        Movie.init(movieName: "Mission impossible: Fallout", movieDesc: "Ethan Hunt and the IMF team join forces with CIA assassin August Walker to prevent a disaster of epic proportions. Arms dealer John Lark and a group of terrorists known as the Apostles plan to use three plutonium cores for a simultaneous nuclear attack on the Vatican, Jerusalem and Mecca, Saudi Arabia. When the weapons go missing, Ethan and his crew find themselves in a desperate race against time to prevent them from falling into the wrong hands.", movieRating: 7.7, moviePoster: "fallout_poster"),
        
        Movie.init(movieName: "Mad Max: Fury Road", movieDesc: "Years after the collapse of civilization, the tyrannical Immortan Joe enslaves apocalypse survivors inside the desert fortress the Citadel. When the warrior Imperator Furiosa (Charlize Theron) leads the despot's five wives in a daring escape, she forges an alliance with Max Rockatansky (Tom Hardy), a loner and former captive. Fortified in the massive, armored truck the War Rig, they try to outrun the ruthless warlord and his henchmen in a deadly high-speed chase through the Wasteland.", movieRating: 8.1, moviePoster: "madmax_poster"),
        
        Movie.init(movieName: "Spider-Man: Into the Spider-Verse", movieDesc: "Bitten by a radioactive spider in the subway, Brooklyn teenager Miles Morales suddenly develops mysterious powers that transform him into the one and only Spider-Man. When he meets Peter Parker, he soon realizes that there are many others who share his special, high-flying talents. Miles must now use his newfound skills to battle the evil Kingpin, a hulking madman who can open portals to other universes and pull different versions of Spider-Man into our world.", movieRating: 8.4, moviePoster: "spiderman_poster"),
        
        Movie.init(movieName: "Wonder Woman", movieDesc: "Before she was Wonder Woman (Gal Gadot), she was Diana, princess of the Amazons, trained to be an unconquerable warrior. Raised on a sheltered island paradise, Diana meets an American pilot (Chris Pine) who tells her about the massive conflict that's raging in the outside world. Convinced that she can stop the threat, Diana leaves her home for the first time. Fighting alongside men in a war to end all wars, she finally discovers her full powers and true destiny.", movieRating: 7.4, moviePoster: "wonder_poster"),
        
        Movie.init(movieName: "Coco", movieDesc: "Despite his family's generations-old ban on music, young Miguel dreams of becoming an accomplished musician like his idol Ernesto de la Cruz. Desperate to prove his talent, Miguel finds himself in the stunning and colorful Land of the Dead. After meeting a charming trickster named Héctor, the two new friends embark on an extraordinary journey to unlock the real story behind Miguel's family history.", movieRating: 8.4, moviePoster: "coco_poster"),
        
        Movie.init(movieName: "Dunkirk", movieDesc: "In May 1940, Germany advanced into France, trapping Allied troops on the beaches of Dunkirk. Under air and ground cover from British and French forces, troops were slowly and methodically evacuated from the beach using every serviceable naval and civilian vessel that could be found. At the end of this heroic mission, 330,000 French, British, Belgian and Dutch soldiers were safely evacuated.", movieRating: 7.8, moviePoster: "dunkirk_poster"),
        
        Movie.init(movieName: "Star Wars: The Last Jedi", movieDesc: "Luke Skywalker's peaceful and solitary existence gets upended when he encounters Rey, a young woman who shows strong signs of the Force. Her desire to learn the ways of the Jedi forces Luke to make a decision that changes their lives forever. Meanwhile, Kylo Ren and General Hux lead the First Order in an all-out assault against Leia and the Resistance for supremacy of the galaxy.", movieRating: 7, moviePoster: "starwars_poster"),
        
        Movie.init(movieName: "Thor: Ragnarok", movieDesc: "Imprisoned on the other side of the universe, the mighty Thor finds himself in a deadly gladiatorial contest that pits him against the Hulk, his former ally and fellow Avenger. Thor's quest for survival leads him in a race against time to prevent the all-powerful Hela from destroying his home world and the Asgardian civilization.", movieRating: 7.9, moviePoster: "thor_poster")]
    
    static let comedyMoviesArray : [Movie] = [
        Movie.init(movieName: "It Happened One Night", movieDesc: "In Frank Capra's acclaimed romantic comedy, spoiled heiress Ellie Andrews (Claudette Colbert) impetuously marries the scheming King Westley, leading her tycoon father (Walter Connolly) to spirit her away on his yacht. After jumping ship, Ellie falls in with cynical newspaper reporter Peter Warne (Clark Gable), who offers to help her reunite with her new husband in exchange for an exclusive story. But during their travels, the reporter finds himself falling for the feisty young heiress.", movieRating: 8.1, moviePoster: "onenight_poster"),
        
        Movie.init(movieName: "Modern Times", movieDesc: "This comedic masterpiece finds the iconic Little Tramp (Charlie Chaplin) employed at a state-of-the-art factory where the inescapable machinery completely overwhelms him, and where various mishaps keep getting him sent to prison. In between his various jail stints, he meets and befriends an orphan girl (Paulette Goddard). Both together and apart, they try to contend with the difficulties of modern life, with the Tramp working as a waiter and eventually a performer.", movieRating: 8.5, moviePoster: "modern_poster"),
        
        Movie.init(movieName: "Toy Story 4", movieDesc: "Woody, Buzz Lightyear and the rest of the gang embark on a road trip with Bonnie and a new toy named Forky. The adventurous journey turns into an unexpected reunion as Woody's slight detour leads him to his long-lost friend Bo Peep. As Woody and Bo discuss the old days, they soon start to realize that they're worlds apart when it comes to what they want from life as a toy.", movieRating: 7.7, moviePoster: "toystory_poster"),
        
        Movie.init(movieName: "Lady Bird", movieDesc: "A teenager (Saoirse Ronan) navigates a loving but turbulent relationship with her strong-willed mother (Laurie Metcalf) over the course of an eventful and poignant senior year of high school.", movieRating: 7.4, moviePoster: "ladybird_poster"),
        
        Movie.init(movieName: "BlacKkKlansman", movieDesc: "Ron Stallworth is the first African-American detective to serve in the Colorado Springs Police Department. Determined to make a name for himself, Stallworth bravely sets out on a dangerous mission: infiltrate and expose the Ku Klux Klan. The detective soon recruits a more seasoned colleague, Flip Zimmerman, into the undercover investigation of a lifetime. Together, they team up to take down the extremist hate group as the organization aims to sanitize its rhetoric to appeal to the mainstream.", movieRating: 7.5, moviePoster: "klansman_poster"),
        
        Movie.init(movieName: "The Philadelphia Story", movieDesc: "This classic romantic comedy focuses on Tracy Lord (Katharine Hepburn), a Philadelphia socialite who has split from her husband, C.K. Dexter Haven (Cary Grant), due both to his drinking and to her overly demanding nature. As Tracy prepares to wed the wealthy George Kittredge (John Howard), she crosses paths with both Dexter and prying reporter Macaulay Connor (James Stewart). Unclear about her feelings for all three men, Tracy must decide whom she truly loves.", movieRating: 7.9, moviePoster: "philadelphia_poster"),
        
        Movie.init(movieName: "Eighth Grade", movieDesc: "Thirteen-year-old Kayla endures the tidal wave of contemporary suburban adolescence as she makes her way through the last week of middle school -- the end of her thus far disastrous eighth-grade year.", movieRating: 7.4, moviePoster: "grade_poster"),
        
        Movie.init(movieName: "Booksmart", movieDesc: "Academic overachievers Amy and Molly thought keeping their noses to the grindstone gave them a leg up on their high school peers. But on the eve of graduation, the best friends suddenly realize that they may have missed out on the special moments of their teenage years. Determined to make up for lost time, the girls decide to cram four years of not-to-be missed fun into one night -- a chaotic adventure that no amount of book smarts could prepare them for.", movieRating: 7.2, moviePoster: "booksmart_poster"),
        
        Movie.init(movieName: "Once Upon a Time in Hollywood", movieDesc: "Actor Rick Dalton gained fame and fortune by starring in a 1950s television Western, but is now struggling to find meaningful work in a Hollywood that he doesn't recognize anymore. He spends most of his time drinking and palling around with Cliff Booth, his easygoing best friend and longtime stunt double. Rick also happens to live next door to Roman Polanski and Sharon Tate -- the filmmaker and budding actress whose futures will forever be altered by members of the Manson Family.", movieRating: 7.6, moviePoster: "hollywood_poster"),
        
        Movie.init(movieName: "Zootopia", movieDesc: "From the largest elephant to the smallest shrew, the city of Zootopia is a mammal metropolis where various animals live and thrive. When Judy Hopps (Ginnifer Goodwin) becomes the first rabbit to join the police force, she quickly learns how tough it is to enforce the law. Determined to prove herself, Judy jumps at the opportunity to solve a mysterious case. Unfortunately, that means working with Nick Wilde (Jason Bateman), a wily fox who makes her job even harder.", movieRating: 8, moviePoster: "zootopia_poster")]
    
    static let topMoviesArray : [TopMovies] = [TopMovies.init(topMoviesId: .action, topMoviesTitle: "Top Action Movies", topMoviesImg: "action_poster"),
                                               TopMovies.init(topMoviesId: .comedy, topMoviesTitle: "Top Comedy Movies", topMoviesImg: "comedy_poster")]
    
    static let trendMoviesArray : [Movie] = [
        Movie.init(movieName: "Shang-Chi and the Legend of the Ten Rings", movieDesc: "Marvel Studios' Shang-Chi and The Legend of The Ten Rings stars Simu Liu as Shang-Chi, who must confront the past he thought he left behind when he is drawn into the web of the mysterious Ten Rings organization. The film also stars Tony Leung as Wenwu, Awkwafina as Shang-Chi's friend Katy and Michelle Yeoh as Jiang Nan, as well as Fala Chen, Meng'er Zhang, Florian Munteanu and Ronny Chieng.", movieRating: 7.3, moviePoster: "shang_poster"),
        
        Movie.init(movieName: "Cinderella", movieDesc: "Cinderella is a musically-driven bold new take on the traditional story you grew up with. Our heroine (Camila Cabello) is an ambitious young woman, whose dreams are bigger than the world will allow, but with the help of her Fab G (Billy Porter), she is able to persevere and make her dreams come true.", movieRating: 8.4, moviePoster: "cinderella_poster"),
        
        Movie.init(movieName: "The Green Knight", movieDesc: "An epic fantasy adventure based on the timeless Arthurian legend, THE GREEN KNIGHT tells the story of Sir Gawain (Dev Patel), King Arthur's reckless and headstrong nephew, who embarks on a daring quest to confront the eponymous Green Knight, a gigantic emerald-skinned stranger and tester of men. Gawain contends with ghosts, giants, thieves, and schemers in what becomes a deeper journey to define his character and prove his worth in the eyes of his family and kingdom by facing the ultimate challenger. From visionary filmmaker David Lowery comes a fresh and bold spin on a classic tale from the knights of the round table.", movieRating: 7.7, moviePoster: "knight_poster"),
        
        Movie.init(movieName: "The Suicide Squad", movieDesc: "Welcome to hell--a.k.a. Belle Reve, the prison with the highest mortality rate in the US of A. Where the worst Super-Villains are kept and where they will do anything to get out--even join the super-secret, super-shady Task Force X. Today's do-or-die assignment? Assemble a collection of cons, including Bloodsport, Peacemaker, Captain Boomerang, Ratcatcher 2, Savant, King Shark, Blackguard, Javelin and everyone's favorite psycho, Harley Quinn. Then arm them heavily and drop them (literally) on the remote, enemy-infused island of Corto Maltese. Trekking through a jungle teeming with militant adversaries and guerrilla forces at every turn, the Squad is on a search-and-destroy mission with only Colonel Rick Flag on the ground to make them behave...and Amanda Waller's government techies in their ears, tracking their every movement. And as always, one wrong move and they're dead (whether at the hands of their opponents, a teammate, or Waller herself). If anyone's laying down bets, the smart money is against them--all of them.", movieRating: 8.1, moviePoster: "squad_poster"),
        
        Movie.init(movieName: "Free Guy", movieDesc: "In Free Guy a bank teller who discovers he is actually a background player in an open-world video game, decides to become the hero of his own story... one he rewrites himself. Now in a world where there are no limits, he is determined to be the guy who saves his world his way... before it is too late.", movieRating: 8.4, moviePoster: "guy_poster"),
        
        Movie.init(movieName: "He's All That", movieDesc: "In this reimagining of 1999's She's All That, teen social media influencer Padgett's humiliating on-camera breakup goes viral, leading her to make a risky bet to save her reputation: she swears she can turn scruffy antisocial Cameron into prom king material. But things get complicated when she finds herself falling for him IRL.", movieRating: 7.4, moviePoster: "allthat_poster"),
        
        Movie.init(movieName: "Coco", movieDesc: "Living alone in the Oregon wilderness, a truffle hunter returns to Portland to find the person who stole his beloved pig.", movieRating: 8.4, moviePoster: "pig_poster"),
        
        Movie.init(movieName: "The Night House", movieDesc: "Reeling from the unexpected death of her husband, Beth (Rebecca Hall) is left alone in the lakeside home he built for her. She tries as best she can to keep it together -- but then nightmares come. Disturbing visions of a presence in the house calling to her, beckoning her with a ghostly allure. Against the advice of her friends, she begins digging into her husband's belongings, yearning for answers. What she finds are secrets both strange and disturbing -- a mystery she's determined to unravel.", movieRating: 7.8, moviePoster: "house_poster"),
        
        Movie.init(movieName: "Old", movieDesc: "A tropical holiday turns into a horrific nightmare when a family visits a secluded beach that's somehow causing them to age rapidly -- reducing their entire lives into a single day.", movieRating: 7, moviePoster: "old_poster"),
        
        Movie.init(movieName: "Space Jam: A New Legacy", movieDesc: "When LeBron James and his young son Dom are trapped in a digital space by a rogue A.I., LeBron must get them home safe by leading Bugs, Lola Bunny and the whole gang of notoriously undisciplined Looney Tunes to victory over the A.I.'s digitized champions on the court: a powered-up roster of professional basketball stars as you've never seen them before. It's Tunes versus Goons in the highest-stakes challenge of his life, that will redefine LeBron's bond with his son and shine a light on the power of being yourself.", movieRating: 7.9, moviePoster: "spacejam_poster")]
    
    static let tvShowsArray : [String] = ["friends_poster","himym_poster","sherlock_poster",
                                          "lucifer_poster","got_poster","tvd_poster"]
}