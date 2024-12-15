/// @description Insert description here
// You can write your code in this editor

#macro card_x 488
#macro card_y 680

var _wish_cube = [[
	"Crystal Barricade",
	"Ossification",
	"Sublime Archangel",
	"Hyena Umbra",
	"Spirit of the Labyrinth",
	"Clarion Spirit",
	"Baneslayer Angel",
	"Gideon Jura",
	"Giant Killer",
	"Lion Sash",
	"Student of Warfare",
	"Elspeth, Knight-Errant",
	"Elspeth, Sun\'s Champion",
	"Sun Titan",
	"Cathar Commando",
	"Oblivion Ring",
	"Luminarch Aspirant",
	"Giver of Runes",
	"Restoration Angel",
	"Ephemerate",
	"Thalia, Guardian of Thraben",
	"Path to Exile",
	"Swords to Plowshares"
	], [
	//"Mirrorhall Mimic",
	"Pondering Mage",
	"Fading Hope",
	"Enclave Cryptologist",
	"Frost Titan",
	"Blink of an Eye",
	"Talrand, Sky Summoner",
	"Delver of Secrets",
	"Thing in the Ice",
	//"Riftwing Cloudskate",
	"Baral, Chief of Compliance",
	"Serum Visions",
	"Venser, Shaper Savant",
	"Phantasmal Image",
	"Consider",
	"Treasure Cruise",
	"Fact or Fiction",
	"Spell Pierce",
	"Mystic Confluence",
	"Mulldrifter",
	"Jace, the Mind Sculptor",
	"Snapcaster Mage",
	"Remand",
	"Mana Leak",
	"Counterspell"
	], [
	"The Cruelty of Gix",
	//"Apprentice Necromancer",
	"Chthonian Nightmare",
	//"First-Sphere Gargantua",
	"Agonizing Remorse",
	"Doom Whisperer",
	"Nighthawk Scavenger",
	//"Liliana, Death\'s Majesty",
	//"Skyclave Shade",
	"Village Rites",
	//"Cast Down",
	"Doom Blade",
	"Gutterbones",
	"Woe Strider",
	"Bloodghast",
	"Unearth",
	"Infernal Grasp",
	"Bloodchief\'s Thirst",
	"Shriekmaw",
	"Bitterblossom",
	"Grave Titan",
	"Archon of Cruelty",
	"Dark Confidant",
	"Ravenous Chupacabra",
	"Liliana of the Veil",
	"Fatal Push",
	"Inquisition of Kozilek",
	"Murderous Rider"
	], [
	"Temur Battle Rage",
	"Kiln Fiend",
	"Phoenix of Ash",
	"Light Up the Stage",
	"Kari Zev, Skyship Raider",
	"Hellrider",
	"Goblin Guide",
	"Inferno Titan",
	"Glorybringer",
	"Laelia, the Blade Reforged",
	"Goblin Rabblemaster",
	"Incinerate",
	"Seasoned Pyromancer",
	"Dragon\'s Rage Channeler",
	"Chandra, Torch of Defiance",
	"Grim Lavamancer",
	"Monastery Swiftspear",
	"Burst Lightning",
	"Young Pyromancer",
	"Bonecrusher Giant",
	"Faithless Looting",
	"Abrade",
	"Lightning Bolt"
	], [
	"Quilled Greatwurm",
	"Kalonian Hydra",
	//"Fertilid",
	"Rampaging Baloths",
	"Six",
	//"Incubation Druid",
	"Llanowar Visionary",
	"Rishkar, Peema Renegade",
	"Avenger of Zendikar",
	"Tarmogoyf",
	"Wall of Roots",
	"Cultivate",
	"Rancor",
	"Acidic Slime",
	"Regrowth",
	"Thragtusk",
	"Oracle of Mul Daya",
	"Nissa, Who Shakes the World",
	"Sylvan Caryatid",
	"Primeval Titan",
	"Sakura-Tribe Elder",
	"Elvish Mystic",
	"Scavenging Ooze",
	"Eternal Witness",
	"Llanowar Elves"
	], [
	"Prophet of Kruphix",
	"Winota, Joiner of Forces",
	//"Basilisk Collar",
	"Lotleth Troll",
	"Sorin, Lord of Innistrad",
	"Grim Flayer",
	"Cloudblazer",
	"Trostani Discordant",
	"Falkenrath Aristocrat",
	"Huntmaster of the Fells",
	"Spell Queller",
	"Psychic Frog",
	"Voice of Resurgence",
	"Growth Spiral",
	"Boros Charm",
	"Abrupt Decay",
	"Thief of Sanity",
	"Dragonlord Atarka",
	"Sprite Dragon",
	"Terminate",
	"Izzet Charm",
	//"Nahiri, the Harbinger",
	"Sword of Fire and Ice",
	"Ornithopter of Paradise",
	"Soulherder",
	"Tidehollow Sculler",
	"Hydroid Krasis",
	"Wurmcoil Engine",
	"Mind Stone",
	"Solemn Simulacrum",
	"Bloodbraid Elf",
	"Expressive Iteration",
	"Knight of Autumn",
	"Vindicate",
	"Lightning Helix",
	"Kolaghan\'s Command",
	"Baleful Strix"
	], [
	"Scalding Tarn",
	"Flooded Strand",
	"Polluted Delta",
	"Bloodstained Mire",
	"Wooded Foothills",
	"Windswept Heath",
	"Marsh Flats",
	"Verdant Catacombs",
	"Arid Mesa",
	"Misty Rainforest",
	
	"Blood Crypt",
	"Breeding Pool",
	"Godless Shrine",
	"Hallowed Fountain",
	"Overgrown Tomb",
	"Sacred Foundry",
	"Steam Vents",
	"Stomping Ground",
	"Temple Garden",
	"Watery Grave",
	
	"Indatha Triome",
	"Jetmir\'s Garden",
	"Ketria Triome",
	"Raffine\'s Tower",
	"Raugrin Triome",
	"Ziatora\'s Proving Ground",
	"Zagoth Triome",
	"Xander\'s Lounge",
	"Spara\'s Headquarters",
	"Savai Triome"
]];


