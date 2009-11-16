-- Captain O'Neal <Jewelcrafting Quartermaster>
DELETE FROM `npc_vendor` WHERE (`entry`=32379);
INSERT INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES 
(34079, 36919, 0, 0, 2588),
(34079, 36922, 0, 0, 2588),
(34079, 36925, 0, 0, 2588),
(34079, 36928, 0, 0, 2588),
(34079, 36931, 0, 0, 2588),
(34079, 36934, 0, 0, 2588);

-- Lady Palanseer <Jewelcrafting Quartermaster>
DELETE FROM `npc_vendor` WHERE (`entry`=32382);
INSERT INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES 
(34039, 36919, 0, 0, 2588),
(34039, 36922, 0, 0, 2588),
(34039, 36925, 0, 0, 2588),
(34039, 36928, 0, 0, 2588),
(34039, 36931, 0, 0, 2588),
(34039, 36934, 0, 0, 2588);

UPDATE quest_template SET reqSourceCount1 = 5, ReqCreatureOrGOId2 = 0, ReqCreatureOrGOCount2 = 0 WHERE entry = 10855;

DELETE FROM npc_trainer WHERE spell = 62448;
INSERT INTO npc_trainer VALUES
(26996, 62448, 80000, 165, 425, 0),
(26911, 62448, 80000, 165, 425, 0),
(28700, 62448, 80000, 165, 425, 0),
(26961, 62448, 80000, 165, 425, 0),
(33581, 62448, 80000, 165, 425, 0),
(26998, 62448, 80000, 165, 425, 0),
(26959, 69385, 200000, 773, 440, 0),
(28702, 69385, 200000, 773, 440, 0);

UPDATE creature_template SET npcflag = 145 WHERE entry = 31238;

DELETE FROM npc_vendor WHERE entry = 31238;
INSERT INTO npc_vendor VALUES (31238, 49177, 0, 0, 0);

DELETE FROM npc_trainer WHERE entry = 31238;
INSERT INTO npc_trainer VALUES
(31238, 54197, 10000000, 762, 150, 77),
(31238, 33391, 500000, 762, 75, 40),
(31238, 34090, 2500000, 762, 150, 60),
(31238, 34091, 50000000, 762, 225, 70),
(31238, 33388, 40000, 0, 0, 20);
