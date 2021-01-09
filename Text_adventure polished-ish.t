View.Set ("title:The Legend of Zoltag, graphics:1920;1080") % *** put your curret screen resolution in lieu of the 1920;1080 here to make the program full screen ***
Draw.Fill (maxx, maxy, black, black)
colour (white)
colourback (black)
var way : string
var font1 : int
var north : string
var door_or_hallway : string
var left_or_right1 : string
var dooryesno : string
var oldmansdoor : string
var northdoor : string
var swingforlegs : string
var boatleftstraight : string
var jump : string
var drink : string
font1 := Font.New ("Arial:70")
put "Welcome to The Legend of Zoltag."
put ""
delay (2000)
put "Narrator: You wake up. You realize that your head is in immense pain"
put "and it hurts to move anything. All you know is that you are in a dungeon,"
put "and you don't know what to do."
put ""
delay (6000)
put "Narrator: You survey your surrounding and realize that you are in a large"
put "room with four hallways each leading in one of the cardinal directions."
put "You can go in any direction: North, South, East, or West."
put "Which do you choose?"
put ""
get way
put ""
if way = "West" or way = "west"
	then
    put "You go through the west hallway. After walking a while you come upon a river."
    put "You see a boat. You get in. You can go straight or left. Which one do you go?"
    put ""
    get boatleftstraight
    if boatleftstraight = "left" or boatleftstraight = "Left"
	    then
	    put ""
	put "You get in the boat and turn left. There are huge currents that drag you very far." 
	delay (2000)
	put "You drift past a dock. You are devestated and know you might not make it out alive."
	put "You hear the distinct roar of a waterfall. As you approach the waterfall you seethat there is a small spot that you can jump to."
	put "Do you do it?"
	put ""
	get jump
	put ""
	if jump = "yes" or jump = "Yes"
		then
	    delay (2000)
	    put "It is a grand leap of faith, but you make it. "
	    put "You scrape your knee in the process, but you are otherwise unharmed."
	    put "You walk along the path for hours without finding anything, until you spot two doors one on your left and one on your right!"
	    put "Which one do you go open and walk through?"
	    put ""
	    delay (4000)
	    get north
	    put ""
	    if north = "Right" or north = "right"
		    then
		put "You see an old man with a pointy hat. He introduces himself as Merlin, but you are skeptical."
		put "He tells you to take the next left."
		put "After saying this he dissapears into a puff of smoke."
		delay (5000)
		put "You are walking along when you see a door on your left leading away from the hallway."
		put "Do you go in it like the old man said?"
		put ""
		get oldmansdoor
		if oldmansdoor = "No" or oldmansdoor = "no"
			then
		    put ""
		    put "It seems you made the correct choice because you hear the same old man sighing"
		    put "very loudly behind you saying 'Why does no one listen to me!?'"
		    delay (3000)
		    put "After a while of walking you see a door on your left. Do you go through it?"
		    put ""
		    get northdoor
		    if northdoor = "Yes" or northdoor = "yes"
			    then
			put ""
			put "You open the door and to your surprise it leads to a hallway with no lighting."
			put "You know you shouldn't go into it but you hear a faint song being sung."
			delay (5000)
			put "After following the beautiful song you see a large in girth, pock-marked lady who, it seems, is singing this amazing song."
			delay (5000)
			put "You come closer and notice faint outines of faces on the lady's body."
			put "You are wondering at that when she increases the volume of her song and you get drawn closer."
			put "She walks toward you and transforms to a giant, blue cube-like creature."
			delay (5000)
			put "You cry out but are soon enveloped in the blue cube. You realise that it was a trap."
			delay (3000)
			put "You suffocate as you are absorbed by the gelatinous cube."
			delay (7000)
			cls
			Font.Draw ("GAME OVER", 50, 30, font1, red)
		    elsif northdoor = "no" or northdoor = "No" or northdoor = "Straight" or northdoor = "straight" or northdoor = "nope" or northdoor = "Nope"
			    then
			put "You walk along the hallway for days. You are starving and parched."
			put "You are elated when you see a water bottle and a hamburger just sitting on the ground!"
			put "You eat and drink and when you are finished you go on your way."
			delay (3000)
			put "After a while, you see another fork in the path. Do you go left or right?"
			put ""
			get left_or_right1
			put ""
		    end if
		    if left_or_right1 = "left" or left_or_right1 = "Left" %DONE!!!!!
			    then
			delay (4000)
			put "You go to the left fork. After a couple of minutes, you spot a shadow-like figure."
			delay (2000)
			put "When you are getting close, the figure appears to be wearing a black cloak."
			delay (2000)
			put "The shadow-like figure turns around when you are near, and draws a long, black, sword from inside his cloak. You look into his face. It is just a skull."
			put "His eyes seem like red hot coals in empty sockets. This is the last picture in your mind when the black sword sliced through your midsection twice."
			delay (7000)
			Font.Draw ("GAME OVER", 50, 30, font1, red)
		    elsif left_or_right1 = "right" or left_or_right1 = "Right" %DONE!!!!!
			    then
			put "You find yourself in a huge room that looks like it might be an abandoned"
			put "ball room. You see a glint in that far corner."
			delay (2000)
			put "You go to see what it is, and it is a sword and sheath! You pick them up and put them away. You know that there should be some armour somewhere."
			delay (2000)
			put "There is a hallway leading out of the ballroom. You follow it and you notice another shimmer in a little nook in the side of a wall."
			delay (2000)
			put "You go up to it and see a hidden room. You tear off the bricks covering the room and you see some armour that consists of a breastplate, some leggings, and a helmet."
			put "You put it all on, and it seems to fit perfectly."
			delay (3000)
			put "You continue walking, feeling confident in yourself now that you have some defences, and you see a door. Do you go in it?"
			put ""
			get dooryesno
			put ""
		    end if
		    if dooryesno = "Yes" or dooryesno = "yes" %DONE!!!!
			    then
			put
			    "You see a very small man sitting in a chair. He turns to you and says 'Well, well, took you long enough to get here. I am Zoltag. I see that you found my little cache. Good it'll give me a challenge!'"
			delay (3000)
			put
			    "The little man charges at you. You take out the sword from it's sheath and stab at the man. He easily dodges and kicks your shin. You hear a sickening sound as your shin is shattered."
			delay (3000)
			put "You are in immense pain, but somehow know that this is the man that captured you, and if you don't kill him now, you'll die."
			delay (2000)
			put "Out of the corner of your eye you see a skeleton that seems to be motioning to the little man's legs."
			put "Do you swing for the man's legs?"
			get swingforlegs
			if swingforlegs = "yes" or swingforlegs = "Yes"
				then
			    put "You are panicking and trying anything, even if it is immaginary."
			    delay (4000)
			    put "You swing for the man's legs. He doesn't see it coming and they come off with one clean sweep. The man falls screaming to the ground, and you cut off his head."
			    delay (10000)
			    put "You feel a burden being lifted from your soul and feel as light as air. You sit up, not realizing that you were lying down, and know that it was all a dream."
			    delay (8000)
			    cls
			    Font.Draw ("YOU WIN", 50, 30, font1, green)
			elsif swingforlegs = "No" or swingforlegs = "no"
				then
			    put "You ignore the skeleton and swing for the man's head."
			    delay (6000)
			    put "He easily ducks under and, out of no where, pulls out a sword, jumps up to meet you eye to eye,"
			    put "and cuts your head clean off."
			    delay (6000)
			    Font.Draw ("GAME OVER", 50, 30, font1, red)
			elsif dooryesno = "no" or dooryesno = "No"
				then
			    put "You keep on walking. You think to outloud 'I should have went in the door.' You hear a voice that seems"
			    put "to come from no where and everywhere that says 'Yes, yes you should have.' And at that moment a steel wall shoots up behind you."
			    delay (5000)
			    put "You realise that you blew your chance at freedom."
			    delay (3000)
			    put "You notice something on the ground, and since you have no chance of escape, you pick it up. The floor opens up underneath you and fall on what seems to be a slide."
			    put "You fall for a couple minutes and reach your terminal velocity."
			    delay (5000)
			    put "The slide end but the pit keeps going. You see the bottom for an instant before you hit it. When you do, your leg bones go up into your upper body, sending bone"
			    put "fragments into all of the organs that didn't explode on impact."
			    delay (10000)
			    Font.Draw ("GAME OVER", 50, 30, font1, red)
			end if
		    elsif oldmansdoor = "yes" or oldmansdoor = "Yes"
			    then
			put "You go in to the next room. You hear the door slam shut."
			put "The room is ever so small."
			delay (5000)
			put "You hear some gears and wonder what is happening. You then notice that the walls"
			put "of the room are getting smaller by the second. You try desperatly to open the"
			put "door to no avail."
			delay (5000)
			put "You can hear an echoing laugh as you get crushed to death by the walls."
			delay (7000)
			cls
			Font.Draw ("GAME OVER", 50, 30, font1, red)
		    elsif north = "left" or north = "Left"
			    then
			put "You go into the left door and to your surprise it closes with a huge bang. You"
			put "look at the door and see that there is no knob from your side."
			put "You have to keep going."
			delay (4000)
			put "You walk for hours on end and there is no end in sight."
			delay (1000)
			put "You start to get very hungry. You look around and instead of finding food,"
			put "you see a door on your left. Do you go in it, or continue along the hallway?"
			put "Left or straight?"
			put ""
			delay (4000)
			get door_or_hallway
			put ""
			if door_or_hallway = "left" or door_or_hallway = "Left" %DONE!!!!
				then
			    put "You open the door to go in to the next room. You hear the door behind you clang shut as expected,"
			    put "but what you didn't expect is that the room is ever so small."
			    delay (5000)
			    put "You hear some gears and wonder what is happening. You then notice that the walls"
			    put "of the room are getting smaller by the second. You try desperatly to open the"
			    put "door to no avail."
			    delay (5000)
			    put "You can hear an echoing laugh as you get crushed to death by the walls."
			    delay (7000)
			    cls
			    Font.Draw ("GAME OVER", 50, 30, font1, red)
			elsif door_or_hallway = "straight" %DONE!!!!
				then
			    put
				"You keep going for days. You are starving and parched. You are elated when you"
			    put "see a water bottle and a hamburger just sitting on the ground! You eat and drink"
			    put "and when you are finished you go on your way."
			    delay (3000)
			    put "After a while, you see another fork in the path. Do you go left or right?"
			    put ""
			    get left_or_right1
			    put ""
			end if
			if left_or_right1 = "left" or left_or_right1 = "Left" %DONE!!!!!
				then
			    delay (4000)
			    put "You go to the left fork. After a couple of minutes, you spot a shadow-like"
			    put "figure."
			    delay (2000)
			    put "When you are getting close, the figure appears to be wearing a black cloak."
			    delay (2000)
			    put "The shadow-like figure turns around when you are near, and draws a long, black, sword from inside his cloak. You look into his face. It is just a skull. His eyes"
			    put "seem like red hot coals in empty sockets. This is the last picture in your mind when the black sword sliced through your midsection twice."
			    delay (6000)
			    Font.Draw ("GAME OVER", 50, 30, font1, red)
			elsif left_or_right1 = "right" or left_or_right1 = "Right" %DONE!!!!!
				then
			    put "You find yourself in a huge room that looks like it might be an abandoned"
			    put "ball room. You see a glint in that far corner."
			    delay (2000)
			    put "You go to see what it is, and it is a sword and sheath! You pick them up and put them away. You know that there should be some armour somewhere."
			    delay (2000)
			    put "There is a hallway leading out of the ballroom. You follow it and you notice another shimmer in a little nook in the side of a wall."
			    delay (2000)
			    put
				"You go up to it and see a hidden room. You tear off the bricks covering the room and you see some armour that consists of a breastplate, some leggings, and a helmet. You put it all on, and it seems to fit perfectly."
			    delay (3000)
			    put "You continue walking, feeling confident in yourself now that you have some defenses, and you see a door. Do you go in it?"
			    put ""
			    get dooryesno
			    put ""
			end if
			if dooryesno = "Yes" or dooryesno = "yes" %DONE!!!!
				then
			    put
				"You see a very small man sitting in a chair. He turns to you and says 'Well, well, took you long enough to get here. I am Zoltag. I see that you found my little cache. Good it'll give me a challenge!'"
			    delay (3000)
			    put
				"The little man charges at you. You take out the sword from it's sheath and stab at the man. He easily dodges and kicks your shin. You hear a sickening sound as your shin is shattered."
			    delay (3000)
			    put "You are in immense pain, but somehow know that this is the man that captured you, and if you don't kill him now, you'll die."
			    delay (2000)
			    put "Out of the corner of your eye you see a skeleton that seems to be motioning to the little man's legs. You are panicking and trying anything."
			    delay (4000)
			    put "You swing for the man's legs. He doesn't see it coming and they come off with one clean sweep. The man falls screaming to the ground, and you cut off his head."
			    delay (10000)
			    put "You feel a burden being lifted from your soul and feel as light as air. You sit up, not realizing that you were lying down, and know that it was all a dream."
			    delay (8000)
			    cls
			    Font.Draw ("YOU WIN", 50, 30, font1, green)
			elsif dooryesno = "No" or dooryesno = "no" %DONE!!!
				then
			    put "You don't go in the door but out of the corner of your eye you see a bobbing light at the end of the tunnel. You know you shouldn't go, but you do anyway."
			    put
				"You continue along the hallway. When you are near the bobing light, you notice that it is in fact a man with a cowboy hat holding a torch. The man turns around and it is Chuck Norris."
			    put "You try to run away but he follows you with ease. When he gets close enough, you see the brown blur of a cowboy boot rushing toward your face, then blackness."
			    delay (6000)
			    cls
			    Font.Draw ("GAME OVER", 50, 30, font1, red)
			end if
		    elsif oldmansdoor = "yes" or oldmansdoor = "Yes"
			    then
			put "You go in to the next room. You hear the door slam shut."
			put "The room is ever so small."
			delay (5000)
			put "You hear some gears and wonder what is happening. You then notice that the walls"
			put "of the room are getting smaller by the second. You try desperatly to open the"
			put "door to no avail."
			delay (5000)
			put "You can hear an echoing laugh as you get crushed to death by the walls."
			delay (7000)
			cls
			Font.Draw ("GAME OVER", 50, 30, font1, red)
		    elsif jump = "No" or jump = "no"
			    then
			put "You don't jump to the platform and instantly regret your decision."
			put "You go over the waterfall. As you are falling, you approximate that the"
			put "waterfall is 500 feet tall. You are battered by the rocks on the way down,"
			put "and are dead before you hit the water."
			delay (10000)
			cls
			Font.Draw ("GAME OVER", 50, 30, font1, red)
		    end if
		elsif boatleftstraight = "Straight" or boatleftstraight = "straight"
			then
		    put "You go on the boat. It is a nice, calm boat ride."
		    put "After a couple hours, you feel thristy. You take a drink from the water"
		    put "but soon realise that it is salty. After three days of the boat ride, you"
		    put "become very thirsty."
		    delay (4000)
		    put "Do you take a drink?"
		    get drink
		    put ""
		    if drink = "yes" or drink = "Yes"
			    then
			put ""
			put "You take a drink of the salt water, but it only makes you more thirsty."
			put "After a couple more days, you die of dehydration."
			delay (10000)
			Font.Draw ("GAME OVER", 50, 30, font1, red)
			if drink = "no" or drink = "No"
				then
			    put "After another day, you get extremely thirsty. You know you shoudn't drink from the water and you wait for an area of land that might have some water on it."
			    put "After another couple of hours you feel very light headed. After another three hours you pass out."
			    put "Laying there in the boat is where you slowly die from dehydration."
			    delay (10000)
			    cls
			    Font.Draw ("GAME OVER", 50, 30, font1, red)
