-- ----------------------------
--  Table structure for AllstarFull
-- ----------------------------
DROP TABLE IF EXISTS "AllstarFull";
CREATE TABLE "AllstarFull" (
	"playerID" text NOT NULL,
	"yearID" integer NOT NULL,
	"gameNum" integer NOT NULL,
	"gameID" text,
	"teamID" text,
	"lgID" text,
	"GP" integer,
	"startingPos" integer,
	PRIMARY KEY ("playerID", "yearID", "gameNum")
) WITHOUT ROWID;

-- ----------------------------
--  Table structure for Appearances
-- ----------------------------
DROP TABLE IF EXISTS "Appearances";
CREATE TABLE "Appearances" (
	"yearID" integer NOT NULL,
	"teamID" text NOT NULL,
	"lgID" text,
	"playerID" text NOT NULL,
	"G_all" integer,
	"GS" integer,
	"G_batting" integer,
	"G_defense" integer,
	"G_p" integer,
	"G_c" integer,
	"G_1b" integer,
	"G_2b" integer,
	"G_3b" integer,
	"G_ss" integer,
	"G_lf" integer,
	"G_cf" integer,
	"G_rf" integer,
	"G_of" integer,
	"G_dh" integer,
	"G_ph" integer,
	"G_pr" integer,
	PRIMARY KEY ("yearID", "teamID", "playerID")
) WITHOUT ROWID;

-- ----------------------------
--  Table structure for AwardsManagers
-- ----------------------------
DROP TABLE IF EXISTS "AwardsManagers";
CREATE TABLE "AwardsManagers" (
	"playerID" text NOT NULL,
	"awardID" text NOT NULL,
	"yearID" integer NOT NULL,
	"lgID" text NOT NULL,
	"tie" text,
	"notes" text,
	PRIMARY KEY ("yearID", "awardID", "lgID", "playerID")
) WITHOUT ROWID;

-- ----------------------------
--  Table structure for AwardsPlayers
-- ----------------------------
DROP TABLE IF EXISTS "AwardsPlayers";
CREATE TABLE "AwardsPlayers" (
	"playerID" text NOT NULL,
	"awardID" text NOT NULL,
	"yearID" integer NOT NULL,
	"lgID" text NOT NULL,
	"tie" text,
	"notes" text,
	PRIMARY KEY ("yearID", "awardID", "lgID", "playerID")
) WITHOUT ROWID;

-- ----------------------------
--  Table structure for AwardsShareManagers
-- ----------------------------
DROP TABLE IF EXISTS "AwardsShareManagers";
CREATE TABLE "AwardsShareManagers" (
	"awardID" text NOT NULL,
	"yearID" integer NOT NULL,
	"lgID" text NOT NULL,
	"playerID" text NOT NULL,
	"pointegersWon" integer,
	"pointegersMax" integer,
	"votesFirst" integer,
	PRIMARY KEY ("awardID", "yearID", "lgID", "playerID")
) WITHOUT ROWID;

-- ----------------------------
--  Table structure for AwardsSharePlayers
-- ----------------------------
DROP TABLE IF EXISTS "AwardsSharePlayers";
CREATE TABLE "AwardsSharePlayers" (
	"awardID" text NOT NULL,
	"yearID" integer NOT NULL,
	"lgID" text NOT NULL,
	"playerID" text NOT NULL,
	"pointegersWon" real,
	"pointegersMax" integer,
	"votesFirst" real,
	PRIMARY KEY ("awardID", "yearID", "lgID", "playerID")
) WITHOUT ROWID;

-- ----------------------------
--  Table structure for Batting
-- ----------------------------
DROP TABLE IF EXISTS "Batting";
CREATE TABLE "Batting" (
	"playerID" text NOT NULL,
	"yearID" integer NOT NULL,
	"stint" integer NOT NULL,
	"teamID" text,
	"lgID" text,
	"G" integer,
	"AB" integer,
	"R" integer,
	"H" integer,
	"2B" integer,
	"3B" integer,
	"HR" integer,
	"RBI" integer,
	"SB" integer,
	"CS" integer,
	"BB" integer,
	"SO" integer,
	"IBB" integer,
	"HBP" integer,
	"SH" integer,
	"SF" integer,
	"GIDP" integer,
	PRIMARY KEY ("playerID", "yearID", "stint")
) WITHOUT ROWID;

