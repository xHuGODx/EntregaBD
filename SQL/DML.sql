-- Insert data into VALO_PERSON table
INSERT INTO VALO_PERSON
    (CC_Number, Nome, Age)
VALUES
    (20000000, 'John Doe', 25),
    (20000001, 'Jane Smith', 30),
    (20000002, 'Alice Johnson', 27),
    (20000003, 'Bob Brown', 22),
    (20000004, 'Charlie Green', 28),

    (20000005, 'Daisy Miller', 31),
    (20000006, 'Ethan Wilson', 24),
    (20000007, 'Fiona Adams', 26),
    (20000008, 'George Clark', 29),
    (20000009, 'Hannah Lewis', 33),

    (20000010, 'Ian Walker', 32),
    (20000011, 'Jenna Scott', 21),
    (20000012, 'Kyle Young', 23),
    (20000013, 'Laura King', 27),
    (20000014, 'Matt Turner', 34),

    (20000015, 'Nina Rivera', 28),
    (20000016, 'Owen Phillips', 35),
    (20000017, 'Paula Hughes', 30),
    (20000018, 'Quinn Torres', 22),
    (20000019, 'Rachel Murphy', 26),

    (20000020, 'Sam Brooks', 29),
    (20000021, 'Tina James', 24),
    (20000022, 'Ursula Russell', 27),
    (20000023, 'Victor Collins', 31),
    (20000024, 'Wendy Martinez', 25),

    (20000025, 'Xander Ellis', 30),
    (20000026, 'Yara Fisher', 28),
    (20000027, 'Zack Simmons', 23),
    (20000028, 'Amanda Peterson', 34),
    (20000029, 'Brian Henderson', 32),

    (20000030, 'Claire Bennett', 25),
    (20000031, 'David Cooper', 27),
    (20000032, 'Ella Morgan', 26),
    (20000033, 'Franklin Ross', 28),
    (20000034, 'Grace Campbell', 29),

    (20000035, 'Henry Price', 31),
    (20000036, 'Isabella Reyes', 22),
    (20000037, 'Jack Foster', 33),
    (20000038, 'Kelly Rivera', 30),
    (20000039, 'Leo Jenkins', 27),

    (20000040, 'Mia Reed', 26),
    (20000041, 'Noah Rogers', 28),
    (20000042, 'Olivia Howard', 25),
    (20000043, 'Paul Bailey', 29),
    (20000044, 'Ruby Diaz', 32),

    (20000045, 'Sophie Bell', 30),
    (20000046, 'Tommy Perez', 31),
    (20000047, 'Uma Carter', 27),
    (20000048, 'Vince Bailey', 26),
    (20000049, 'Will Morris', 24),

    ---Coaches
    (10000000, 'Xena Walton', 27),
    (10000001, 'Yosef Quinn', 28),
    (10000002, 'Zara Ortiz', 25),
    (10000003, 'Aaron Gomez', 26),
    (10000004, 'Bella Flores', 29),
    (10000005, 'Carlos Rivera', 30),
    (10000006, 'Diana Soto', 24),
    (10000007, 'Eli Roberts', 31),
    (10000008, 'Faye Harper', 33),
    (10000009, 'Gavin Knight', 32);

-- Insert data into VALO_TEAM table
INSERT INTO VALO_TEAM
    (Team_ID, Nome, Foundation_Date)
VALUES
    (1, 'Team Alpha', '2021-06-15'),
    (2, 'Team Beta', '2021-04-20'),
    (3, 'Team Gamma', '2021-01-10'),
    (4, 'Team Delta', '2021-11-25'),
    (5, 'Team Epsilon', '2021-09-05'),
    (6, 'Team Zeta', '2021-02-18'),
    (7, 'Team Eta', '2021-07-30'),
    (8, 'Team Theta', '2021-08-20'),
    (9, 'Team Iota', '2021-05-14'),
    (10, 'Team Kappa', '2021-03-22');

-- Insert data into VALO_COACH table
INSERT INTO VALO_COACH
    (PERSON_CC_Number, Team_ID)
VALUES
    (10000000, 1),
    (10000001, 2),
    (10000002, 3),
    (10000003, 4),
    (10000004, 5),
    (10000005, 6),
    (10000006, 7),
    (10000007, 8),
    (10000008, 9),
    (10000009, 10);

-- Insert data into VALO_PLAYER table
INSERT INTO VALO_PLAYER
    (PERSON_CC_Number, Nickname, Team_ID)
VALUES
    -- Players for Team 1
    (20000000, 'Shadow', 1),
    (20000001, 'BladeMaster', 1),
    (20000002, 'PhoenixRider', 1),
    (20000003, 'AquaSniper', 1),
    (20000004, 'ThunderStrike', 1),

    -- Players for Team 2
    (20000005, 'InfernoMage', 2),
    (20000006, 'SteelTitan', 2),
    (20000007, 'CrimsonGhost', 2),
    (20000008, 'MysticDruid', 2),
    (20000009, 'StormBringer', 2),

    -- Players for Team 3
    (20000010, 'IronClad', 3),
    (20000011, 'WildBeast', 3),
    (20000012, 'SilentShadow', 3),
    (20000013, 'FrostWizard', 3),
    (20000014, 'NightStalker', 3),

    -- Players for Team 4
    (20000015, 'LightBringer', 4),
    (20000016, 'VenomFang', 4),
    (20000017, 'DragonHeart', 4),
    (20000018, 'ShadowBlade', 4),
    (20000019, 'WarHammer', 4),

    -- Players for Team 5
    (20000020, 'StarLord', 5),
    (20000021, 'MoonKnight', 5),
    (20000022, 'SolarFlare', 5),
    (20000023, 'CosmicRanger', 5),
    (20000024, 'GalaxyWarrior', 5),

    -- Players for Team 6
    (20000025, 'LunarMage', 6),
    (20000026, 'EarthShaker', 6),
    (20000027, 'WindWalker', 6),
    (20000028, 'FireWarden', 6),
    (20000029, 'AbyssWatcher', 6),

    -- Players for Team 7
    (20000030, 'VoidHunter', 7),
    (20000031, 'SpiritBreaker', 7),
    (20000032, 'ArcaneMaster', 7),
    (20000033, 'SoulReaper', 7),
    (20000034, 'MysticKnight', 7),

    -- Players for Team 8
    (20000035, 'ShadowPriest', 8),
    (20000036, 'StormCaller', 8),
    (20000037, 'FlameKeeper', 8),
    (20000038, 'CrystalSeer', 8),
    (20000039, 'DarkWarden', 8),

    -- Players for Team 9
    (20000040, 'FrostGiant', 9),
    (20000041, 'IronFist', 9),
    (20000042, 'ShadowHunter', 9),
    (20000043, 'BlazeRider', 9),
    (20000044, 'StormKnight', 9),

    -- Players for Team 10
    (20000045, 'SpectralBlade', 10),
    (20000046, 'MysticWarrior', 10),
    (20000047, 'CelestialMage', 10),
    (20000048, 'ThunderLord', 10),
    (20000049, 'PhantomAssassin', 10);

-- Insert data into VALO_ROLE table
INSERT INTO VALO_ROLE
    (Role_Name)
VALUES
    ('Duelist'),
    ('Initiator'),
    ('Controller'),
    ('Sentinel');

-- Insert data into VALO_HAS table
INSERT INTO VALO_HAS
    (PLAYER_CC_Number, ROLE_Role_Name)