if way = "South" or way = "south"
	then
    put "You see that it instead of a plain hallway it has a door."
    put "You try to open the door, it takes many trys but when it does, the door comes"
    put "off of its hinges. You throw it to the ground."
    delay (3000)
    put "After a while of walking, you see a small pile of gold coins. You are absolutly elated and think that this must be your reward for getting"
    put "out of the dungeon. You have a small part of your mind that realises that it is much to soon to be done, but you don't pay attention to it, you're RICH!!"
    delay (9000)
    put "You gather up as much of the money as you can and keep walking, figuring that"
    put "the exit must be close by."
    put "While walking, you find pile after pile of precious metals, stones, and"
    put "artifacts."
    put "After quite some time you happen upon an extremely hot room. After some"
    put "examination you can see some lava in the far reaches of the room."
    delay (9000)
    put "You go over to investigate when an enormous pile of gold, silver, rubies,"
    put "sapphires, and much more catch your eye."
    put "In that pile you see a jewel-encrusted dagger and sheath. You take it."
    put "you can also see some smoke coming out from a corner. You go"
    put "over to that corner and see a large reptile."
    delay (9000)
    put "You realize that it's a fire-breathing dragon. You are very scared but think"
    put "it's sleeping so it won't know if you take that nice,"
    put "shiny gold crown at the top of the pile of precious things. As you are climbing the pile you hear a chirp from inside the"
    put "pile and then you realise what the pile was for. It was to keep the dragon"
    put "babies warm."
    delay (9000)
    put "You know the dragon will wake up any second and so you hide within the great"
    put "pile. When the dragon awakes, you hear it sniffing around"
    put "For the percieved threat. You know it will find you. You take out your sword and"
    put "jump out of the pile at the dragon. You skewer it's eye and rip it out, not"
    put "realising that dragons have extreme regenerative abilities."
    delay (9000)
    put "This only enrages the magnificent beast. It opens it's jaws and roasts you"
    put "alive, content that now it doesn't have to hunt for the hatchlings anymore."
    delay (10000)
    cls
    Font.Draw ("GAME OVER", 50, 30, font1, red)