var _current_cube = [[
	"Crystal Barricade",
	"Ossification",
	"Sublime Archangel",
	"Hyena Umbra",
	"Spirit of the Labyrinth",
	"Clarion Spirit",
	"Baneslayer Angel",
	"Gideon Jura",
	"Giant Killer",
	"Lion Sash",
	"Student of Warfare",
	"Elspeth, Knight-Errant",
	"Elspeth, Sun\'s Champion",
	"Sun Titan",
	"Cathar Commando",
	"Oblivion Ring",
	"Luminarch Aspirant",
	"Giver of Runes",
	"Restoration Angel",
	"Ephemerate",
	"Thalia, Guardian of Thraben",
	"Path to Exile",
	"Swords to Plowshares"
	], [
	"Mirrorhall Mimic",
	"Pondering Mage",
	"Fading Hope",
	"Enclave Cryptologist",
	"Frost Titan",
	"Blink of an Eye",
	"Talrand, Sky Summoner",
	"Delver of Secrets",
	"Thing in the Ice",
	"Riftwing Cloudskate",
	"Baral, Chief of Compliance",
	"Serum Visions",
	"Consider",
	"Treasure Cruise",
	"Fact or Fiction",
	"Spell Pierce",
	"Mystic Confluence",
	"Mulldrifter",
	"Jace, the Mind Sculptor",
	"Snapcaster Mage",
	"Remand",
	"Mana Leak",
	"Counterspell"
	], [
	"The Cruelty of Gix",
	"Apprentice Necromancer",
	"First-Sphere Gargantua",
	"Agonizing Remorse",
	"Doom Whisperer",
	"Nighthawk Scavenger",
	"Liliana, Death\'s Majesty",
	"Skyclave Shade",
	"Village Rites",
	"Cast Down",
	"Doom Blade",
	"Gutterbones",
	"Woe Strider",
	"Unearth",
	"Bloodchief\'s Thirst",
	"Shriekmaw",
	"Bitterblossom",
	"Grave Titan",
	"Dark Confidant",
	"Ravenous Chupacabra",
	"Fatal Push",
	"Inquisition of Kozilek",
	"Murderous Rider"
	], [
	"Temur Battle Rage",
	"Kiln Fiend",
	"Phoenix of Ash",
	"Light Up the Stage",
	"Kari Zev, Skyship Raider",
	"Hellrider",
	"Goblin Guide",
	"Inferno Titan",
	"Glorybringer",
	"Laelia, the Blade Reforged",
	"Goblin Rabblemaster",
	"Incinerate",
	"Seasoned Pyromancer",
	"Dragon\'s Rage Channeler",
	"Chandra, Torch of Defiance",
	"Grim Lavamancer",
	"Monastery Swiftspear",
	"Burst Lightning",
	"Young Pyromancer",
	"Bonecrusher Giant",
	"Faithless Looting",
	"Abrade",
	"Lightning Bolt"
	], [
	"Quilled Greatwurm",
	"Kalonian Hydra",
	"Fertilid",
	"Rampaging Baloths",
	"Incubation Druid",
	"Llanowar Visionary",
	"Rishkar, Peema Renegade",
	"Avenger of Zendikar",
	"Tarmogoyf",
	"Wall of Roots",
	"Cultivate",
	"Rancor",
	"Acidic Slime",
	"Regrowth",
	"Thragtusk",
	"Oracle of Mul Daya",
	"Nissa, Who Shakes the World",
	"Primeval Titan",
	"Sakura-Tribe Elder",
	"Elvish Mystic",
	"Scavenging Ooze",
	"Eternal Witness",
	"Llanowar Elves"
	], [
	"Prophet of Kruphix",
	"Basilisk Collar",
	"Lotleth Troll",
	"Sorin, Lord of Innistrad",
	"Grim Flayer",
	"Cloudblazer",
	"Trostani Discordant",
	"Falkenrath Aristocrat",
	"Huntmaster of the Fells",
	"Spell Queller",
	"Psychic Frog",
	"Voice of Resurgence",
	"Growth Spiral",
	"Boros Charm",
	"Abrupt Decay",
	"Thief of Sanity",
	"Dragonlord Atarka",
	"Sprite Dragon",
	"Terminate",
	"Izzet Charm",
	"Nahiri, the Harbinger",
	"Ornithopter of Paradise",
	"Soulherder",
	"Tidehollow Sculler",
	"Hydroid Krasis",
	"Wurmcoil Engine",
	"Mind Stone",
	"Solemn Simulacrum",
	"Bloodbraid Elf",
	"Expressive Iteration",
	"Knight of Autumn",
	"Vindicate",
	"Lightning Helix",
	"Kolaghan\'s Command",
	"Baleful Strix"
	], [
	"Simic Guildgate",
	"Izzet Guildgate",
	"Gruul Guildgate",
	"Rakdos Guildgate",
	"Golgari Guildgate",
	"Dimir Guildgate",
	"Selesnya Guildgate",
	"Boros Guildgate",
	"Azorius Guildgate",
	"Orzhov Guildgate",
	"Temple of Triumph",
	"Temple of Abandon",
	"Temple of Malice",
	"Temple of Plenty",
	"Temple of Epiphany",
	"Temple of Malady",
	"Temple of Deceit",
	"Temple of Enlightenment",
	"Temple of Mystery",
	"Temple of Silence",
	"Sheltering Landscape",
	"Tranquil Landscape",
	"Deceptive Landscape",
	"Contaminated Landscape",
	"Twisted Landscape",
	"Shattered Landscape",
	"Perilous Landscape",
	"Seething Landscape",
	"Bountiful Landscape",
	"Foreboding Landscape"
]];