VALUES
    -- TEAM 1

    -- Player 12345678 (20000000) - Duelist
    (20000000, 'Duelist'),

    -- Player 23456789 (20000001) - Initiator
    (20000001, 'Initiator'),

    -- Player 34567890 (20000002) - Controller
    (20000002, 'Controller'),

    -- Player 45678901 (20000003) - Duelist, Initiator
    (20000003, 'Duelist'),

    -- Player 56789012 (20000004) - Controller
    (20000004, 'Sentinel'),

    -- TEAM 2

    -- Player 67890123 (20000005) - Sentinel
    (20000005, 'Sentinel'),

    -- Player 78901234 (20000006) - Sentinel, Duelist
    (20000006, 'Duelist'),

    -- Player 89012345 (20000007) - Controller
    (20000007, 'Controller'),

    -- Player 90123456 (20000008) - Initiator, Controller
    (20000008, 'Initiator'),

    -- Player 11223344 (20000009) - Duelist
    (20000009, 'Duelist'),

    -- TEAM 3

    -- Player 22334455 (20000010) - Initiator
    (20000010, 'Initiator'),

    -- Player 33445566 (20000011) - Controller
    (20000011, 'Controller'),

    -- Player 44556677 (20000012) - Duelist, Initiator
    (20000012, 'Duelist'),

    -- Player 55667788 (20000013) - Sentinel
    (20000013, 'Sentinel'),

    -- Player 66778899 (20000014) - Duelist, Controller
    (20000014, 'Duelist'),

    -- TEAM 4

    -- Player 77889900 (20000015) - Controller
    (20000015, 'Controller'),

    -- Player 88990011 (20000016) - Initiator
    (20000016, 'Sentinel'),
    (20000016, 'Controller'),


    -- Player 99001122 (20000017) - Controller
    (20000017, 'Controller'),
    (20000017, 'Duelist'),


    -- Player 10012233 (20000018) - Duelist, Initiator
    (20000018, 'Duelist'),
    (20000018, 'Sentinel'),


    -- Player 11023344 (20000019) - Duelist, Controller
    (20000019, 'Duelist'),

    -- TEAM 5

    -- Player 12034455 (20000020) - Sentinel
    (20000020, 'Sentinel'),
    (20000020, 'Initiator'),


    -- Player 13045566 (20000021) - Duelist, Initiator
    (20000021, 'Duelist'),

    -- Player 14056677 (20000022) - Initiator
    (20000022, 'Initiator'),
    (20000022, 'Controller'),


    -- Player 15067788 (20000023) - Duelist, Controller
    (20000023, 'Duelist'),

    -- Player 16078899 (20000024) - Controller
    (20000024, 'Controller'),

    -- TEAM 6

    -- Player 17089900 (20000025) - Controller
    (20000025, 'Controller'),

    -- Player 18090011 (20000026) - Controller
    (20000026, 'Sentinel'),

    -- Player 19001122 (20000027) - Initiator
    (20000027, 'Initiator'),

    -- Player 20012233 (20000028) - Duelist
    (20000028, 'Duelist'),

    -- Player 21023344 (20000029) - Duelist
    (20000029, 'Initiator'),

    -- TEAM 7

    -- Player 22034455 (20000030) - Controller
    (20000030, 'Controller'),

    -- Player 23045566 (20000031) - Sentinel
    (20000031, 'Sentinel'),

    -- Player 24056677 (20000032) - Initiator, Duelist
    (20000032, 'Initiator'),

    -- Player 25067788 (20000033) - Initiator, Controller
    (20000033, 'Initiator'),

    -- Player 26078899 (20000034) - Duelist
    (20000034, 'Duelist'),

    -- TEAM 8

    -- Player 27089900 (20000035) - Controller
    (20000035, 'Controller'),

    -- Player 28090011 (20000036) - Initiator
    (20000036, 'Initiator'),

    -- Player 29001122 (20000037) - Controller
    (20000037, 'Controller'),

    -- Player 30012233 (20000038) - Duelist
    (20000038, 'Duelist'),

    -- Player 31023344 (20000039) - Sentinel
    (20000039, 'Sentinel'),

    -- TEAM 9

    -- Player 32034455 (20000040) - Controller
    (20000040, 'Controller'),

    -- Player 33045566 (20000041) - Duelist
    (20000041, 'Duelist'),

    -- Player 34056677 (20000042) - Duelist, Initiator
    (20000042, 'Duelist'),
    (20000042, 'Initiator'),

    -- Player 35067788 (20000043) - Initiator
    (20000043, 'Sentinel'),

    -- Player 36078899 (20000044) - Initiator, Controller
    (20000044, 'Initiator'),
    (20000044, 'Controller'),

    -- TEAM 10

    -- Player 37089900 (20000045) - Sentinel
    (20000045, 'Sentinel'),

    -- Player 38090011 (20000046) - Controller
    (20000046, 'Controller'),

    -- Player 39001122 (20000047) - Duelist, Initiator
    (20000047, 'Duelist'),

    -- Player 40012233 (20000048) - Duelist, Controller
    (20000048, 'Controller'),

    -- Player 10000000 (20000049) - Initiator
    (20000049, 'Initiator');

-- Insert data into VALO_AGENT table
INSERT INTO VALO_AGENT
    (Agent_Name, ROLE_Role_Name)
VALUES
    ('Brimstone', 'Controller'),
    ('Viper', 'Controller'),
    ('Omen', 'Controller'),
    ('Astra', 'Controller'),
    ('Harbor', 'Controller'),
    ('Clove', 'Controller'),

    ('Breach', 'Initiator'),
    ('Skye', 'Initiator'),
    ('Sova', 'Initiator'),
    ('KAY/O', 'Initiator'),
    ('Fade', 'Initiator'),
    ('Gekko', 'Initiator'),

    ('Cypher', 'Sentinel'),
    ('Killjoy', 'Sentinel'),
    ('Sage', 'Sentinel'),
    ('Chamber', 'Sentinel'),
    ('Deadlock', 'Sentinel'),

    ('Jett', 'Duelist'),
    ('Raze', 'Duelist'),
    ('Reyna', 'Duelist'),
    ('Phoenix', 'Duelist'),
    ('Yoru', 'Duelist'),
    ('Neon', 'Duelist'),
    ('Iso', 'Duelist');

-- Insert data into VALO_MATCH table
INSERT INTO VALO_MATCH
    (Match_ID, Team_1_ID, Team_2_ID)
VALUES

    --- TEAM 1 VS TEAM 10

    (1, 1, 10),
    (2, 1, 10),


    (3, 1, 10),
    (4, 1, 10),

    (5, 2, 3),
    (6, 2, 4),

    (7, 3, 4),
    (8, 3, 5),

    (9, 8, 5),
    (10, 5, 7),

    (11, 6, 8),
    (12, 6, 9),
    (13, 6, 8),
    (14, 6, 9),

    (15, 7, 8),
    (16, 7, 9),
    (17, 7, 9),
    (18, 7, 9);

-- Insert data into VALO_GAME table
INSERT INTO VALO_GAME
    (Game_ID, Rounds_Won_Team_1, Rounds_Won_Team_2, MATCH_Match_ID, Map)
VALUES
    -- Match 1
    (1, 13, 11, 1, 'Ascent'),
    (2, 13, 7, 1, 'Bind'),

    -- Match 2
    (1, 13, 10, 2, 'Brezze'),
    (2, 2, 13, 2, 'Icebox'),
    (3, 14, 12, 2, 'Ascent'),

    -- Match 3
    (1, 4, 13, 3, 'Brezze'),
    (2, 15, 13, 3, 'Icebox'),
    (3, 6, 13, 3, 'Ascent'),

    -- Match 4
    (1, 4, 13, 4, 'Split'),
    (2, 15, 13, 4, 'Icebox'),
    (3, 6, 13, 4, 'Ascent'),

    -- Match 5
    (1, 13, 11, 5, 'Ascent'),
    (2, 13, 7, 5, 'Bind'),

    -- Match 6
    (1, 13, 10, 6, 'Split'),
    (2, 2, 13, 6, 'Icebox'),
    (3, 14, 12, 6, 'Ascent'),

    -- Match 7
    (1, 13, 10, 7, 'Ascent'),
    (2, 13, 4, 7, 'Sunset'),

    -- Match 8
    (1, 13, 9, 8, 'Ascent'),
    (2, 7, 13, 8, 'Icebox'),
    (3, 15, 13, 8, 'Split'),

    -- Match 9
    (1, 9, 13, 9, 'Lotus'),
    (2, 13, 4, 9, 'Icebox'),
    (3, 6, 13, 9, 'Ascent'),

    -- Match 10
    (1, 10, 13, 10, 'Split'),
    (2, 13, 8, 10, 'Icebox'),
    (3, 7, 13, 10, 'Ascent'),

    -- Match 11
    (1, 13, 10, 11, 'Split'),
    (2, 2, 13, 11, 'Icebox'),
    (3, 14, 12, 11, 'Ascent'),

    -- Match 12
    (1, 13, 11, 12, 'Icebox'),
    (2, 13, 7, 12, 'Lotus'),

    -- Match 13
    (1, 13, 10, 13, 'Split'),
    (2, 13, 3, 13, 'Lotus'),

    -- Match 14
    (1, 13, 3, 14, 'Icebox'),
    (2, 13, 5, 14, 'Ascent'),

    -- Match 15
    (1, 13, 9, 15, 'Split'),
    (2, 14, 16, 15, 'Icebox'),
    (3, 14, 12, 15, 'Ascent'),

    -- Match 16
    (1, 13, 9, 16, 'Split'),
    (2, 13, 10, 16, 'Brezze'),

    -- Match 17
    (1, 13, 10, 17, 'Icebox'),
    (2, 13, 11, 17, 'Sunset'),

    -- Match 18
    (1, 13, 4, 18, 'Brezze'),
    (2, 17, 15, 18, 'Bind');

-- Insert data into VALO_PLAYERSTATS table
INSERT INTO VALO_PLAYERSTATS
    (PLAYER_CC_Number, GAME_Match_ID, GAME_Game_ID, Kills, Deaths, Assists, AVS, Rating, First_kills, AGENT_Agent_Name)
