-- Riding Trainers
DELETE FROM npc_trainer WHERE entry = 20511;
INSERT INTO npc_trainer VALUES
(20511, 33388, 40000, 0, 0, 20), 
(20511, 33391, 500000, 762, 75, 40), 
(20511, 34090, 2500000, 762, 150, 60), 
(20511, 34091, 50000000, 762, 225, 70);

DELETE FROM npc_trainer WHERE entry = 20500;
INSERT INTO npc_trainer VALUES
(20500, 33388, 40000, 0, 0, 20), 
(20500, 33391, 500000, 762, 75, 40), 
(20500, 34090, 2500000, 762, 150, 60), 
(20500, 34091, 50000000, 762, 225, 70);


-- Championing - UK
DELETE FROM `creature_onkill_reputation` WHERE creature_id IN (30748,31679,31656,31673,31657,31658,31660,30747,31661,31662,31663,31665,31666,31669,31671,31672,31675,31676,31678,31680,31681,31635,31667,31659);
INSERT INTO `creature_onkill_reputation` VALUES
(30748, 1037, 1052, 7, 0, 250, 7, 0, 250, 1), -- Prince Keleseth <The San'layn> heroic
(31679, 1037, 1052, 7, 0, 250, 7, 0, 250, 1), -- Skarvald heroic
(31656, 1037, 1052, 7, 0, 250, 7, 0, 250, 1), -- Dalronn heroic
(31673, 1037, 1052, 7, 0, 250, 7, 0, 250, 1), -- Ingvar the Plunderer heroic
(31657, 1037, 1052, 7, 0, 15, 7, 0, 15, 1), -- Dalronn the Controller heroic
(31658, 1037, 1052, 7, 0, 15, 7, 0, 15, 1), -- Dragonflayer Bonecrusher heroic
(31660, 1037, 1052, 7, 0, 15, 7, 0, 15, 1), -- Dragonflayer Heartsplitter heroic
(30747, 1037, 1052, 7, 0, 15, 7, 0, 15, 1), -- Dragonflayer Ironhelm heroic
(31661, 1037, 1052, 7, 0, 15, 7, 0, 15, 1), -- Dragonflayer Metalworker heroic
(31662, 1037, 1052, 7, 0, 15, 7, 0, 15, 1), -- Dragonflayer Overseer heroic
(31663, 1037, 1052, 7, 0, 15, 7, 0, 15, 1), -- Dragonflayer Runecaster heroic
(31665, 1037, 1052, 7, 0, 15, 7, 0, 15, 1), -- Dragonflayer Spiritualist heroic
(31666, 1037, 1052, 7, 0, 15, 7, 0, 15, 1), -- Dragonflayer Strategist heroic
(31669, 1037, 1052, 7, 0, 15, 7, 0, 15, 1), -- Enslaved Proto-Drake heroic
(31671, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), -- Frenzied Geist heroic
(31672, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), -- Frost Tomb heroic
(31675, 1037, 1052, 7, 0, 15, 7, 0, 15, 1), -- Proto-Drake Handler heroic
(31676, 1037, 1052, 7, 0, 15, 7, 0, 15, 1), -- Proto-Drake Rider heroic
(31678, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), -- Savage Worg heroic
(31680, 1037, 1052, 7, 0, 15, 7, 0, 15, 1), -- Skarvald the Constructor heroic
(31681, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), -- Tunneling Ghoul heroic
(31635, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), -- Vrykul Skeleton heroic
(31667, 1037, 1052, 7, 0, 15, 7, 0, 15, 1), -- Dragonflayer Weaponsmith heroic
(31659, 1037, 1052, 7, 0, 15, 7, 0, 15, 1); -- Dragonflayer Forge Master heroic

-- Anubrekhan 10 man normal
UPDATE creature_template SET minhealth=2231200, maxhealth=2231200, mindmg=17000, maxdmg=20000, attackpower=805, dmg_multiplier=1, minrangedmg=450, maxrangedmg=560    
WHERE entry=15956;

-- Grand Widow Faerlina 10 man normal
UPDATE creature_template SET minhealth=2231200, maxhealth=2231200, mindmg=14500, maxdmg=16000, dmg_multiplier=1  
WHERE entry=15953;

-- Maexxna 10 man normal
UPDATE creature_template SET minhealth=2510100, maxhealth=2510100, mindmg=14500, maxdmg=16000, dmg_multiplier=1    
WHERE entry=15952;

-- Noth the Plaguebringer 10 man normal
UPDATE creature_template SET minhealth=2789000, maxhealth=2789000, mindmg=13000, maxdmg=14000, dmg_multiplier=1    
WHERE entry=15954;