-- ----------------------------
--  Table structure for BattingPost
-- ----------------------------
DROP TABLE IF EXISTS "BattingPost";
CREATE TABLE "BattingPost" (
	"yearID" integer NOT NULL,
	"round" text NOT NULL,
	"playerID" text NOT NULL,
	"teamID" text,
	"lgID" text,
	"G" integer,
	"AB" integer,
	"R" integer,
	"H" integer,
	"2B" integer,
	"3B" integer,
	"HR" integer,
	"RBI" integer,
	"SB" integer,
	"CS" integer,
	"BB" integer,
	"SO" integer,
	"IBB" integer,
	"HBP" integer,
	"SH" integer,
	"SF" integer,
	"GIDP" integer,
	PRIMARY KEY ("yearID", "round", "playerID")
) WITHOUT ROWID;

-- ----------------------------
--  Table structure for CollegePlaying
-- ----------------------------
DROP TABLE IF EXISTS "CollegePlaying";
CREATE TABLE "CollegePlaying" (
	"playerID" text,
	"schoolID" text,
	"yearID" integer,
	PRIMARY KEY ("playerID", "schoolID", "yearID")
) WITHOUT ROWID;

-- ----------------------------
--  Table structure for Fielding
-- ----------------------------
DROP TABLE IF EXISTS "Fielding";
CREATE TABLE "Fielding" (
	"playerID" text NOT NULL,
	"yearID" integer NOT NULL,
	"stint" integer NOT NULL,
	"teamID" text,
	"lgID" text,
	"POS" text NOT NULL,
	"G" integer,
	"GS" integer,
	"InnOuts" integer,
	"PO" integer,
	"A" integer,
	"E" integer,
	"DP" integer,
	"PB" integer,
	"WP" integer,
	"SB" integer,
	"CS" integer,
	"ZR" real,
	PRIMARY KEY ("playerID", "yearID", "stint", "POS")
) WITHOUT ROWID;

-- ----------------------------
--  Table structure for FieldingOF
-- ----------------------------
DROP TABLE IF EXISTS "FieldingOF";
CREATE TABLE "FieldingOF" (
	"playerID" text NOT NULL,
	"yearID" integer NOT NULL,
	"stint" integer NOT NULL,
	"Glf" integer,
	"Gcf" integer,
	"Grf" integer,
	PRIMARY KEY ("playerID", "yearID", "stint")
) WITHOUT ROWID;

-- ----------------------------
--  Table structure for FieldingPost
-- ----------------------------
DROP TABLE IF EXISTS "FieldingPost";
CREATE TABLE "FieldingPost" (
	"playerID" text NOT NULL,
	"yearID" integer NOT NULL,
	"teamID" text,
	"lgID" text,
	"round" text NOT NULL,
	"POS" text NOT NULL,
	"G" integer,
	"GS" integer,
	"InnOuts" integer,
	"PO" integer,
	"A" integer,
	"E" integer,
	"DP" integer,
	"TP" integer,
	"PB" integer,
	"SB" integer,
	"CS" integer,
	PRIMARY KEY ("playerID", "yearID", "round", "POS")
) WITHOUT ROWID;

-- ----------------------------
--  Table structure for HallOfFame
-- ----------------------------
DROP TABLE IF EXISTS "HallOfFame";
CREATE TABLE "HallOfFame" (
	"playerID" text NOT NULL,
	"yearid" integer NOT NULL,
	"votedBy" text NOT NULL,
	"ballots" integer,
	"needed" integer,
	"votes" integer,
	"inducted" text,
	"category" text,
	"needed_note" text,
	PRIMARY KEY ("playerID", "yearid", "votedBy")
) WITHOUT ROWID;

-- ----------------------------
--  Table structure for HomeGames
-- ----------------------------
DROP TABLE IF EXISTS "HomeGames";
CREATE TABLE "HomeGames" (
	"year.key" text NOT NULL,
	"league.key" integer NOT NULL,
	"team.key" text NOT NULL,
	"park.key" integer,
	"span.first" integer,
	"span.last" integer,
	"games" integer,
	"openings" integer,
	"attendance" integer,
	PRIMARY KEY ("year.key", "team.key", "park.key")
) WITHOUT ROWID;