VALUES
    -- Game 1 stats
    -- Team 1
    (20000000, 1, 1, 20, 15, 5, 250, 3, 3, 'Jett'),
    -- Duelist
    (20000001, 1, 1, 18, 17, 7, 230, 6, 2, 'Sova'),
    -- Initiator
    (20000002, 1, 1, 15, 20, 6, 210, 7, 1, 'Brimstone'),
    -- Controller
    (20000003, 1, 1, 25, 13, 4, 280, 1, 4, 'Reyna'),
    -- Duelist
    (20000004, 1, 1, 12, 22, 8, 190, 9, 1, 'Sage'),
    -- Sentinel

    -- Team 10
    (20000045, 1, 1, 10, 18, 10, 170, 10, 1, 'Killjoy'),
    -- Sentinel
    (20000046, 1, 1, 20, 15, 7, 250, 4, 3, 'Omen'),
    -- Controller
    (20000047, 1, 1, 22, 14, 5, 270, 2, 4, 'Phoenix'),
    -- Duelist
    (20000048, 1, 1, 18, 19, 9, 230, 5, 2, 'Viper'),
    -- Controller
    (20000049, 1, 1, 14, 22, 6, 200, 8, 2, 'KAY/O'),
    -- Initiator

    -- Game 2 stats
    -- Team 1
    (20000000, 1, 2, 21, 16, 5, 260, 4, 3, 'Jett'),
    -- Duelist
    (20000001, 1, 2, 19, 18, 7, 240, 5, 2, 'Skye'),
    -- Initiator
    (20000002, 1, 2, 16, 21, 6, 220, 7, 1, 'Astra'),
    -- Controller
    (20000003, 1, 2, 26, 14, 4, 290, 1, 4, 'Reyna'),
    -- Duelist
    (20000004, 1, 2, 13, 23, 8, 200, 9, 1, 'Cypher'),
    -- Sentinel

    -- Team 10
    (20000045, 1, 2, 11, 19, 10, 180, 10, 1, 'Sage'),
    -- Sentinel
    (20000046, 1, 2, 21, 16, 7, 260, 3, 3, 'Omen'),
    -- Controller
    (20000047, 1, 2, 23, 15, 5, 280, 2, 4, 'Yoru'),
    -- Duelist
    (20000048, 1, 2, 19, 20, 9, 240, 6, 2, 'Viper'),
    -- Controller
    (20000049, 1, 2, 15, 23, 6, 210, 8, 2, 'Fade'),
    -- Initiator

    -- Game 3 stats
    -- Team 1
    (20000000, 2, 1, 17, 15, 5, 230, 3, 2, 'Jett'),
    -- Duelist
    (20000001, 2, 1, 15, 17, 7, 210, 6, 3, 'Sova'),
    -- Initiator
    (20000002, 2, 1, 13, 20, 5, 190, 8, 1, 'Brimstone'),
    -- Controller
    (20000003, 2, 1, 21, 12, 6, 260, 1, 4, 'Reyna'),
    -- Duelist
    (20000004, 2, 1, 11, 21, 7, 180, 10, 1, 'Sage'),
    -- Sentinel

    -- Team 10
    (20000045, 2, 1, 12, 17, 9, 190, 9, 2, 'Killjoy'),
    -- Sentinel
    (20000046, 2, 1, 17, 14, 8, 230, 4, 3, 'Omen'),
    -- Controller
    (20000047, 2, 1, 20, 13, 6, 250, 2, 4, 'Phoenix'),
    -- Duelist
    (20000048, 2, 1, 16, 18, 7, 220, 5, 2, 'Viper'),
    -- Controller
    (20000049, 2, 1, 12, 20, 6, 190, 7, 1, 'KAY/O'),
    -- Initiator

    -- Game 4 stats
    -- Team 1
    (20000000, 2, 2, 18, 15, 7, 240, 3, 3, 'Jett'),
    -- Duelist
    (20000001, 2, 2, 16, 19, 7, 220, 6, 2, 'Skye'),
    -- Initiator
    (20000002, 2, 2, 14, 20, 6, 200, 7, 1, 'Astra'),
    -- Controller
    (20000003, 2, 2, 23, 13, 8, 270, 1, 4, 'Reyna'),
    -- Duelist
    (20000004, 2, 2, 12, 22, 8, 180, 10, 1, 'Cypher'),
    -- Sentinel

    -- Team 10
    (20000045, 2, 2, 13, 18, 10, 200, 9, 2, 'Sage'),
    -- Sentinel
    (20000046, 2, 2, 18, 15, 9, 240, 4, 3, 'Omen'),
    -- Controller
    (20000047, 2, 2, 21, 14, 7, 260, 2, 4, 'Yoru'),
    -- Duelist
    (20000048, 2, 2, 17, 19, 8, 230, 4, 2, 'Viper'),
    -- Controller
    (20000049, 2, 2, 13, 21, 7, 200, 8, 2, 'Fade'),
    -- Initiator

    -- Game 5 stats
    -- Team 1
    (20000000, 2, 3, 19, 16, 8, 250, 4, 3, 'Jett'),
    -- Duelist
    (20000001, 2, 3, 17, 20, 8, 230, 6, 2, 'Breach'),
    -- Initiator
    (20000002, 2, 3, 15, 21, 7, 220, 7, 1, 'Omen'),
    -- Controller
    (20000003, 2, 3, 24, 14, 6, 280, 1, 4, 'Phoenix'),
    -- Duelist
    (20000004, 2, 3, 12, 23, 9, 200, 10, 1, 'Killjoy'),
    -- Sentinel

    -- Team 10
    (20000045, 2, 3, 14, 19, 11, 210, 9, 1, 'Deadlock'),
    -- Sentinel
    (20000046, 2, 3, 19, 16, 9, 250, 3, 3, 'Viper'),
    -- Controller
    (20000047, 2, 3, 22, 15, 7, 270, 2, 4, 'Reyna'),
    -- Duelist
    (20000048, 2, 3, 18, 21, 8, 240, 5, 2, 'Brimstone'),
    -- Controller
    (20000049, 2, 3, 14, 24, 7, 220, 8, 2, 'Gekko'),
    -- Initiator

    -- Game 6 stats
    -- Team 1
    (20000000, 3, 1, 16, 14, 6, 220, 4, 2, 'Jett'),
    -- Duelist
    (20000001, 3, 1, 14, 18, 7, 200, 7, 3, 'Sova'),
    -- Initiator
    (20000002, 3, 1, 12, 19, 5, 180, 1.0, 1, 'Brimstone'),
    -- Controller
    (20000003, 3, 1, 20, 12, 6, 250, 1, 4, 'Reyna'),
    -- Duelist
    (20000004, 3, 1, 10, 21, 7, 170, 10, 0, 'Sage'),
    -- Sentinel

    -- Team 10
    (20000045, 3, 1, 11, 17, 9, 180, 9, 2, 'Killjoy'),
    -- Sentinel
    (20000046, 3, 1, 16, 14, 8, 220, 5, 3, 'Omen'),
    -- Controller
    (20000047, 3, 1, 19, 13, 6, 240, 2, 4, 'Phoenix'),
    -- Duelist
    (20000048, 3, 1, 15, 18, 7, 210, 6, 2, 'Viper'),
    -- Controller
    (20000049, 3, 1, 11, 20, 6, 180, 8, 1, 'KAY/O'),
    -- Initiator

    -- Game 7 stats
    -- Team 1
    (20000000, 3, 2, 17, 15, 7, 230, 4, 3, 'Jett'),
    -- Duelist
    (20000001, 3, 2, 15, 19, 7, 210, 6, 2, 'Skye'),
    -- Initiator
    (20000002, 3, 2, 13, 20, 6, 190, 7, 1, 'Astra'),
    -- Controller
    (20000003, 3, 2, 22, 13, 8, 260, 1, 4, 'Reyna'),
    -- Duelist
    (20000004, 3, 2, 11, 22, 8, 180, 10, 1, 'Cypher'),
    -- Sentinel

    -- Team 10
    (20000045, 3, 2, 12, 18, 10, 190, 8, 2, 'Sage'),
    -- Sentinel
    (20000046, 3, 2, 17, 15, 9, 230, 3, 3, 'Omen'),
    -- Controller
    (20000047, 3, 2, 20, 14, 7, 250, 2, 4, 'Yoru'),
    -- Duelist
    (20000048, 3, 2, 16, 19, 8, 220, 5, 2, 'Viper'),
    -- Controller
    (20000049, 3, 2, 12, 21, 7, 190, 9, 2, 'Fade'),
    -- Initiator

    -- Game 8 stats
    -- Team 1
    (20000000, 3, 3, 18, 16, 8, 240, 4, 3, 'Jett'),
    -- Duelist
    (20000001, 3, 3, 16, 20, 8, 220, 6, 2, 'Breach'),
    -- Initiator
    (20000002, 3, 3, 14, 21, 7, 210, 7, 1, 'Omen'),
    -- Controller
    (20000003, 3, 3, 23, 14, 6, 270, 1, 4, 'Phoenix'),
    -- Duelist
    (20000004, 3, 3, 12, 23, 9, 190, 10, 1, 'Killjoy'),
    -- Sentinel

    -- Team 10
    (20000045, 3, 3, 13, 19, 11, 200, 9, 1, 'Deadlock'),
    -- Sentinel
    (20000046, 3, 3, 18, 16, 9, 240, 3, 3, 'Viper'),
    -- Controller
    (20000047, 3, 3, 21, 15, 7, 260, 2, 4, 'Reyna'),
    -- Duelist
    (20000048, 3, 3, 17, 21, 8, 230, 5, 2, 'Brimstone'),
    -- Controller
    (20000049, 3, 3, 13, 24, 7, 210, 8, 2, 'Gekko'),
    -- Initiator

    -- Game 9 stats
    -- Team 1
    (20000000, 4, 1, 18, 14, 6, 240, 4, 2, 'Jett'),
    -- Duelist
    (20000001, 4, 1, 16, 18, 7, 220, 6, 3, 'Sova'),
    -- Initiator
    (20000002, 4, 1, 14, 19, 5, 200, 8, 1, 'Brimstone'),
    -- Controller
    (20000003, 4, 1, 22, 12, 8, 270, 1, 4, 'Reyna'),
    -- Duelist
    (20000004, 4, 1, 10, 21, 7, 180, 10, 0, 'Sage'),
    -- Sentinel

    -- Team 10
    (20000045, 4, 1, 11, 17, 9, 190, 9, 2, 'Killjoy'),
    -- Sentinel
    (20000046, 4, 1, 18, 14, 8, 240, 3, 3, 'Omen'),
    -- Controller
    (20000047, 4, 1, 21, 13, 6, 260, 2, 4, 'Phoenix'),
    -- Duelist
    (20000048, 4, 1, 17, 18, 7, 230, 5, 2, 'Viper'),
    -- Controller
    (20000049, 4, 1, 13, 20, 6, 200, 7, 1, 'KAY/O'),
    -- Initiator

    -- Game 10 stats
    -- Team 1
    (20000000, 4, 2, 19, 15, 7, 250, 3, 3, 'Jett'),
    -- Duelist
    (20000001, 4, 2, 17, 19, 8, 230, 6, 2, 'Skye'),
    -- Initiator
    (20000002, 4, 2, 15, 20, 6, 210, 8, 1, 'Astra'),
    -- Controller
    (20000003, 4, 2, 24, 13, 9, 280, 1, 4, 'Reyna'),
    -- Duelist
    (20000004, 4, 2, 11, 22, 8, 190, 10, 1, 'Cypher'),
    -- Sentinel

    -- Team 10
    (20000045, 4, 2, 12, 18, 11, 200, 9, 2, 'Sage'),
    -- Sentinel
    (20000046, 4, 2, 19, 15, 9, 250, 3, 3, 'Omen'),
    -- Controller
    (20000047, 4, 2, 22, 14, 7, 270, 2, 4, 'Yoru'),
    -- Duelist
    (20000048, 4, 2, 18, 19, 8, 240, 5, 2, 'Viper'),
    -- Controller
    (20000049, 4, 2, 14, 21, 7, 210, 7, 2, 'Fade'),
    -- Initiator

    -- Game 11 stats
    -- Team 1
    (20000000, 4, 3, 20, 16, 8, 260, 4, 3, 'Jett'),
    -- Duelist
    (20000001, 4, 3, 18, 20, 8, 240, 6, 2, 'Breach'),
    -- Initiator
    (20000002, 4, 3, 16, 21, 7, 230, 7, 1, 'Omen'),
    -- Controller
    (20000003, 4, 3, 25, 14, 6, 290, 1, 4, 'Phoenix'),
    -- Duelist
    (20000004, 4, 3, 13, 23, 9, 210, 9, 1, 'Killjoy'),
    -- Sentinel

    -- Team 10
    (20000045, 4, 3, 13, 19, 11, 210, 10, 1, 'Deadlock'),
    -- Sentinel
    (20000046, 4, 3, 20, 16, 9, 260, 3, 3, 'Viper'),
    -- Controller
    (20000047, 4, 3, 23, 15, 7, 280, 2, 4, 'Reyna'),
    -- Duelist
    (20000048, 4, 3, 19, 21, 8, 250, 5, 2, 'Brimstone'),
    -- Controller
    (20000049, 4, 3, 15, 24, 7, 220, 8, 2, 'Gekko'),
    -- Initiator

    -- Game 12 stats
    -- Team 2
    (20000005, 5, 1, 15, 17, 6, 220, 6, 2, 'Cypher'),
    -- Sentinel
    (20000006, 5, 1, 20, 14, 7, 260, 1, 3, 'Jett'),
    -- Duelist
    (20000007, 5, 1, 12, 18, 5, 190, 9, 1, 'Viper'),
    -- Controller
    (20000008, 5, 1, 18, 16, 8, 240, 4, 4, 'Breach'),
    -- Initiator
    (20000009, 5, 1, 14, 20, 6, 210, 7, 2, 'Raze'),
    -- Duelist

    -- Team 3
    (20000010, 5, 1, 13, 19, 6, 200, 8, 2, 'Skye'),
    -- Initiator
    (20000011, 5, 1, 16, 17, 8, 230, 5, 3, 'Astra'),
    -- Controller
    (20000012, 5, 1, 19, 15, 7, 250, 2, 4, 'Reyna'),
    -- Duelist
    (20000013, 5, 1, 11, 20, 5, 180, 10, 1, 'Killjoy'),
    -- Sentinel
    (20000014, 5, 1, 17, 18, 6, 240, 3, 3, 'Jett'),
    -- Duelist

    -- Game 13 stats
    -- Team 2
    (20000005, 5, 2, 16, 18, 7, 230, 6, 2, 'Sage'),
    -- Sentinel
    (20000006, 5, 2, 21, 15, 8, 270, 1, 3, 'Phoenix'),
    -- Duelist
    (20000007, 5, 2, 13, 19, 6, 200, 8, 1, 'Omen'),
    (20000008, 5, 2, 19, 17, 9, 250, 3, 4, 'KAY/O'),
    (20000009, 5, 2, 15, 21, 7, 220, 7, 2, 'Raze'),
    -- Duelist

    -- Team 3
    (20000010, 5, 2, 14, 20, 7, 210, 9, 2, 'Fade'),
    (20000011, 5, 2, 17, 18, 9, 240, 4, 3, 'Harbor'),
    (20000012, 5, 2, 20, 16, 8, 260, 2, 4, 'Yoru'),
    (20000013, 5, 2, 12, 21, 6, 190, 10, 1, 'Cypher'),
    (20000014, 5, 2, 18, 19, 7, 250, 3, 3, 'Jett'),
    -- Duelist

    -- Game 14 stats
    -- Team 2
    (20000005, 6, 1, 16, 17, 6, 230, 6, 2, 'Cypher'),
    (20000006, 6, 1, 21, 14, 7, 270, 1, 3, 'Jett'),
    (20000007, 6, 1, 13, 18, 5, 200, 9, 1, 'Viper'),
    (20000008, 6, 1, 19, 16, 8, 250, 3, 4, 'Breach'),
    (20000009, 6, 1, 15, 20, 6, 220, 7, 2, 'Raze'),
    -- Duelist

    -- Team 4
    (20000015, 6, 1, 18, 14, 8, 260, 2, 3, 'Omen'),
    (20000016, 6, 1, 12, 18, 6, 200, 9, 1, 'Killjoy'),
    (20000017, 6, 1, 17, 16, 9, 240, 4, 3, 'Harbor'),
    (20000018, 6, 1, 20, 15, 7, 270, 1, 4, 'Reyna'),
    (20000019, 6, 1, 13, 19, 5, 190, 10, 1, 'Jett'),
    -- Duelist

    -- Game 15 stats
    -- Team 2
    (20000005, 6, 2, 17, 18, 7, 240, 7, 2, 'Sage'),
    (20000006, 6, 2, 22, 15, 8, 280, 1, 3, 'Phoenix'),
    (20000007, 6, 2, 14, 19, 6, 210, 9, 1, 'Omen'),
    (20000008, 6, 2, 20, 17, 9, 260, 3, 4, 'KAY/O'),
    (20000009, 6, 2, 16, 21, 7, 230, 6, 2, 'Raze'),
    -- Duelist

    -- Team 4
    (20000015, 6, 2, 19, 15, 9, 270, 3, 3, 'Brimstone'),
    (20000016, 6, 2, 13, 19, 7, 220, 8, 1, 'Sage'),
    (20000017, 6, 2, 18, 17, 10, 250, 5, 3, 'Astra'),
    (20000018, 6, 2, 21, 16, 8, 280, 1, 4, 'Yoru'),
    (20000019, 6, 2, 14, 20, 6, 200, 10, 2, 'Phoenix'),
    -- Duelist

    -- Game 16 stats
    -- Team 2
    (20000005, 6, 3, 18, 19, 8, 250, 2, 2, 'Chamber'),
    -- Sentinel
    (20000006, 6, 3, 23, 16, 9, 290, 6, 4, 'Reyna'),
    -- Duelist
    (20000007, 6, 3, 15, 20, 7, 230, 1, 1, 'Brimstone'),
    -- Controller
    (20000008, 6, 3, 21, 18, 10, 270, 5, 4, 'Skye'),
    -- Initiator
    (20000009, 6, 3, 17, 22, 8, 240, 4, 2, 'Phoenix'),
    -- Duelist

    -- Team 4
    (20000015, 6, 3, 16, 21, 8, 240, 1, 2, 'Gekko'),
    -- Initiator
    (20000016, 6, 3, 20, 19, 10, 270, 3, 3, 'Omen'),
    -- Controller
    (20000017, 6, 3, 22, 17, 9, 290, 6, 4, 'Jett'),
    -- Duelist
    (20000018, 6, 3, 14, 22, 7, 200, 9, 1, 'Deadlock'),
    -- Sentinel
    (20000019, 6, 3, 19, 20, 8, 270, 4, 3, 'Raze'),
    -- Duelist

    -- Game 17 stats
    -- Team 3
    (20000010, 7, 1, 13, 19, 6, 200, 1, 2, 'Skye'),
    -- Initiator
    (20000011, 7, 1, 16, 17, 8, 230, 2, 3, 'Astra'),
    -- Controller
    (20000012, 7, 1, 19, 15, 7, 250, 3, 4, 'Reyna'),
    -- Duelist
    (20000013, 7, 1, 11, 20, 5, 180, 9, 1, 'Killjoy'),
    -- Sentinel
    (20000014, 7, 1, 17, 18, 6, 240, 1, 3, 'Jett'),
    -- Duelist

    -- Team 4
    (20000015, 7, 1, 18, 14, 8, 260, 3, 3, 'Omen'),
    -- Controller
    (20000016, 7, 1, 12, 18, 6, 200, 1, 1, 'Killjoy'),
    -- Sentinel
    (20000017, 7, 1, 17, 16, 9, 240, 2, 3, 'Harbor'),
    -- Controller
    (20000018, 7, 1, 20, 15, 7, 270, 4, 4, 'Reyna'),
    -- Duelist
    (20000019, 7, 1, 13, 19, 5, 190, 9, 1, 'Jett'),
    -- Duelist

    -- Game 18 stats
    -- Team 3
    (20000010, 7, 2, 14, 20, 7, 210, 1, 2, 'Fade'),
    -- Initiator
    (20000011, 7, 2, 17, 18, 9, 240, 3, 3, 'Harbor'),
    -- Controller
    (20000012, 7, 2, 20, 16, 8, 260, 4, 4, 'Yoru'),
    -- Duelist
    (20000013, 7, 2, 12, 21, 6, 190, 9, 1, 'Cypher'),
    -- Sentinel
    (20000014, 7, 2, 18, 19, 7, 250, 2, 3, 'Jett'),
    -- Duelist

    -- Team 4
    (20000015, 7, 2, 18, 14, 8, 260, 3, 3, 'Omen'),
    -- Controller
    (20000016, 7, 2, 12, 18, 6, 200, 1, 1, 'Killjoy'),
    -- Sentinel
    (20000017, 7, 2, 17, 16, 9, 240, 2, 3, 'Harbor'),
    -- Controller
    (20000018, 7, 2, 20, 15, 7, 270, 4, 4, 'Reyna'),
    -- Duelist
    (20000019, 7, 2, 13, 19, 5, 190, 9, 1, 'Jett'),
    -- Duelist

    -- Game 19 stats
    -- Team 3
    (20000010, 8, 1, 15, 21, 8, 220, 1, 2, 'Gekko'),
    -- Initiator
    (20000011, 8, 1, 18, 19, 10, 250, 1, 3, 'Omen'),
    -- Controller
    (20000012, 8, 1, 21, 17, 9, 270, 5, 4, 'Jett'),
    -- Duelist
    (20000013, 8, 1, 13, 22, 7, 200, 9, 1, 'Deadlock'),
    -- Sentinel
    (20000014, 8, 1, 19, 20, 8, 260, 3, 3, 'Raze'),
    -- Controller

    -- Team 5
    (20000020, 8, 1, 18, 16, 8, 250, 3, 3, 'Killjoy'),
    -- Sentinel
    (20000021, 8, 1, 22, 15, 9, 280, 1, 4, 'Jett'),
    -- Duelist
    (20000022, 8, 1, 14, 20, 7, 220, 5, 1, 'Sova'),
    -- Initiator
    (20000023, 8, 1, 20, 17, 10, 260, 2, 4, 'Yoru'),
    -- Duelist
    (20000024, 8, 1, 16, 22, 8, 240, 2, 2, 'Brimstone'),
    -- Controller

    -- Game 20 stats
    -- Team 3
    (20000010, 8, 2, 16, 20, 7, 230, 1, 2, 'Fade'),
    -- Initiator
    (20000011, 8, 2, 20, 17, 8, 260, 4, 3, 'Harbor'),
    -- Controller
    (20000012, 8, 2, 23, 16, 9, 290, 6, 4, 'Reyna'),
    -- Duelist
    (20000013, 8, 2, 14, 21, 6, 210, 1, 1, 'Cypher'),
    -- Sentinel
    (20000014, 8, 2, 20, 19, 7, 250, 2, 3, 'Jett'),
    -- Duelist

    -- Team 5
    (20000020, 8, 2, 17, 18, 7, 240, 2, 2, 'Sage'),
    -- Sentinel
    (20000021, 8, 2, 21, 15, 8, 280, 5, 3, 'Phoenix'),
    -- Duelist
    (20000022, 8, 2, 15, 19, 6, 220, 2, 1, 'Gekko'),
    -- Initiator
    (20000023, 8, 2, 19, 17, 9, 250, 3, 4, 'Raze'),
    -- Duelist
    (20000024, 8, 2, 13, 20, 5, 190, 9, 1, 'Omen'),
    -- Sentinel

    -- Game 21 stats
    -- Team 3
    (20000010, 8, 3, 16, 20, 7, 230, 1, 2, 'Fade'),
    -- Initiator
    (20000011, 8, 3, 20, 17, 8, 260, 4, 3, 'Harbor'),
    -- Controller
    (20000012, 8, 3, 23, 16, 9, 290, 6, 4, 'Reyna'),
    -- Duelist
    (20000013, 8, 3, 14, 21, 6, 210, 1, 1, 'Cypher'),
    -- Sentinel
    (20000014, 8, 3, 20, 19, 7, 250, 2, 3, 'Jett'),
    -- Duelist

    -- Team 5
    (20000020, 8, 3, 17, 18, 7, 240, 2, 2, 'Sage'),
    -- Sentinel
    (20000021, 8, 3, 21, 15, 8, 280, 1, 3, 'Phoenix'),
    -- Duelist
    (20000022, 8, 3, 15, 19, 6, 220, 2, 1, 'Gekko'),
    -- Initiator
    (20000023, 8, 3, 19, 17, 9, 250, 3, 4, 'Raze'),
    -- Duelist
    (20000024, 8, 3, 13, 20, 5, 190, 9, 1, 'Omen'),
    -- Sentinel

    -- Game 22 stats

    -- Team 8
    (20000035, 9, 1, 14, 20, 6, 220, 1, 2, 'Clove'),
    -- Controller
    (20000036, 9, 1, 18, 16, 9, 250, 3, 3, 'Fade'),
    -- Initiator
    (20000037, 9, 1, 17, 18, 8, 240, 2, 1, 'Harbor'),
    -- Controller
    (20000038, 9, 1, 21, 15, 10, 280, 1, 4, 'Jett'),
    -- Duelist
    (20000039, 9, 1, 16, 22, 7, 230, 1, 2, 'Killjoy'),
    -- Sentinel

    -- Team 5
    (20000020, 9, 1, 18, 16, 8, 250, 3, 3, 'Killjoy'),
    -- Sentinel
    (20000021, 9, 1, 22, 15, 9, 280, 5, 4, 'Jett'),
    -- Duelist
    (20000022, 9, 1, 14, 20, 7, 220, 3, 1, 'Sova'),
    -- Initiator
    (20000023, 9, 1, 20, 17, 10, 260, 1, 4, 'Yoru'),
    -- Duelist
    (20000024, 9, 1, 16, 22, 8, 240, 2, 2, 'Brimstone'),
    -- Controller

    -- Game 23 stats

    -- Team 8
    (20000035, 9, 2, 12, 18, 5, 210, 1, 1, 'Clove'),
    -- Controller
    (20000036, 9, 2, 16, 14, 8, 240, 2, 2, 'Fade'),
    -- Initiator
    (20000037, 9, 2, 16, 16, 7, 230, 1, 1, 'Harbor'),
    -- Controller
    (20000038, 9, 2, 20, 12, 9, 270, 1, 3, 'Jett'),
    -- Duelist
    (20000039, 9, 2, 14, 20, 6, 220, 1, 1, 'Killjoy'),
    -- Sentinel

    -- Team 5
    (20000020, 9, 2, 20, 12, 9, 270, 4, 3, 'Killjoy'),
    -- Sentinel
    (20000021, 9, 2, 18, 16, 7, 230, 1, 1, 'Jett'),
    -- Duelist
    (20000022, 9, 2, 14, 20, 5, 210, 0, 2, 'Sova'),
    -- Initiator
    (20000023, 9, 2, 16, 14, 8, 240, 2, 2, 'Yoru'),
    -- Duelist
    (20000024, 9, 2, 12, 18, 7, 220, 1, 1, 'Brimstone'),
    -- Controller

    -- Game 24 stats

    -- Team 8
    (20000035, 9, 3, 10, 16, 5, 200, 8, 1, 'Clove'),
    -- Controller
    (20000036, 9, 3, 14, 12, 7, 220, 1, 2, 'Fade'),
    -- Initiator
    (20000037, 9, 3, 14, 14, 6, 210, 1, 1, 'Harbor'),
    -- Controller
    (20000038, 9, 3, 18, 10, 8, 250, 3, 3, 'Jett'),
    -- Duelist
    (20000039, 9, 3, 12, 18, 5, 200, 7, 1, 'Killjoy'),
    -- Sentinel

    -- Team 5
    (20000020, 9, 3, 18, 10, 8, 250, 3, 3, 'Killjoy'),
    -- Sentinel
    (20000021, 9, 3, 16, 14, 7, 220, 1, 2, 'Jett'),
    -- Duelist
    (20000022, 9, 3, 12, 16, 5, 200, 6, 1, 'Sova'),
    -- Initiator
    (20000023, 9, 3, 14, 12, 7, 240, 2, 2, 'Yoru'),
    -- Duelist
    (20000024, 9, 3, 16, 22, 8, 240, 2, 2, 'Brimstone'),
    -- Controller

    -- Game 25 stats
    -- Team 7
    (20000030, 10, 1, 17, 20, 9, 240, 1, 2, 'Brimstone'),
    -- Controller
    (20000031, 10, 1, 20, 18, 8, 250, 3, 3, 'Sage'),
    -- Sentinel
    (20000032, 10, 1, 19, 19, 10, 250, 2, 2, 'Breach'),
    -- Initiator, Duelist
    (20000033, 10, 1, 18, 16, 9, 250, 4, 3, 'Skye'),
    -- Initiator, Controller
    (20000034, 10, 1, 21, 17, 8, 270, 1, 4, 'Raze'),
    -- Duelist

    -- Team 5
    (20000020, 10, 1, 16, 18, 7, 230, 2, 1, 'Cypher'),
    -- Sentinel
    (20000021, 10, 1, 22, 15, 8, 280, 6, 4, 'Jett'),
    -- Duelist, Initiator
    (20000022, 10, 1, 15, 19, 7, 220, 1, 2, 'Fade'),
    -- Initiator
    (20000023, 10, 1, 20, 17, 9, 260, 4, 3, 'Raze'),
    -- Duelist, Controller
    (20000024, 10, 1, 16, 22, 8, 240, 3, 2, 'Brimstone'),
    -- Controller

    -- Game 26 stats
    -- Team 7
    (20000030, 10, 2, 18, 16, 7, 250, 3, 3, 'Brimstone'),
    -- Controller
    (20000031, 10, 2, 19, 19, 6, 240, 2, 1, 'Sage'),
    -- Sentinel
    (20000032, 10, 2, 21, 18, 9, 270, 4, 2, 'Breach'),
    -- Initiator, Duelist
    (20000033, 10, 2, 16, 15, 10, 240, 3, 2, 'Skye'),
    -- Initiator, Controller
    (20000034, 10, 2, 23, 20, 8, 280, 6, 4, 'Raze'),
    -- Duelist

    -- Team 5
    (20000020, 10, 2, 17, 21, 5, 220, 1, 2, 'Cypher'),
    -- Sentinel
    (20000021, 10, 2, 20, 17, 9, 250, 4, 3, 'Jett'),
    -- Duelist, Initiator
    (20000022, 10, 2, 14, 18, 6, 210, 1, 1, 'Gekko'),
    -- Initiator
    (20000023, 10, 2, 18, 20, 7, 230, 1, 2, 'Raze'),
    -- Duelist, Controller
    (20000024, 10, 2, 18, 25, 6, 210, 9, 1, 'Brimstone'),
    -- Controller

    -- Game 27 stats
    -- Team 7
    (20000030, 10, 3, 20, 15, 8, 260, 4, 4, 'Brimstone'),
    -- Controller
    (20000031, 10, 3, 22, 17, 7, 270, 5, 3, 'Sage'),
    -- Sentinel
    (20000032, 10, 3, 20, 20, 8, 260, 3, 2, 'Breach'),
    -- Initiator, Duelist
    (20000033, 10, 3, 20, 18, 9, 260, 4, 3, 'Skye'),
    -- Initiator, Controller
    (20000034, 10, 3, 24, 18, 7, 290, 7, 5, 'Raze'),
    -- Duelist

    -- Team 5
    (20000020, 10, 3, 19, 20, 6, 240, 2, 2, 'Sova'),
    -- Sentinel
    (20000021, 10, 3, 18, 20, 8, 250, 3, 1, 'Jett'),
    -- Duelist, Initiator
    (20000022, 10, 3, 16, 16, 5, 230, 1, 2, 'Omen'),
    -- Initiator
    (20000023, 10, 3, 22, 19, 6, 270, 1, 3, 'Raze'),
    -- Duelist, Controller
    (20000024, 10, 3, 18, 25, 6, 210, 9, 1, 'Brimstone'),
    -- Controller

    -- Game 28 stats
    -- Team 6
    (20000025, 11, 1, 16, 18, 7, 240, 2, 2, 'Brimstone'),
    -- Controller
    (20000026, 11, 1, 14, 20, 8, 220, 1, 1, 'Cypher'),
    -- Sentinel
    (20000027, 11, 1, 19, 17, 9, 250, 3, 4, 'Skye'),
    -- Initiator
    (20000028, 11, 1, 21, 16, 8, 260, 4, 3, 'Yoru'),
    -- Duelist
    (20000029, 11, 1, 20, 19, 7, 250, 2, 3, 'Fade'),
    -- Initiator, Controller, Duelist, Sentinel

    -- Team 8
    (20000035, 11, 1, 18, 16, 7, 250, 3, 3, 'Omen'),
    -- Controller
    (20000036, 11, 1, 22, 15, 9, 280, 5, 4, 'KAY/O'),
    -- Initiator
    (20000037, 11, 1, 15, 19, 6, 220, 1, 1, 'Viper'),
    -- Controller
    (20000038, 11, 1, 20, 17, 9, 260, 4, 4, 'Jett'),
    -- Duelist
    (20000039, 11, 1, 16, 22, 8, 240, 2, 2, 'Killjoy'),
    -- Sentinel

    -- Game 29 stats
    -- Team 6
    (20000025, 11, 2, 15, 20, 6, 230, 0, 1, 'Clove'),
    -- Controller
    (20000026, 11, 2, 16, 18, 7, 240, 2, 2, 'Cypher'),
    -- Sentinel
    (20000027, 11, 2, 20, 17, 8, 260, 4, 3, 'Breach'),
    -- Initiator
    (20000028, 11, 2, 23, 16, 9, 290, 6, 4, 'Jett'),
    -- Duelist
    (20000029, 11, 2, 19, 20, 7, 250, 2, 3, 'Sova'),
    -- Initiator, Controller, Duelist, Sentinel

    -- Team 8
    (20000035, 11, 2, 17, 20, 7, 240, 1, 2, 'Harbor'),
    -- Controller
    (20000036, 11, 2, 20, 19, 8, 250, 3, 3, 'Breach'),
    -- Initiator
    (20000037, 11, 2, 21, 18, 9, 270, 5, 4, 'Omen'),
    -- Controller
    (20000038, 11, 2, 14, 21, 6, 210, 1, 1, 'Reyna'),
    -- Duelist
    (20000039, 11, 2, 20, 19, 7, 250, 2, 3, 'Killjoy'),
    -- Sentinel

    -- Game 30 stats
    -- Team 6
    (20000025, 11, 3, 15, 20, 6, 230, 1, 1, 'Clove'),
    -- Controller
    (20000026, 11, 3, 16, 18, 7, 240, 2, 2, 'Cypher'),
    -- Sentinel
    (20000027, 11, 3, 20, 17, 8, 260, 4, 3, 'Breach'),
    -- Initiator
    (20000028, 11, 3, 23, 16, 9, 290, 1, 4, 'Jett'),
    -- Duelist
    (20000029, 11, 3, 19, 20, 7, 250, 2, 3, 'Sova'),
    -- Initiator, Controller, Duelist, Sentinel

    -- Team 8
    (20000035, 11, 3, 17, 20, 7, 240, 1, 2, 'Harbor'),
    -- Controller
    (20000036, 11, 3, 20, 19, 8, 250, 3, 3, 'Breach'),
    -- Initiator
    (20000037, 11, 3, 21, 18, 9, 270, 1, 4, 'Omen'),
    -- Controller
    (20000038, 11, 3, 14, 21, 6, 210, 1, 1, 'Reyna'),
    -- Duelist
    (20000039, 11, 3, 20, 19, 7, 250, 2, 3, 'Killjoy'),
    -- Sentinel

    -- Game 31 stats
    -- Team 6
    (20000025, 12, 1, 15, 20, 8, 220, 1, 2, 'Brimstone'),
    -- Controller
    (20000026, 12, 1, 18, 18, 10, 240, 3, 3, 'Cypher'),
    -- Sentinel
    (20000027, 12, 1, 21, 16, 9, 260, 1, 4, 'Skye'),
    -- Initiator
    (20000028, 12, 1, 20, 17, 8, 250, 3, 3, 'Jett'),
    -- Duelist
    (20000029, 12, 1, 17, 22, 7, 210, 9, 1, 'Sova'),
    -- Duelist

    -- Team 9
    (20000040, 12, 1, 18, 16, 8, 250, 3, 3, 'Viper'),
    -- Controller
    (20000041, 12, 1, 22, 15, 9, 280, 5, 4, 'Jett'),
    -- Duelist
    (20000042, 12, 1, 14, 20, 7, 220, 1, 1, 'Raze'),
    -- Duelist
    (20000043, 12, 1, 20, 17, 10, 260, 4, 4, 'Cypher'),
    -- Initiator
    (20000044, 12, 1, 16, 22, 8, 240, 2, 2, 'Omen'),
    -- Controller

    -- Game 32 stats
    -- Team 6
    (20000025, 12, 2, 16, 20, 7, 230, 1, 2, 'Brimstone'),
    -- Controller
    (20000026, 12, 2, 20, 17, 8, 260, 4, 3, 'Cypher'),
    -- Sentinel
    (20000027, 12, 2, 23, 16, 9, 290, 1, 4, 'Skye'),
    -- Initiator
    (20000028, 12, 2, 20, 17, 8, 250, 3, 3, 'Jett'),
    -- Duelist
    (20000029, 12, 2, 17, 22, 7, 210, 9, 1, 'Sova'),
    -- Duelist

    -- Team 9
    (20000040, 12, 2, 17, 18, 7, 240, 2, 2, 'Omen'),
    -- Controller
    (20000041, 12, 2, 21, 15, 8, 280, 1, 3, 'Jett'),
    -- Duelist
    (20000042, 12, 2, 15, 19, 6, 220, 2, 1, 'Sova'),
    -- Duelist
    (20000043, 12, 2, 19, 17, 9, 250, 3, 4, 'Cypher'),
    -- Initiator
    (20000044, 12, 2, 13, 20, 5, 190, 9, 1, 'Viper'),
    -- Controller

    -- Game 33 stats
    -- Team 6
    (20000025, 13, 1, 15, 20, 6, 230, 1, 1, 'Clove'),
    -- Controller
    (20000026, 13, 1, 16, 18, 7, 240, 2, 2, 'Cypher'),
    -- Sentinel
    (20000027, 13, 1, 20, 17, 8, 260, 4, 3, 'Breach'),
    -- Initiator
    (20000028, 13, 1, 23, 16, 9, 290, 1, 4, 'Jett'),
    -- Duelist
    (20000029, 13, 1, 19, 20, 7, 250, 2, 3, 'Sova'),
    -- Initiator, Controller, Duelist, Sentinel

    -- Team 8
    (20000035, 13, 1, 17, 20, 7, 240, 1, 2, 'Harbor'),
    -- Controller
    (20000036, 13, 1, 20, 19, 8, 250, 3, 3, 'Breach'),
    -- Initiator
    (20000037, 13, 1, 21, 18, 9, 270, 1, 4, 'Omen'),
    -- Controller
    (20000038, 13, 1, 14, 21, 6, 210, 1, 1, 'Reyna'),
    -- Duelist
    (20000039, 13, 1, 20, 19, 7, 250, 2, 3, 'Killjoy'),
    -- Sentinel

    -- Game 34 stats
    -- Team 6
    (20000025, 13, 2, 15, 20, 6, 230, 1, 1, 'Clove'),
    -- Controller
    (20000026, 13, 2, 16, 18, 7, 240, 2, 2, 'Cypher'),
    -- Sentinel
    (20000027, 13, 2, 20, 17, 8, 260, 4, 3, 'Breach'),
    -- Initiator
    (20000028, 13, 2, 23, 16, 9, 290, 1, 4, 'Jett'),
    -- Duelist
    (20000029, 13, 2, 19, 20, 7, 250, 2, 3, 'Sova'),
    -- Initiator, Controller, Duelist, Sentinel

    -- Team 8
    (20000035, 13, 2, 17, 20, 7, 240, 1, 2, 'Harbor'),
    -- Controller
    (20000036, 13, 2, 20, 19, 8, 250, 3, 3, 'Breach'),
    -- Initiator
    (20000037, 13, 2, 21, 18, 9, 270, 1, 4, 'Omen'),
    -- Controller
    (20000038, 13, 2, 14, 21, 6, 210, 1, 1, 'Reyna'),
    -- Duelist
    (20000039, 13, 2, 20, 19, 7, 250, 2, 3, 'Killjoy'),
    -- Sentinel

    -- Game 35 stats
    -- Team 6
    (20000025, 14, 1, 15, 20, 8, 220, 1, 2, 'Brimstone'),
    -- Controller
    (20000026, 14, 1, 18, 18, 10, 240, 3, 3, 'Cypher'),
    -- Sentinel
    (20000027, 14, 1, 21, 16, 9, 260, 1, 4, 'Skye'),
    -- Initiator
    (20000028, 14, 1, 20, 17, 8, 250, 3, 3, 'Jett'),
    -- Duelist
    (20000029, 14, 1, 17, 22, 7, 210, 9, 1, 'Sova'),
    -- Duelist

    -- Team 9
    (20000040, 14, 1, 18, 16, 8, 250, 3, 3, 'Viper'),
    -- Controller
    (20000041, 14, 1, 22, 15, 9, 280, 1, 4, 'Jett'),
    -- Duelist
    (20000042, 14, 1, 14, 20, 7, 220, 1, 1, 'Raze'),
    -- Duelist
    (20000043, 14, 1, 20, 17, 10, 260, 1, 4, 'Cypher'),
    -- Initiator
    (20000044, 14, 1, 16, 22, 8, 240, 2, 2, 'Omen'),
    -- Controller

    -- Game 36 stats
    -- Team 6
    (20000025, 14, 2, 16, 20, 7, 230, 1, 2, 'Brimstone'),
    -- Controller
    (20000026, 14, 2, 20, 17, 8, 260, 4, 3, 'Cypher'),
    -- Sentinel
    (20000027, 14, 2, 23, 16, 9, 290, 1, 4, 'Skye'),
    -- Initiator
    (20000028, 14, 2, 20, 17, 8, 250, 3, 3, 'Jett'),
    -- Duelist
    (20000029, 14, 2, 17, 22, 7, 210, 9, 1, 'Sova'),
    -- Duelist

    -- Team 9
    (20000040, 14, 2, 17, 18, 7, 240, 2, 2, 'Omen'),
    -- Controller
    (20000041, 14, 2, 21, 15, 8, 280, 1, 3, 'Jett'),
    -- Duelist
    (20000042, 14, 2, 15, 19, 6, 220, 2, 1, 'Sova'),
    -- Duelist
    (20000043, 14, 2, 19, 17, 9, 250, 3, 4, 'Cypher'),
    -- Initiator
    (20000044, 14, 2, 13, 20, 5, 190, 9, 1, 'Viper'),
    -- Controller

    -- Game 37 stats
    -- Team 7
    (20000030, 15, 1, 18, 20, 9, 230, 1, 2, 'Omen'),
    -- Controller
    (20000031, 15, 1, 15, 18, 7, 220, 2, 1, 'Cypher'),
    -- Sentinel
    (20000032, 15, 1, 22, 16, 8, 250, 4, 3, 'Sova'),
    -- Initiator
    (20000033, 15, 1, 17, 19, 8, 220, 2, 2, 'Skye'),
    -- Initiator, Controller
    (20000034, 15, 1, 21, 17, 10, 270, 1, 4, 'Jett'),
    -- Duelist
    -- Team 8
    (20000035, 15, 1, 19, 18, 9, 240, 1, 3, 'Brimstone'),
    -- Controller
    (20000036, 15, 1, 16, 20, 7, 230, 1, 1, 'Fade'),
    -- Initiator
    (20000037, 15, 1, 18, 21, 8, 220, 3, 2, 'Harbor'),
    -- Controller
    (20000038, 15, 1, 24, 15, 9, 280, 1, 5, 'Reyna'),
    -- Duelist
    (20000039, 15, 1, 14, 22, 6, 210, 1, 1, 'Sage'),
    -- Sentinel

    -- Game 38 stats
    -- Team 7
    (20000030, 15, 2, 21, 18, 10, 250, 3, 3, 'Omen'),
    -- Controller
    (20000031, 15, 2, 18, 17, 8, 240, 2, 1, 'Cypher'),
    -- Sentinel
    (20000032, 15, 2, 20, 20, 7, 230, 4, 2, 'Sova'),
    -- Initiator
    (20000033, 15, 2, 19, 19, 9, 240, 2, 3, 'Skye'),
    -- Initiator, Controller
    (20000034, 15, 2, 23, 16, 11, 290, 1, 4, 'Jett'),
    -- Duelist
    -- Team 8
    (20000035, 15, 2, 20, 19, 8, 250, 3, 2, 'Brimstone'),
    -- Controller
    (20000036, 15, 2, 17, 21, 6, 210, 7, 1, 'Fade'),
    -- Initiator
    (20000037, 15, 2, 20, 22, 9, 230, 4, 2, 'Harbor'),
    -- Controller
    (20000038, 15, 2, 25, 18, 10, 300, 1, 5, 'Reyna'),
    -- Duelist
    (20000039, 15, 2, 15, 23, 7, 200, 8, 1, 'Sage'),
    -- Sentinel

    -- Game 39 stats
    -- Team 7
    (20000030, 15, 3, 20, 21, 12, 260, 4, 4, 'Omen'),
    -- Controller
    (20000031, 15, 3, 19, 16, 10, 250, 3, 2, 'Cypher'),
    -- Sentinel
    (20000032, 15, 3, 18, 18, 9, 240, 4, 3, 'Sova'),
    -- Initiator
    (20000033, 15, 3, 20, 20, 8, 260, 4, 4, 'Skye'),
    -- Initiator, Controller
    (20000034, 15, 3, 24, 19, 13, 310, 2, 5, 'Jett'),
    -- Duelist
    -- Team 8
    (20000035, 15, 3, 21, 20, 9, 270, 5, 3, 'Brimstone'),
    -- Controller
    (20000036, 15, 3, 18, 20, 8, 240, 4, 1, 'Fade'),
    -- Initiator
    (20000037, 15, 3, 21, 21, 10, 260, 3, 2, 'Harbor'),
    -- Controller
    (20000038, 15, 3, 27, 16, 12, 340, 1, 5, 'Reyna'),
    -- Duelist
    (20000039, 15, 3, 17, 22, 8, 230, 6, 1, 'Sage'),
    -- Sentinel

    -- Game 40 stats
    -- Team 7
    (20000030, 16, 1, 16, 18, 8, 240, 2, 2, 'Omen'),
    -- Controller
    (20000031, 16, 1, 21, 16, 9, 270, 4, 3, 'Sage'),
    -- Sentinel
    (20000032, 16, 1, 17, 17, 7, 230, 1, 1, 'Sova'),
    -- Initiator, Duelist
    (20000033, 16, 1, 19, 18, 8, 250, 3, 3, 'Breach'),
    -- Initiator, Controller
    (20000034, 16, 1, 20, 19, 7, 260, 2, 3, 'Jett'),
    -- Duelist

    -- Team 9
    (20000040, 16, 1, 18, 15, 8, 260, 2, 4, 'Brimstone'),
    -- Controller
    (20000041, 16, 1, 22, 14, 10, 280, 1, 4, 'Reyna'),
    -- Duelist
    (20000042, 16, 1, 19, 17, 9, 250, 3, 3, 'Fade'),
    -- Duelist, Initiator
    (20000043, 16, 1, 15, 19, 6, 220, 4, 1, 'Killjoy'),
    -- Sentinel
    (20000044, 16, 1, 18, 20, 8, 230, 5, 2, 'Skye'),
    -- Initiator, Controller

    -- Game 41 stats
    -- Team 7
    (20000030, 16, 2, 15, 16, 7, 230, 1, 2, 'Omen'),
    -- Controller
    (20000031, 16, 2, 20, 15, 8, 270, 4, 3, 'Sage'),
    -- Sentinel
    (20000032, 16, 2, 16, 18, 6, 220, 1, 1, 'Sova'),
    -- Initiator, Duelist
    (20000033, 16, 2, 18, 17, 7, 240, 2, 3, 'Breach'),
    -- Initiator, Controller
    (20000034, 16, 2, 19, 20, 7, 250, 2, 3, 'Jett'),
    -- Duelist

    -- Team 9
    (20000040, 16, 2, 17, 14, 8, 250, 5, 4, 'Brimstone'),
    -- Controller
    (20000041, 16, 2, 21, 13, 10, 280, 1, 4, 'Reyna'),
    -- Duelist
    (20000042, 16, 2, 18, 16, 9, 260, 3, 3, 'Fade'),
    -- Duelist, Initiator
    (20000043, 16, 2, 14, 18, 6, 220, 1, 1, 'Killjoy'),
    -- Initiator
    (20000044, 16, 2, 17, 19, 8, 240, 1, 2, 'Skye'),
    -- Initiator, Controller

    -- Game 42 stats
    -- Team 7
    (20000030, 17, 1, 16, 18, 8, 240, 1, 2, 'Omen'),
    -- Controller
    (20000031, 17, 1, 21, 16, 9, 270, 4, 3, 'Sage'),
    -- Sentinel
    (20000032, 17, 1, 17, 17, 7, 230, 1, 1, 'Sova'),
    -- Initiator, Duelist
    (20000033, 17, 1, 19, 18, 8, 250, 3, 3, 'Breach'),
    -- Initiator, Controller
    (20000034, 17, 1, 20, 19, 7, 260, 2, 3, 'Jett'),
    -- Duelist

    -- Team 9
    (20000040, 17, 1, 18, 15, 8, 260, 5, 4, 'Brimstone'),
    -- Controller
    (20000041, 17, 1, 22, 14, 10, 280, 6, 4, 'Reyna'),
    -- Duelist
    (20000042, 17, 1, 19, 17, 9, 250, 3, 3, 'Fade'),
    -- Duelist, Initiator
    (20000043, 17, 1, 15, 19, 6, 220, 1, 1, 'Killjoy'),
    -- Sentinel
    (20000044, 17, 1, 18, 20, 8, 230, 1, 2, 'Skye'),
    -- Initiator, Controller

    -- Game 43 stats
    -- Team 7
    (20000030, 17, 2, 15, 16, 7, 230, 1, 2, 'Omen'),
    -- Controller
    (20000031, 17, 2, 20, 15, 8, 270, 4, 3, 'Sage'),
    -- Sentinel
    (20000032, 17, 2, 16, 18, 6, 220, 3, 1, 'Sova'),
    -- Initiator, Duelist
    (20000033, 17, 2, 18, 17, 7, 240, 2, 3, 'Breach'),
    -- Initiator, Controller
    (20000034, 17, 2, 19, 20, 7, 250, 2, 3, 'Jett'),
    -- Duelist

    -- Team 9
    (20000040, 17, 2, 17, 14, 8, 250, 5, 4, 'Brimstone'),
    -- Controller
    (20000041, 17, 2, 21, 13, 10, 280, 1, 4, 'Reyna'),
    -- Duelist
    (20000042, 17, 2, 18, 16, 9, 260, 3, 3, 'Fade'),
    -- Duelist, Initiator
    (20000043, 17, 2, 14, 18, 6, 220, 1, 1, 'Killjoy'),
    -- Initiator
    (20000044, 17, 2, 17, 19, 8, 240, 1, 2, 'Skye'),
    -- Initiator, Controller

    -- Game 44 stats
    -- Team 7
    (20000030, 18, 1, 16, 18, 8, 240, 2, 2, 'Omen'),
    -- Controller
    (20000031, 18, 1, 21, 16, 9, 270, 4, 3, 'Sage'),
    -- Sentinel
    (20000032, 18, 1, 17, 17, 7, 230, 1, 1, 'Sova'),
    -- Initiator, Duelist
    (20000033, 18, 1, 19, 18, 8, 250, 3, 3, 'Breach'),
    -- Initiator, Controller
    (20000034, 18, 1, 20, 19, 7, 260, 2, 3, 'Jett'),
    -- Duelist

    -- Team 9
    (20000040, 18, 1, 18, 15, 8, 260, 5, 4, 'Brimstone'),
    -- Controller
    (20000041, 18, 1, 22, 14, 10, 280, 6, 4, 'Reyna'),
    -- Duelist
    (20000042, 18, 1, 19, 17, 9, 250, 3, 3, 'Fade'),
    -- Duelist, Initiator
    (20000043, 18, 1, 15, 19, 6, 220, 1, 1, 'Killjoy'),
    -- Sentinel
    (20000044, 18, 1, 18, 20, 8, 230, 1, 2, 'Skye'),
    -- Initiator, Controller

    -- Game 45 stats
    -- Team 7
    (20000030, 18, 2, 15, 16, 7, 230, 1, 2, 'Omen'),
    -- Controller
    (20000031, 18, 2, 20, 15, 8, 270, 4, 3, 'Sage'),
    -- Sentinel
    (20000032, 18, 2, 16, 18, 6, 220, 1, 1, 'Sova'),
    -- Initiator, Duelist
    (20000033, 18, 2, 18, 17, 7, 240, 2, 3, 'Breach'),
    -- Initiator, Controller
    (20000034, 18, 2, 19, 20, 7, 250, 2, 3, 'Jett'),
    -- Duelist

    -- Team 9
    (20000040, 18, 2, 17, 14, 8, 250, 5, 4, 'Brimstone'),
    -- Controller
    (20000041, 18, 2, 21, 13, 10, 280, 1, 4, 'Reyna'),
    -- Duelist
    (20000042, 18, 2, 18, 16, 9, 260, 3, 3, 'Fade'),
    -- Duelist, Initiator
    (20000043, 18, 2, 14, 18, 6, 220, 1, 1, 'Killjoy'),
    -- Initiator
    (20000044, 18, 2, 17, 19, 8, 240, 1, 2, 'Skye');
-- Initiator, Controller



INSERT INTO VALO_LOGIN
    (username, passwordhash, role)
VALUES
    ('Admin', '3102859ebaa2353c02b91c7783b32ef43820318a7d547e049ae2356d2728ab2b', 'Admin'),
    ('User', '36515a322efde414a1991048da44bc65623c8e1c31f8c30c652aeee05428c237', 'User');