-- Heigan the Unclean 10 man normal
UPDATE creature_template SET minhealth=3067900, maxhealth=3067900, mindmg=13000, maxdmg=14000, dmg_multiplier=1    
WHERE entry=15936;


-- Loatheb 10 man normal
UPDATE creature_template SET minhealth=6693600, maxhealth=6693600, mindmg=11000, maxdmg=12000, dmg_multiplier=1    
WHERE entry=16011;

-- Instructor Razuvious 10 man normal
UPDATE creature_template SET minhealth=3346800, maxhealth=3346800   
WHERE entry=16061;

-- Gothik the Harvester 10 man normal
UPDATE creature_template SET minhealth=836700, maxhealth=836700, mindmg=13000, maxdmg=14000, dmg_multiplier=1    
WHERE entry=16060;

-- Thane Korth'azz 10 man normal
UPDATE creature_template SET minhealth=780920, maxhealth=780920, mindmg=13000, maxdmg=14000, dmg_multiplier=1    
WHERE entry=16064;


-- Lady Blaumeux 10 man normal
UPDATE creature_template SET minhealth=780920, maxhealth=780920, mindmg=13000, maxdmg=14000, dmg_multiplier=1    
WHERE entry=16065;

-- Baron Rivendare 10 man normal
UPDATE creature_template SET minhealth=780920, maxhealth=780920, mindmg=13000, maxdmg=14000, dmg_multiplier=1    
WHERE entry=30549;

-- Sir Zeliek 10 man normal
UPDATE creature_template SET minhealth=780920, maxhealth=780920, mindmg=13000, maxdmg=14000, dmg_multiplier=1    
WHERE entry=16063;

-- Patchwerk 10 man normal
UPDATE creature_template SET minhealth=4322950, maxhealth=4322950, mindmg=17000, maxdmg=20000, dmg_multiplier=1    
WHERE entry=16028;

-- Grobbulus 10 man normal
UPDATE creature_template SET minhealth=2928450, maxhealth=2928450, mindmg=17000, maxdmg=18000, dmg_multiplier=1    
WHERE entry=15931;

-- Gluth 10 man normal
UPDATE creature_template SET minhealth=2789000, maxhealth=2789000, mindmg=16000, maxdmg=18000, dmg_multiplier=1    
WHERE entry=15932;

-- Thaddius 10 man normal
UPDATE creature_template SET minhealth=3834875, maxhealth=3834875, mindmg=18000, maxdmg=20000, dmg_multiplier=1    
WHERE entry=15928;

-- Sapphiron 10 man normal
UPDATE creature_template SET minhealth=4183500, maxhealth=4183500, mindmg=18000, maxdmg=21000, dmg_multiplier=1    
WHERE entry=15989;

-- Kel'Thuzad 10 man normal
UPDATE creature_template SET minhealth=2500000, maxhealth=2500000, mindmg=17000, maxdmg=19000, dmg_multiplier=1    
WHERE entry=15990;

