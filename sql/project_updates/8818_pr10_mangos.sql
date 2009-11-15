--Dark Ranger Marrah UK Qgiver
DELETE FROM creature WHERE id=24137;
INSERT INTO creature (guid, id, map , spawnMask , phaseMask, modelid, equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndis​t,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(9168076, 24137, 574, 1, 1, 0, 511, 168.066, -98.1434, 12.5517, 1.88344, 25, 0, 0, 4399, 0, 0, 0);


--Kvaldir Mistweaver Qitem 
UPDATE creature_loot_template SET ChanceOrQuestChance = -16 WHERE entry=25479 AND item=34813;

--Q v nagrandu
UPDATE quest_template SET ReqCreatureOrGOCount1 = 12 WHERE entry = 9857;

--Dalsi:-)
UPDATE quest_template SET ReqCreatureOrGOCount1 = 12 WHERE entry = 9789;

--A dalsi :-)
UPDATE quest_template SET ReqCreatureOrGOCount1 = 12 WHERE entry = 9854;

UPDATE quest_template SET ReqCreatureOrGOCount1 = 20, ReqCreatureOrGOCount2 = 10 WHERE entry = 9865;


--Gaining Even More Acceptance Uprava repky a Q

UPDATE quest_template SET MinLevel=45, RequiredMinRepFaction=59, RequiredMinRepValue=3000, RequiredMaxRepFaction=59, RequiredMaxRepValue=9000, SpecialFlags=1, PrevQuestId=7722, Title="Gaining Even More Acceptance",  OfferRewardText="Keep the residue pouring in!", RequestItemsText="You've worked your way up through the Brotherhood's corporate hierarchy, $R. We have begun to look favorably upon you. Quite an accomplishment! $B $BIf you're interested in more work and earning more respect amongst us, listen up.$B $BWe can refine the fiery flux by adding a simple Dark Iron residue to the mix. The Dark Iron residue can be found in Blackrock Depths.", ReqItemCount1=100, RewRepFaction1=59, RewRepValue1=625, CompleteEmote=1 WHERE entry=13662;  
UPDATE quest_template SET Title = 'Gaining Acceptance', ReqItemCount1 = 4, RewRepValue1 = 25 WHERE entry = 7737;  
UPDATE quest_template SET Title = 'Gaining Even More Acceptance', ReqItemCount1 = 100, RewRepValue1 = 625 WHERE entry = 13662;  


DELETE FROM creature_questrelation WHERE quest = 13662;  
INSERT INTO creature_questrelation (id, quest) VALUES (14624, 13662);  
  

DELETE FROM creature_involvedrelation WHERE quest = 13662;  
INSERT INTO creature_involvedrelation (id, quest) VALUES (14624, 13662);