elsif way = "West" or way = "west"
	then
    put "You go through the west hallway. After walking a while you come upon a river."
    put "You see a boat. You get in. You can go straight or left. Which one do you go?"
    get boatleftstraight
    if boatleftstraight = "left" or boatleftstraight = "Left"
	    then
	put "You get in the boat and turn left. There are huge currents that drag you very far."
	delay (2000)
	put "You drift past a dock. You are devestated and know you might not make it out alive."
	put "You hear the distinct roar of a waterfall. As you approach the waterfall you see that there is a small"
	put "spot that you can jump to. Do you do it?"
	put ""
	get jump
	put ""
	if jump = "yes" or jump = "Yes"
		then
	    delay (2000)
	    put "It is a grand leap of faith, but you make it. You scrape your knee in the"
	    put "process, but you are"
	    put "otherwise unharmed. You walk along the path for hours without finding anything, until you spot two"
	    put "doors one on your left and one on your right! Which one do you go open and walk"
	    put "through?"
	    put ""
	    delay (4000)
	    get north
	    put ""
	    if north = "Right" or north = "right"
		    then
		put "You see an old man with a pointy hat. He introduces himself as Merlin, but you"
		put "are skeptical. He tells you to take the next left. He dissapears into a puff of"
		put "smoke."
		delay (5000)
		put "You are walking along when you see a door on your left leading away from the"
		put "hallway. Do you go in it like the old man said?"
		put ""
		get oldmansdoor
		if oldmansdoor = "No" or oldmansdoor = "no"
			then
		    put ""
		    put "It seems you made the correct choice because you hear the same old man sighing"
		    put "very loudly behind you saying 'Why does no one listen to me!?'"
		    delay (3000)
		    put "After a while of walking you see a door on your left. Do you go through it?"
		    put ""
		    get northdoor
		    if northdoor = "Yes" or northdoor = "yes"
			    then
			put ""
			put "You open the door and to your surprise it leads to a hallway with no lighting."
			put "You know you shouldn't go into it but you hear a faint song being sung."
			delay (5000)
			put "After following the beautiful song you see a large in girth, pock-marked lady"
			put "who, it seems, is singing this amazing song."
			delay (5000)
			put "You come closer and notice faint outines of faces on the lady's body. You are"
			put "wondering at that when she increases the volume of her song and you get drawn"
			put "closer. She walks toward you and transforms to a giant, blue cube-like creature."
			delay (5000)
			put "You cry out but are soon enveloped in the blue cube. You realise that it was a"
			put "trap."
			delay (3000)
			put "You suffocate as you are absorbed by the gelatinous cube."
			delay (10000)
			cls
			Font.Draw ("GAME OVER", 50, 30, font1, red)
		    elsif northdoor = "no" or northdoor = "No" or northdoor = "Straight" or northdoor = "straight" or northdoor = "nope" or northdoor = "Nope"
			    then
			put "You walk along the hallway for days. You are starving and parched. You are elated when you"
			put "see a water bottle and a hamburger just sitting on the ground! You eat and drink"
			put "and when you are finished you go on your way."
			delay (3000)
			put "After a while, you see another fork in the path. Do you go left or right?"
			put ""
			get left_or_right1
			put ""
		    end if
		    if left_or_right1 = "left" or left_or_right1 = "Left" %DONE!!!!!
			    then
			delay (4000)
			put "You go to the left fork. After a couple of minutes, you spot a shadow-like"
			put "figure."
			delay (2000)
			put "When you are getting close, the figure appears to be wearing a black cloak."
			delay (2000)
			put "The shadow-like figure turns around when you are near, and draws a long, black, sword from inside his cloak. You look into his face. It is just a skull. His eyes"
			put "seem like red hot coals in empty sockets. This is the last picture in your mind when the black sword sliced through your midsection twice."
			delay (6000)
			Font.Draw ("GAME OVER", 50, 30, font1, red)
		    elsif left_or_right1 = "right" or left_or_right1 = "Right" %DONE!!!!!
			    then
			put "You find yourself in a huge room that looks like it might be an abandoned"
			put "ball room. You see a glint in that far corner."
			delay (2000)
			put "You go to see what it is, and it is a sword and sheath! You pick them up and put them away. You know that there should be some armour somewhere."
			delay (2000)
			put "There is a hallway leading out of the ballroom. You follow it and you notice another shimmer in a little nook in the side of a wall."
			delay (2000)
			put
			    "You go up to it and see a hidden room. You tear off the bricks covering the room and you see some armour that consists of a breastplate, some leggings, and a helmet. You put it all on, and it seems to fit perfectly."
			delay (3000)
			put "You continue walking, feeling confident in yourself now that you have some defenses, and you see a door. Do you go in it?"
			put ""
			get dooryesno
			put ""
		    end if
		    if dooryesno = "Yes" or dooryesno = "yes" %DONE!!!!
			    then
			put
			    "You see a very small man sitting in a chair. He turns to you and says 'Well, well, took you long enough to get here. I am Zoltag. I see that you found my little cache. Good it'll give me a challenge!'"
			delay (3000)
			put
			    "The little man charges at you. You take out the sword from it's sheath and stab at the man. He easily dodges and kicks your shin. You hear a sickening sound as your shin is shattered."
			delay (3000)
			put "You are in immense pain, but somehow know that this is the man that captured you, and if you don't kill him now, you'll die."
			delay (2000)
			put "Out of the corner of your eye you see a skeleton that seems to be motioning to the little man's legs."
			put "Do you swing for the man's legs?"
			get swingforlegs
			if swingforlegs = "yes" or swingforlegs = "Yes"
				then
			    put "You are panicking and trying anything, even if it is immaginary."
			    delay (4000)
			    put "You swing for the man's legs. He doesn't see it coming and they come off with one clean sweep. The man falls screaming to the ground, and you cut off his head."
			    delay (10000)
			    put "You feel a burden being lifted from your soul and feel as light as air. You sit up, not realizing that you were lying down, and know that it was all a dream."
			    delay (8000)
			    cls
			    Font.Draw ("YOU WIN", 50, 30, font1, green)
			elsif swingforlegs = "No" or swingforlegs = "no"
				then
			    put "You ignore the skeleton and swing for the man's head."
			    delay (6000)
			    put "He easily ducks under and, out of no where, pulls out a sword, jumps up to meet you eye to eye,"
			    put "and cuts your head clean off."
			    delay (6000)
			    Font.Draw ("GAME OVER", 50, 30, font1, red)
			elsif dooryesno = "no" or dooryesno = "No"
				then
			    put "You keep on walking. You think to outloud 'I should have went in the door.' You hear a voice that seems"
			    put "to come from no where and everywhere that says 'Yes, yes you should have.' And at that moment a steel wall shoots up behind you."
			    delay (5000)
			    put "You realise that you blew your chance at freedom."
			    delay (3000)
			    put "You notice something on the ground, and since you have no chance of escape, you pick it up. The floor opens up underneath you and fall on what seems to be a slide."
			    put "You fall for a couple minutes and reach your terminal velocity."
			    delay (5000)
			    put "The slide end but the pit keeps going. You see the bottom for an instant before you hit it. When you do, your leg bones go up into your upper body, sending bone"
			    put "fragments into all of the organs that didn't explode on impact."
			    delay (10000)
			    Font.Draw ("GAME OVER", 50, 30, font1, red)
			end if
		    elsif oldmansdoor = "yes" or oldmansdoor = "Yes"
			    then
			put "You go in to the next room. You hear the door slam shut."
			put "The room is ever so small."
			delay (5000)
			put "You hear some gears and wonder what is happening. You then notice that the walls"
			put "of the room are getting smaller by the second. You try desperatly to open the"
			put "door to no avail."
			delay (5000)
			put "You can hear an echoing laugh as you get crushed to death by the walls."
			delay (7000)
			cls
			Font.Draw ("GAME OVER", 50, 30, font1, red)
		    elsif north = "left" or north = "Left"
			    then
			put "You go into the left door and to your surprise it closes with a huge bang. You"
			put "look at the door and see that there is no knob from your side."
			put "You have to keep going."
			delay (4000)
			put "You walk for hours on end and there is no end in sight."
			delay (1000)
			put "You start to get very hungry. You look around and instead of finding food,"
			put "you see a door on your left. Do you go in it, or continue along the hallway?"
			put "Left or straight?"
			put ""
			delay (4000)
			get door_or_hallway
			put ""
			if door_or_hallway = "left" or door_or_hallway = "Left" %DONE!!!!
				then
			    put "You open the door to go in to the next room. You hear the door behind you clang shut as expected,"
			    put "but what you didn't expect is that the room is ever so small."
			    delay (5000)
			    put "You hear some gears and wonder what is happening. You then notice that the walls"
			    put "of the room are getting smaller by the second. You try desperatly to open the"
			    put "door to no avail."
			    delay (5000)
			    put "You can hear an echoing laugh as you get crushed to death by the walls."
			    delay (7000)
			    cls
			    Font.Draw ("GAME OVER", 50, 30, font1, red)
			elsif door_or_hallway = "straight" %DONE!!!!
				then
			    put
				"You keep going for days. You are starving and parched. You are elated when you"
			    put "see a water bottle and a hamburger just sitting on the ground! You eat and drink"
			    put "and when you are finished you go on your way."
			    delay (3000)
			    put "After a while, you see another fork in the path. Do you go left or right?"
			    put ""
			    get left_or_right1
			    put ""
			end if
			if left_or_right1 = "left" or left_or_right1 = "Left" %DONE!!!!!
				then
			    delay (4000)
			    put "You go to the left fork. After a couple of minutes, you spot a shadow-like"
			    put "figure."
			    delay (2000)
			    put "When you are getting close, the figure appears to be wearing a black cloak."
			    delay (2000)
			    put "The shadow-like figure turns around when you are near, and draws a long, black, sword from inside his cloak. You look into his face. It is just a skull. His eyes"
			    put "seem like red hot coals in empty sockets. This is the last picture in your mind when the black sword sliced through your midsection twice."
			    delay (6000)
			    Font.Draw ("GAME OVER", 50, 30, font1, red)
			elsif left_or_right1 = "right" or left_or_right1 = "Right" %DONE!!!!!
				then
			    put "You find yourself in a huge room that looks like it might be an abandoned"
			    put "ball room. You see a glint in that far corner."
			    delay (2000)
			    put "You go to see what it is, and it is a sword and sheath! You pick them up and put them away. You know that there should be some armour somewhere."
			    delay (2000)
			    put "There is a hallway leading out of the ballroom. You follow it and you notice another shimmer in a little nook in the side of a wall."
			    delay (2000)
			    put
				"You go up to it and see a hidden room. You tear off the bricks covering the room and you see some armour that consists of a breastplate, some leggings, and a helmet. You put it all on, and it seems to fit perfectly."
			    delay (3000)
			    put "You continue walking, feeling confident in yourself now that you have some defenses, and you see a door. Do you go in it?"
			    put ""
			    get dooryesno
			    put ""
			end if
			if dooryesno = "Yes" or dooryesno = "yes" %DONE!!!!
				then
			    put
				"You see a very small man sitting in a chair. He turns to you and says 'Well, well, took you long enough to get here. I am Zoltag. I see that you found my little cache. Good it'll give me a challenge!'"
			    delay (3000)
			    put
				"The little man charges at you. You take out the sword from it's sheath and stab at the man. He easily dodges and kicks your shin. You hear a sickening sound as your shin is shattered."
			    delay (3000)
			    put "You are in immense pain, but somehow know that this is the man that captured you, and if you don't kill him now, you'll die."
			    delay (2000)
			    put "Out of the corner of your eye you see a skeleton that seems to be motioning to the little man's legs. You are panicking and trying anything."
			    delay (4000)
			    put "You swing for the man's legs. He doesn't see it coming and they come off with one clean sweep. The man falls screaming to the ground, and you cut off his head."
			    delay (10000)
			    put "You feel a burden being lifted from your soul and feel as light as air. You sit up, not realizing that you were lying down, and know that it was all a dream."
			    delay (8000)
			    cls
			    Font.Draw ("YOU WIN", 50, 30, font1, green)
			elsif dooryesno = "No" or dooryesno = "no" %DONE!!!
				then
			    put "You don't go in the door but out of the corner of your eye you see a bobbing light at the end of the tunnel. You know you shouldn't go, but you do anyway."
			    put
				"You continue along the hallway. When you are near the bobing light, you notice that it is in fact a man with a cowboy hat holding a torch. The man turns around and it is Chuck Norris."
			    put "You try to run away but he follows you with ease. When he gets close enough, you see the brown blur of a cowboy boot rushing toward your face, then blackness."
			    delay (6000)
			    cls
			    Font.Draw ("GAME OVER", 50, 30, font1, red)
			end if
		    elsif oldmansdoor = "yes" or oldmansdoor = "Yes"
			    then
			put "You go in to the next room. You hear the door slam shut."
			put "The room is ever so small."
			delay (5000)
			put "You hear some gears and wonder what is happening. You then notice that the walls"
			put "of the room are getting smaller by the second. You try desperatly to open the"
			put "door to no avail."
			delay (5000)
			put "You can hear an echoing laugh as you get crushed to death by the walls."
			delay (7000)
			cls
			Font.Draw ("GAME OVER", 50, 30, font1, red)
		    elsif jump = "No" or jump = "no"
			    then
			put "You don't jump to the platform and instantly regret your decision."
			put "You go over the waterfall. As you are falling, you approximate that the"
			put "waterfall is 500 feet tall. You are battered by the rocks on the way down,"
			put "and are dead before you hit the water."
			delay (10000)
			cls
			Font.Draw ("GAME OVER", 50, 30, font1, red)
		    end if
		elsif boatleftstraight = "Straight" or boatleftstraight = "straight"
			then put "You go on the boat. It is a nice, calm boat ride."
			put "After a couple hours, you feel thristy. You take a drink from the water"
			put "but soon realise that it is salty. After three days of the boat ride, you"
			put "become very thirsty."
			delay (4000)
			put "Do you take a drink?"
			get drink
			put ""
			if drink = "yes" or drink = "Yes"
			    then
			put ""
			put "You take a drink of the salt water, but it only makes you more thirsty."
			put "After a couple more days, you die of dehydration."
			delay (10000)
			Font.Draw ("GAME OVER", 50, 30, font1, red)
			if drink = "no" or drink = "No"
			then put "After another day, you get extremely thirsty. You know you shoudn't drink from the water and you wait for an area of land that might have some water on it."
			put "After another couple of hours you feel very light headed. After another three hours you pass out."
			put "Laying there in the boat is where you slowly die from dehydration."
			delay (10000)
			cls
			Font.Draw ("GAME OVER", 50, 30, font1, red)
		elsif way = "East" or way = "east" %DONE!!!!!!!!!!!!!
			then
		    put
			"You see a bobbing light at the end of a tunnel. You just realise that there was a door behind you. You turn around to look but it slams in your face and you are"
		    put "locked in the hallway."
		    delay (5000)
		    put
			"You continue along the hallway. When you are near the bobbing light, you notice that it is in fact a man with a cowboy hat holding a torch. The man turns around and it Chuck Norris himself."
		    delay (5000)
		    put "You try to run away but he follows you with ease. When he gets close enough, you see the brown blur of a cowboy boot rushing toward your face, then blackness."
		    delay (10000)
		    cls
		    Font.Draw ("GAME OVER", 50, 30, font1, red)
		elsif way = "North" or way = "north"
			then
		    put "You find yourself walking for hours without finding anything, until you spot two"
		    put "doors one on your left and one on your right! Which one do you go open and walk"
		    put "through?"
		    put ""
		    delay (4000)
		    get north
		    put ""
		    if north = "Right" or north = "right"
			    then
			put "You see an old man with a pointy hat. He introduces himself as Merlin, but you"
			put "are skeptical. He tells you to take the next left. He dissapears into a puff of"
			put "smoke."
			delay (5000)
			put "You are walking along when you see a door on your left leading away from the"
			put "hallway. Do you go in it like the old man said?"
			put ""
			get oldmansdoor
			if oldmansdoor = "No" or oldmansdoor = "no"
				then
			    put ""
			    put "It seems you made the correct choice because you hear the same old man sighing"
			    put "very loudly behind you saying 'Why does no one listen to me!?'"
			    delay (3000)
			    put "After a while of walking you see a door on your left. Do you go through it?"
			    put ""
			    get northdoor
			    if northdoor = "Yes" or northdoor = "yes"
				    then
				put ""
				put "You open the door and to your surprise it leads to a hallway with no lighting."
				put "You know you shouldn't go into it but you hear a faint song being sung."
				delay (5000)
				put "After following the beautiful song you see a large in girth, pock-marked lady"
				put "who, it seems, is singing this amazing song."
				delay (5000)
				put "You come closer and notice faint outines of faces on the lady's body. You are"
				put "wondering at that when she increases the volume of her song and you get drawn"
				put "closer. She walks toward you and transforms to a giant, blue cube-like creature."
				delay (5000)
				put "You cry out but are soon enveloped in the blue cube. You realise that it was a"
				put "trap."
				delay (3000)
				put "You suffocate as you are absorbed by the gelatinous cube."
				delay (10000)
				cls
				Font.Draw ("GAME OVER", 50, 30, font1, red)
			    elsif northdoor = "no" or northdoor = "No" or northdoor = "Straight" or northdoor = "straight" or northdoor = "nope" or northdoor = "Nope"
				    then
				put "You walk along the hallway for days. You are starving and parched. You are elated when you"
				put "see a water bottle and a hamburger just sitting on the ground! You eat and drink"
				put "and when you are finished you go on your way."
				delay (3000)
				put "After a while, you see another fork in the path. Do you go left or right?"
				put ""
				get left_or_right1
				put ""
			    end if
			    if left_or_right1 = "left" or left_or_right1 = "Left" %DONE!!!!!
				    then
				delay (4000)
				put "You go to the left fork. After a couple of minutes, you spot a shadow-like"
				put "figure."
				delay (2000)
				put "When you are getting close, the figure appears to be wearing a black cloak."
				delay (2000)
				put "The shadow-like figure turns around when you are near, and draws a long, black, sword from inside his cloak. You look into his face. It is just a skull. His eyes"
				put "seem like red hot coals in empty sockets. This is the last picture in your mind when the black sword sliced through your midsection twice."
				delay (6000)
				cls
				Font.Draw ("GAME OVER", 50, 30, font1, red)
			    elsif left_or_right1 = "right" or left_or_right1 = "Right" %DONE!!!!!
				    then
				put "You find yourself in a huge room that looks like it might be an abandoned"
				put "ball room. You see a glint in that far corner."
				delay (2000)
				put "You go to see what it is, and it is a sword and sheath! You pick them up and put them away. You know that there should be some armour somewhere."
				delay (2000)
				put "There is a hallway leading out of the ballroom. You follow it and you notice another shimmer in a little nook in the side of a wall."
				delay (2000)
				put
				    "You go up to it and see a hidden room. You tear off the bricks covering the room and you see some armour that consists of a breastplate, some leggings, and a helmet. You put it all on, and it seems to fit perfectly."
				delay (3000)
				put "You continue walking, feeling confident in yourself now that you have some defenses, and you see a door. Do you go in it?"
				put ""
				get dooryesno
				put ""
			    end if
			    if dooryesno = "Yes" or dooryesno = "yes" %DONE!!!!
				    then
				put
				    "You see a very small man sitting in a chair. He turns to you and says 'Well, well, took you long enough to get here. I am Zoltag. I see that you found my little cache. Good it'll give me a challenge!'"
				delay (3000)
				put
				    "The little man charges at you. You take out the sword from it's sheath and stab at the man. He easily dodges and kicks your shin. You hear a sickening sound as your shin is shattered."
				delay (3000)
				put "You are in immense pain, but somehow know that this is the man that captured you, and if you don't kill him now, you'll die."
				delay (2000)
				put "Out of the corner of your eye you see a skeleton that seems to be motioning to the little man's legs."
				put "Do you swing for the man's legs?"
				get swingforlegs
				if swingforlegs = "yes" or swingforlegs = "Yes"
					then
				    put "You are panicking and trying anything, even if it is immaginary."
				    delay (4000)
				    put 
					"You swing for the man's legs. He doesn't see it coming and they come off with one clean sweep. The man falls screaming to the ground, and you cut off his head."
				    delay (10000)
				    put "You feel a burden being lifted from your soul and feel as light as air. You sit up, not realizing that you were lying down, and know that it was all a dream."
				    delay (8000)
				    cls
				    Font.Draw ("YOU WIN", 50, 30, font1, green)
				elsif swingforlegs = "No" or swingforlegs = "no"
					then
				    put "You ignore the skeleton and swing for the man's head."
				    delay (6000)
				    put "He easily ducks under and, out of no where, pulls out a sword, jumps up to meet you eye to eye,"
				    put "and cuts your head clean off."
				    delay (6000)
				    cls
				    Font.Draw ("GAME OVER", 50, 30, font1, red)
				elsif dooryesno = "no" or dooryesno = "No"
					then
				    put "You keep on walking. You think to outloud 'I should have went in the door.' You hear a voice that seems"
				    put "to come from no where and everywhere that says 'Yes, yes you should have.' And at that moment a steel wall shoots up behind you."
				    delay (5000)
				    put "You realise that you blew your chance at freedom."
				    delay (3000)
				    put 
					"You notice something on the ground, and since you have no chance of escape, you pick it up. The floor opens up underneath you and fall on what seems to be a slide."
				    put "You fall for a couple minutes and reach your terminal velocity."
				    delay (5000)
				    put 
					"The slide end but the pit keeps going. You see the bottom for an instant before you hit it. When you do, your leg bones go up into your upper body, sending bone"
				    put "fragments into all of the organs that didn't explode on impact."
				    delay (10000)
				    cls
				    Font.Draw ("GAME OVER", 50, 30, font1, red)
				end if
			    elsif oldmansdoor = "yes" or oldmansdoor = "Yes"
				    then
				put "You go in to the next room. You hear the door slam shut."
				put "The room is ever so small."
				delay (5000)
				put "You hear some gears and wonder what is happening. You then notice that the walls"
				put "of the room are getting smaller by the second. You try desperatly to open the"
				put "door to no avail."
				delay (5000)
				put "You can hear an echoing laugh as you get crushed to death by the walls."
				delay (7000)
				cls
				Font.Draw ("GAME OVER", 50, 30, font1, red)
			    elsif north = "left" or north = "Left"
				    then
				put "You go into the left door and to your surprise it closes with a huge bang. You"
				put "look at the door and see that there is no knob from your side."
				put "You have to keep going."
				delay (4000)
				put "You walk for hours on end and there is no end in sight."
				delay (1000)
				put "You start to get very hungry. You look around and instead of finding food,"
				put "you see a door on your left. Do you go in it, or continue along the hallway?"
				put "Left or straight?"
				put ""
				delay (4000)
				get door_or_hallway
				put ""
				if door_or_hallway = "left" or door_or_hallway = "Left" %DONE!!!!
					then
				    put "You open the door to go in to the next room. You hear the door behind you clang shut as expected,"
				    put "but what you didn't expect is that the room is ever so small."
				    delay (5000)
				    put "You hear some gears and wonder what is happening. You then notice that the walls"
				    put "of the room are getting smaller by the second. You try desperatly to open the"
				    put "door to no avail."
				    delay (5000)
				    put "You can hear an echoing laugh as you get crushed to death by the walls."
				    delay (7000)
				    cls
				    Font.Draw ("GAME OVER", 50, 30, font1, red)
				elsif door_or_hallway = "straight" %DONE!!!!
					then
				    put
					"You keep going for days. You are starving and parched. You are elated when you"
				    put "see a water bottle and a hamburger just sitting on the ground! You eat and drink"
				    put "and when you are finished you go on your way."
				    delay (3000)
				    put "After a while, you see another fork in the path. Do you go left or right?"
				    put ""
				    get left_or_right1
				    put ""
				end if
				if left_or_right1 = "left" or left_or_right1 = "Left" %DONE!!!!!
					then
				    delay (4000)
				    put "You go to the left fork. After a couple of minutes, you spot a shadow-like"
				    put "figure."
				    delay (2000)
				    put "When you are getting close, the figure appears to be wearing a black cloak."
				    delay (2000)
				    put 
					"The shadow-like figure turns around when you are near, and draws a long, black, sword from inside his cloak. You look into his face. It is just a skull. His eyes"
				    put "seem like red hot coals in empty sockets. This is the last picture in your mind when the black sword sliced through your midsection twice."
				    delay (6000)
				    cls
				    Font.Draw ("GAME OVER", 50, 30, font1, red)
				elsif left_or_right1 = "right" or left_or_right1 = "Right" %DONE!!!!!
					then
				    put "You find yourself in a huge room that looks like it might be an abandoned"
				    put "ball room. You see a glint in that far corner."
				    delay (2000)
				    put "You go to see what it is, and it is a sword and sheath! You pick them up and put them away. You know that there should be some armour somewhere."
				    delay (2000)
				    put "There is a hallway leading out of the ballroom. You follow it and you notice another shimmer in a little nook in the side of a wall."
				    delay (2000)
				    put
					"You go up to it and see a hidden room. You tear off the bricks covering the room and you see some armour that consists of a breastplate, some leggings, and a helmet. You put it all on, and it seems to fit perfectly."
				    delay (3000)
				    put "You continue walking, feeling confident in yourself now that you have some defenses, and you see a door. Do you go in it?"
				    put ""
				    get dooryesno
				    put ""
				end if
				if dooryesno = "Yes" or dooryesno = "yes" %DONE!!!!
					then
				    put
					"You see a very small man sitting in a chair. He turns to you and says 'Well, well, took you long enough to get here. I am Zoltag. I see that you found my little cache. Good it'll give me a challenge!'"
				    delay (3000)
				    put
					"The little man charges at you. You take out the sword from it's sheath and stab at the man. He easily dodges and kicks your shin. You hear a sickening sound as your shin is shattered."
				    delay (3000)
				    put "You are in immense pain, but somehow know that this is the man that captured you, and if you don't kill him now, you'll die."
				    delay (2000)
				    put "Out of the corner of your eye you see a skeleton that seems to be motioning to the little man's legs. You are panicking and trying anything."
				    delay (4000)
				    put 
					"You swing for the man's legs. He doesn't see it coming and they come off with one clean sweep. The man falls screaming to the ground, and you cut off his head."
				    delay (10000)
				    put "You feel a burden being lifted from your soul and feel as light as air. You sit up, not realizing that you were lying down, and know that it was all a dream."
				    delay (8000)
				    cls
				    Font.Draw ("YOU WIN", 50, 30, font1, green)
				elsif dooryesno = "No" or dooryesno = "no" %DONE!!!
					then
				    put "You don't go in the door but out of the corner of your eye you see a bobbing light at the end of the tunnel. You know you shouldn't go, but you do anyway."
				    put
					"You continue along the hallway. When you are near the bobing light, you notice that it is in fact a man with a cowboy hat holding a torch. The man turns around and it is Chuck Norris."
				    put "You try to run away but he follows you with ease. When he gets close enough, you see the brown blur of a cowboy boot rushing toward your face, then blackness."
				    delay (6000)
				    cls
				    Font.Draw ("GAME OVER", 50, 30, font1, red)
				end if
			    elsif oldmansdoor = "yes" or oldmansdoor = "Yes"
				    then
				put "You go in to the next room. You hear the door slam shut."
				put "The room is ever so small."
				delay (5000)
				put "You hear some gears and wonder what is happening. You then notice that the walls"
				put "of the room are getting smaller by the second. You try desperatly to open the"
				put "door to no avail."
				delay (5000)
				put "You can hear an echoing laugh as you get crushed to death by the walls."
				delay (7000)
				cls
				Font.Draw ("GAME OVER", 50, 30, font1, red)
			    end if
			end if
		    end if
		end if
	    end if
	end if
    end if 
end if
end if
end if
end if
end if
end if
end if
end if
end if
end if

