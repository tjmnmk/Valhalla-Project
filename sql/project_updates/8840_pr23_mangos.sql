-- Crypt Guard -add 1.bosse 10 man normal
UPDATE creature_template SET minhealth=234594, maxhealth=234594  
WHERE entry=16573;

-- Plagued Champion -add 4.bosse 10 man normal
UPDATE creature_template SET minhealth=104264, maxhealth=104264  
WHERE entry=16983;

-- Plagued Guardian -add 4.bosse 10 man normal
UPDATE creature_template SET minhealth=52130, maxhealth=52130  
WHERE entry=16981;

-- Unrelenting Trainee -add 8.bosse 10 man normal
UPDATE creature_template SET minhealth=10080, maxhealth=10080  
WHERE entry=16124;

-- Unrelenting Death Knight -add 8.bosse 10 man normal
UPDATE creature_template SET minhealth=32582, maxhealth=32582  
WHERE entry=16125;

-- Unrelenting Rider -add 8.bosse 10 man normal
UPDATE creature_template SET minhealth=52132, maxhealth=52132  
WHERE entry=16126;

-- Spectral Trainee -add 8.bosse 10 man normal
UPDATE creature_template SET minhealth=27890, maxhealth=27890  
WHERE entry=16127;

-- Spectral Death Knight -add 8.bosse 10 man normal
UPDATE creature_template SET minhealth=78198, maxhealth=78198  
WHERE entry=16148;

-- Spectral Rider -add 8.bosse 10 man normal
UPDATE creature_template SET minhealth=52132, maxhealth=52132  
WHERE entry=16150;

-- Spectral Rider -add 8.bosse 10 man normal
UPDATE creature_template SET minhealth=15640, maxhealth=15640  
WHERE entry=16149;

DELETE FROM `creature_loot_template` WHERE item = 45912;  
INSERT INTO `creature_loot_template` VALUES
('25801','45912','1','0','1','1','0','0','0'),
('28022','45912','1','0','1','1','0','0','0'),
('28026','45912','1','0','1','1','0','0','0'),
('28081','45912','1','0','1','1','0','0','0'),
('28101','45912','1','0','1','1','0','0','0'),
('28123','45912','1','0','1','1','0','0','0'),
('28124','45912','1','0','1','1','0','0','0'),
('28158','45912','1','0','1','1','0','0','0'),
('28257','45912','1','0','1','1','0','0','0'),
('28388','45912','1','0','1','1','0','0','0'),
('28403','45912','1','0','1','1','0','0','0'),
('28538','45912','1','0','1','1','0','0','0'),
('28861','45912','1','0','1','1','0','0','0'),
('29129','45912','1','0','1','1','0','0','0'),
('29323','45912','1','0','1','1','0','0','0'),
('29330','45912','1','0','1','1','0','0','0'),
('29333','45912','1','0','1','1','0','0','0'),
('29404','45912','1','0','1','1','0','0','0'),
('29407','45912','1','0','1','1','0','0','0'),
('29427','45912','1','0','1','1','0','0','0'),
('29449','45912','1','0','1','1','0','0','0'),
('29451','45912','1','0','1','1','0','0','0'),
('29518','45912','1','0','1','1','0','0','0'),
('29569','45912','1','0','1','1','0','0','0'),
('29622','45912','1','0','1','1','0','0','0'),
('29654','45912','1','0','1','1','0','0','0'),
('29656','45912','1','0','1','1','0','0','0'),
('29719','45912','1','0','1','1','0','0','0'),
('29843','45912','1','0','1','1','0','0','0'),
('29875','45912','1','0','1','1','0','0','0'),
('30037','45912','1','0','1','1','0','0','0'),
('30202','45912','1','0','1','1','0','0','0'),
('30243','45912','1','0','1','1','0','0','0'),
('30250','45912','1','0','1','1','0','0','0'),
('30597','45912','1','0','1','1','0','0','0'),
('30860','45912','1','0','1','1','0','0','0'),
('30864','45912','1','0','1','1','0','0','0'),
('31396','45912','1','0','1','1','0','0','0'),
('31783','45912','1','0','1','1','0','0','0'),
('32289','45912','1','0','1','1','0','0','0');