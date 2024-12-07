/// @description Insert description here

show_debug_message("testing");


//var _cube = [{name : ""}];


var _cube = [[
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
	"Sheltering Landscape",
	"Tranquil Landscape",
	"Deceptive Landscape",
	"Contaminated Landscape",
	"Twisted Landscape",
	"Shattered Landscape",
	"Perilous Landscape",
	"Seething Landscape",
	"Bountiful Landscape",
	"Foreboding Landscape",
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
	"Temple of Silence"
]];



var _c1 = 9;
var _c2 = 4;
var _c3 = 2;
var _u1 = 4;
var _u2 = 2;
var _r1 = 2;

var _c1_m = 15;
var _c2_m = 8;
var _c3_m = 2;
var _u1_m = 6;
var _u2_m = 2;
var _r1_m = 2;

var _c1_arr = [];
var _c2_arr = [];
var _c3_arr = [];
var _u1_arr = [];
var _u2_arr = [];
var _r1_arr = [];

for (var i = 0; i < array_length(_cube); i++) {
	for (var j = 0; j < array_length(_cube[i]); j++) {
		var _card = _cube[i][j];
		if (i < 5) {
			if      (j < _c1) array_push(_c1_arr, _card);
			else if (j < _c1+_c2) array_push(_c2_arr, _card);
			else if (j < _c1+_c2+_c3) array_push(_c3_arr, _card);
			else if (j < _c1+_c2+_c3+_u1) array_push(_u1_arr, _card);
			else if (j < _c1+_c2+_c3+_u1+_u2) array_push(_u2_arr, _card);
			else if (j < _c1+_c2+_c3+_u1+_u2+_r1) array_push(_r1_arr, _card);
		}
		else if (i == 6) {
			if      (j < _c1_m) array_push(_c1_arr, _card);
			else if (j < _c1_m+_c2_m) array_push(_c2_arr, _card);
			else if (j < _c1_m+_c2_m+_c3_m) array_push(_c3_arr, _card);
			else if (j < _c1_m+_c2_m+_c3_m+_u1_m) array_push(_u1_arr, _card);
			else if (j < _c1_m+_c2_m+_c3_m+_u1_m+_u2_m) array_push(_u2_arr, _card);
			else if (j < _c1_m+_c2_m+_c3_m+_u1_m+_u2_m+_r1_m) array_push(_r1_arr, _card);
		}
		else if (i == 7) {
			// lands
		}
		show_debug_message(_cube[i][j]);
	}
}




show_debug_message("c1");
for (var i = 0; i < array_length(_c1_arr); i++) show_debug_message(_c1_arr);