-- ----------------------------
--  Table structure for Managers
-- ----------------------------
DROP TABLE IF EXISTS "Managers";
CREATE TABLE "Managers" (
	"playerID" text,
	"yearID" integer NOT NULL,
	"teamID" text NOT NULL,
	"lgID" text,
	"inseason" integer NOT NULL,
	"G" integer,
	"W" integer,
	"L" integer,
	"rank" integer,
	"plyrMgr" text,
	PRIMARY KEY ("yearID", "teamID", "inseason")
) WITHOUT ROWID;

-- ----------------------------
--  Table structure for ManagersHalf
-- ----------------------------
DROP TABLE IF EXISTS "ManagersHalf";
CREATE TABLE "ManagersHalf" (
	"playerID" text NOT NULL,
	"yearID" integer NOT NULL,
	"teamID" text NOT NULL,
	"lgID" text,
	"inseason" integer,
	"half" integer NOT NULL,
	"G" integer,
	"W" integer,
	"L" integer,
	"rank" integer,
	PRIMARY KEY ("yearID", "teamID", "playerID", "half")
) WITHOUT ROWID;

-- ----------------------------
--  Table structure for Master
-- ----------------------------
DROP TABLE IF EXISTS "Master";
CREATE TABLE "Master" (
	"playerID" text NOT NULL,
	"birthYear" integer,
	"birthMonth" integer,
	"birthDay" integer,
	"birthCountry" text,
	"birthState" text,
	"birthCity" text,
	"deathYear" integer,
	"deathMonth" integer,
	"deathDay" integer,
	"deathCountry" text,
	"deathState" text,
	"deathCity" text,
	"nameFirst" text,
	"nameLast" text,
	"nameGiven" text,
	"weight" integer,
	"height" real,
	"bats" text,
	"throws" text,
	"debut" timestamp NULL,
	"finalGame" timestamp NULL,
	"retroID" text,
	"bbrefID" text,
	PRIMARY KEY ("playerID")
) WITHOUT ROWID;

-- ----------------------------
--  Table structure for Parks
-- ----------------------------
DROP TABLE IF EXISTS "Parks";
CREATE TABLE "Parks" (
	"park.key" text,
	"park.name" text,
	"park.alias" text,
	"city" text,
	"state" text,
	"country" text,
	PRIMARY KEY ("park.key")
) WITHOUT ROWID;

-- ----------------------------
--  Table structure for Pitching
-- ----------------------------
DROP TABLE IF EXISTS "Pitching";
CREATE TABLE "Pitching" (
	"playerID" text NOT NULL,
	"yearID" integer NOT NULL,
	"stint" integer NOT NULL,
	"teamID" text,
	"lgID" text,
	"W" integer,
	"L" integer,
	"G" integer,
	"GS" integer,
	"CG" integer,
	"SHO" integer,
	"SV" integer,
	"IPouts" integer,
	"H" integer,
	"ER" integer,
	"HR" integer,
	"BB" integer,
	"SO" integer,
	"BAOpp" real,
	"ERA" real,
	"IBB" integer,
	"WP" integer,
	"HBP" integer,
	"BK" integer,
	"BFP" integer,
	"GF" integer,
	"R" integer,
	"SH" integer,
	"SF" integer,
	"GIDP" integer,
	PRIMARY KEY ("playerID", "yearID", "stint")
) WITHOUT ROWID;

-- ----------------------------
--  Table structure for PitchingPost
-- ----------------------------
DROP TABLE IF EXISTS "PitchingPost";
CREATE TABLE "PitchingPost" (
	"playerID" text NOT NULL,
	"yearID" integer NOT NULL,
	"round" text NOT NULL,
	"teamID" text,
	"lgID" text,
	"W" integer,
	"L" integer,
	"G" integer,
	"GS" integer,
	"CG" integer,
	"SHO" integer,
	"SV" integer,
	"IPouts" integer,
	"H" integer,
	"ER" integer,
	"HR" integer,
	"BB" integer,
	"SO" integer,
	"BAOpp" real,
	"ERA" real,
	"IBB" integer,
	"WP" integer,
	"HBP" integer,
	"BK" integer,
	"BFP" integer,
	"GF" integer,
	"R" integer,
	"SH" integer,
	"SF" integer,
	"GIDP" integer,
	PRIMARY KEY ("playerID", "yearID", "round")
) WITHOUT ROWID;