UPDATE `gameobject_template` SET `flags`=0 WHERE `entry` IN ('181575', '181576', '181577', '181578'); -- 16
DELETE FROM `gameobject` WHERE `id` IN ('181575', '181576', '181577', '181578');
INSERT INTO `gameobject` (`id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(181575, 533, 3, 1, 3521.34, -3942.85, 308.106, 2.12884, 0, 0, 1, 0, -604800, 0, 1),
(181576, 533, 3, 1, 3548.85, -2958.15, 302.688, 3.16206, 0, 0, 1, 0, -604800, 0, 1),
(181577, 533, 3, 1, 2909, -4025.02, 273.475, 3.14159, 0, 0, 1, 0, -604800, 0, 1),
(181578, 533, 3, 1, 2492.16, -2921.66, 241.276, 5.52219, 0, 0, 1, 0, -604800, 0, 1);

REPLACE INTO skill_extra_item_template VALUES
-- spellId, requiredSpecialization, aditionalCreateChance, additionalMaxNum
-- elixir master
(53841, 28677, 14, 4), -- wrath elixir
(53842, 28677, 14, 4), -- spellpower elixir
(53848, 28677, 14, 4), -- guru's elixir
(54218, 28677, 14, 4), -- elixir of mighty strength
(53847, 28677, 14, 4), -- elixir of spirit
(53898, 28677, 14, 4), -- elixir of mighty fortitude
(53840, 28677, 14, 4), -- elixir of mighty agility
(60367, 28677, 14, 4), -- elixir of mighty thoughts
(60354, 28677, 14, 4), -- elixir of accuracy
(60365, 28677, 14, 4), -- elixir of armor piercing
(60355, 28677, 14, 4), -- elixir of deadly strikes
(60357, 28677, 14, 4), -- elixir of expertise
(60366, 28677, 14, 4), -- elixir of lightning speed
(60356, 28677, 14, 4), -- elixir of mighty defense
(56519, 28677, 14, 4), -- elixir of mighty mageblood
(54220, 28677, 14, 4), -- elixir of protection
(62410, 28677, 14, 4), -- elixir of water walking

-- flasky
(17638, 28677, 14, 4), -- flask of chromatic resistance
(17636, 28677, 14, 4), -- flask of destiled wisdom
(28590, 28677, 14, 4), -- flsk of blinding light
(28587, 28677, 14, 4), -- flask of fortification
(28588, 28677, 14, 4), -- flask of mighty restoration
(28591, 28677, 14, 4), -- flask of pure death
(28589, 28677, 14, 4), -- flask of relentless assault
(17637, 28677, 14, 4), -- flask of supreme power
(17635, 28677, 14, 4), -- flask of the titans
(53899, 28677, 14, 4), -- leser flask of toughtness
(62213, 28677, 14, 4), -- lesser flask of resistance
(53903, 28677, 14, 4), -- flask of endless rage
(54213, 28677, 14, 4), -- flask of pure mojo
(53902, 28677, 14, 4), -- flask of stoneblood
(53901, 28677, 14, 4), -- flask of the frost wyrm

-- potion master
(53838, 28675, 14, 4), -- resurgent healing potion
(53839, 28675, 14, 4), -- icy mana potion
(53900, 28675, 14, 4), -- potion of nightmares
(53905, 28675, 14, 4), -- indestructible potion
(53936, 28675, 14, 4), -- mighty arcane protection potion
(53939, 28675, 14, 4), -- mighty fire protection potion
(53937, 28675, 14, 4), -- mighty frost protection potion
(53942, 28675, 14, 4), -- mighty nature protection potion
(53938, 28675, 14, 4), -- mighty shadow protection potion
(53895, 28675, 14, 4), -- crazy alchemist's potion
(53221, 28675, 14, 4), -- potion of speed
(54222, 28675, 14, 4), -- potion of wild magic
(53904, 28675, 14, 4), -- powerfull rejuvenation potion
(53836, 28675, 14, 4), -- runic healing potion
(53837, 28675, 14, 4), -- runic mana potion

-- transmutation master
(60350, 28672, 16, 4), -- transmute: titanium
(53777, 28672, 16, 4), -- transmute: eternal air to earth
(53776, 28672, 16, 4), -- transmute: eternal air to water
(53781, 28672, 16, 4), -- transmute: eternal earth to air
(53782, 28672, 16, 4), -- transmute: eternal earth to shadow
(53775, 28672, 16, 4), -- transmute: eternal fire to life
(53774, 28672, 16, 4), -- transmute: eternal fire to water
(53773, 28672, 16, 4), -- transmute: eternal life to fire
(53771, 28672, 16, 4), -- transmute: eternal life to shadow
(53779, 28672, 16, 4), -- transmute: eternal shadow to earth
(53780, 28672, 16, 4), -- transmute: eternal shadow to life
(53783, 28672, 16, 4), -- transmute: eternal water to air
(53784, 28672, 16, 4), -- transmute: eternal water to fire
(57427, 28672, 16, 4), -- transmute: earthsiege diamond
(57425, 28672, 16, 4), -- transmute: skyflare diamond
(66659, 28672, 16, 4), -- transmute: cardinal ruby
(66658, 28672, 16, 4), -- transmute: ametrine
(66662, 28672, 16, 4), -- transmute: dreadstone
(66664, 28672, 16, 4), -- transmute: eye of zul
(66660, 28672, 16, 4), -- transmute: king's amber
(66663, 28672, 16, 4); -- transmute: majestic zircon

INSERT INTO `skill_extra_item_template` (`SpellId`, `requiredSpecialization`, `additionalCreateChance`, `additionalMaxNum`) VALUES (56001, 26798, 100, 1);
INSERT INTO `skill_extra_item_template` (`SpellId`, `requiredSpecialization`, `additionalCreateChance`, `additionalMaxNum`) VALUES (56003, 26797, 100, 1);
INSERT INTO `skill_extra_item_template` (`SpellId`, `requiredSpecialization`, `additionalCreateChance`, `additionalMaxNum`) VALUES (56002, 26801, 100, 1);s