global.cube = _wish_cube;


#macro sc1  9 // standard common 1
#macro sc2  4 // standard common 2
#macro sc3  2 // standard common 3
#macro su1  4 // standard uncommon 1
#macro su2  2 // standard uncommon 2
#macro sr1  2 // standard rare
#macro mc1 15 // multicolored or colorless common 1
#macro mc2  8 // multicolored or colorless common 2
#macro mc3  2 // multicolored or colorless common 3
#macro mu1  6 // multicolored or colorless uncommon 1
#macro mu2  2 // multicolored or colorless uncommon 2
#macro mr1  2 // multicolored or colorless rare
#macro lc1 10 // land common 1
#macro lc2 10 // land common 2
#macro lc3 10 // land common 3


global.pack_comp_1st = [{
	count : 4, // packs per player
	cards : [
		// cards
		3, // c1
		1, // c2
		1, // c3
		1, // u1
		0, // u2
		0, // r1
		// lands
		1, // l1
		0, // l2
		0  // l3
	]
},{
	count : 2, // packs per player
	cards : [
		// cards
		2, // c1
		1, // c2
		0, // c3
		1, // u1
		1, // u2
		1, // r1
		// lands
		0, // l1
		1, // l2
		0  // l3
	]
},{
	count : 2, // packs per player
	cards : [
		// cards
		2, // c1
		1, // c2
		0, // c3
		1, // u1
		1, // u2
		1, // r1
		// lands
		0, // l1
		0, // l2
		1  // l3
	]
}];

global.pack_comp_alt = [{
	count : 4, // packs per player
	cards : [
		// cards
		5, // cx
		1, // ux
		0, // rx
		// lands
		1  // lx
	]
},{
	count : 2, // packs per player
	cards : [
		// cards
		3, // cx
		2, // ux
		1, // rx
		// lands
		1  // lx
	]
}];