-- ----------------------------
--  Table structure for Salaries
-- ----------------------------
DROP TABLE IF EXISTS "Salaries";
CREATE TABLE "Salaries" (
	"yearID" integer NOT NULL,
	"teamID" text NOT NULL,
	"lgID" text NOT NULL,
	"playerID" text NOT NULL,
	"salary" real,
	PRIMARY KEY ("yearID", "teamID", "lgID", "playerID")
) WITHOUT ROWID;

-- ----------------------------
--  Table structure for Schools
-- ----------------------------
DROP TABLE IF EXISTS "Schools";
CREATE TABLE "Schools" (
	"schoolID" text NOT NULL,
	"name_full" text,
	"city" text,
	"state" text,
	"country" text,
	PRIMARY KEY ("schoolID")
) WITHOUT ROWID;

-- ----------------------------
--  Table structure for SeriesPost
-- ----------------------------
DROP TABLE IF EXISTS "SeriesPost";
CREATE TABLE "SeriesPost" (
	"yearID" integer NOT NULL,
	"round" text NOT NULL,
	"teamIDwinner" text,
	"lgIDwinner" text,
	"teamIDloser" text,
	"lgIDloser" text,
	"wins" integer,
	"losses" integer,
	"ties" integer,
	PRIMARY KEY ("yearID", "round")
) WITHOUT ROWID;

-- ----------------------------
--  Table structure for Teams
-- ----------------------------
DROP TABLE IF EXISTS "Teams";
CREATE TABLE "Teams" (
	"yearID" integer NOT NULL,
	"lgID" text NOT NULL,
	"teamID" text NOT NULL,
	"franchID" text,
	"divID" text,
	"Rank" integer,
	"G" integer,
	"Ghome" integer,
	"W" integer,
	"L" integer,
	"DivWin" text,
	"WCWin" text,
	"LgWin" text,
	"WSWin" text,
	"R" integer,
	"AB" integer,
	"H" integer,
	"2B" integer,
	"3B" integer,
	"HR" integer,
	"BB" integer,
	"SO" integer,
	"SB" integer,
	"CS" integer,
	"HBP" integer,
	"SF" integer,
	"RA" integer,
	"ER" integer,
	"ERA" real,
	"CG" integer,
	"SHO" integer,
	"SV" integer,
	"IPouts" integer,
	"HA" integer,
	"HRA" integer,
	"BBA" integer,
	"SOA" integer,
	"E" integer,
	"DP" integer,
	"FP" real,
	"name" text,
	"park" text,
	"attendance" integer,
	"BPF" integer,
	"PPF" integer,
	"teamIDBR" text,
	"teamIDlahman45" text,
	"teamIDretro" text,
	PRIMARY KEY ("yearID", "lgID", "teamID")
) WITHOUT ROWID;

-- ----------------------------
--  Table structure for TeamsFranchises
-- ----------------------------
DROP TABLE IF EXISTS "TeamsFranchises";
CREATE TABLE "TeamsFranchises" (
	"franchID" text NOT NULL,
	"franchName" text,
	"active" text,
	"NAassoc" text,
	PRIMARY KEY ("franchID")
) WITHOUT ROWID;

-- ----------------------------
--  Table structure for TeamsHalf
-- ----------------------------
DROP TABLE IF EXISTS "TeamsHalf";
CREATE TABLE "TeamsHalf" (
	"yearID" integer NOT NULL,
	"lgID" text NOT NULL,
	"teamID" text NOT NULL,
	"Half" text NOT NULL,
	"divID" text,
	"DivWin" text,
	"Rank" integer,
	"G" integer,
	"W" integer,
	"L" integer,
	PRIMARY KEY ("yearID", "teamID", "lgID", "Half")
) WITHOUT ROWID;