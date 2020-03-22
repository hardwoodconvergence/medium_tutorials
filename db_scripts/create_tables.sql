-- To run, connect to psql command line and type- \i Desktop/medium_tutorials/db_scripts/create_tables.sql
--player_bs
DROP TABLE IF EXISTS raw.player_bs;
CREATE TABLE IF NOT EXISTS raw.player_bs(
 game_id TEXT,
 team_id TEXT,
 team_abbr TEXT, 
 team_city TEXT, 
 player_id TEXT, 
 player_name TEXT,
 start_position TEXT,
 comment TEXT,
 mins TEXT,
 fgm NUMERIC,
 fga NUMERIC,
 fg_pct NUMERIC,
 fg3m NUMERIC, 
 fg3a NUMERIC, 
 fg3_pct NUMERIC,
 ftm NUMERIC,
 fta NUMERIC,
 ft_pct NUMERIC,
 oreb NUMERIC,
 dreb NUMERIC,
 reb NUMERIC,
 ast NUMERIC,
 stl NUMERIC,
 blk NUMERIC,
 tov NUMERIC,
 pf NUMERIC,
 pts NUMERIC,
 plus_minus NUMERIC,
 file_name TEXT
);
COPY raw.player_bs FROM '/Users/Dan/Desktop/medium_tutorials/base_data/db_init_data/player_bs_trad_init.csv' DELIMITER ','  CSV HEADER;

--player_bs_adv
DROP TABLE IF EXISTS raw.player_bs_adv;

CREATE TABLE IF NOT EXISTS raw.player_bs_adv(
	game_id	TEXT,
	team_id TEXT,
	team_abbr TEXT,
	team_city TEXT,
	player_id TEXT,
	player_name TEXT,
	start_position TEXT,
	comment TEXT,
	mins TEXT,
	e_off_rating NUMERIC,
	off_rating NUMERIC, 
	e_def_rating NUMERIC,
	def_rating NUMERIC,
	e_net_rating NUMERIC,
	net_rating NUMERIC,
	ast_pct NUMERIC,
	ast_tov NUMERIC,
	ast_ratio NUMERIC,
	oreb_pct NUMERIC,
	dreb_pct NUMERIC,
	reb_pct	 NUMERIC,
	tm_tov_pct	NUMERIC,
	efg_pct	NUMERIC,
	ts_pct	NUMERIC,
	usg_pct	NUMERIC,
	e_usg_pct NUMERIC,
	e_pace NUMERIC,
	pace NUMERIC,
	pace_per40 NUMERIC,
	poss NUMERIC,
	pie NUMERIC,
	file_name TEXT
);
COPY raw.player_bs_adv FROM '/Users/Dan/Desktop/medium_tutorials/base_data/db_init_data/player_bs_advanced_init.csv' DELIMITER ','  CSV HEADER;

--player_bs_ff
DROP TABLE IF EXISTS raw.player_bs_ff;

CREATE TABLE IF NOT EXISTS raw.player_bs_ff(
	game_id	TEXT,
	team_id	TEXT,
	team_abbr TEXT,	
	team_city TEXT,
	player_id TEXT,
	player_name	TEXT,
	start_position TEXT,
	comment	TEXT,
	mins	TEXT,
	efg_pct	NUMERIC,
	fta_rate NUMERIC,
	tm_tov_pct NUMERIC,	
	oreb_pct NUMERIC,	
	opp_efg_pct NUMERIC,	
	opp_fta_rate NUMERIC,	
	opp_tov_pct NUMERIC,	
	opp_oreb_pct NUMERIC,
	file_name TEXT
);
COPY raw.player_bs_ff FROM '/Users/Dan/Desktop/medium_tutorials/base_data/db_init_data/player_bs_ff_init.csv' DELIMITER ','  CSV HEADER;

--player_bs_misc
DROP TABLE IF EXISTS raw.player_bs_misc;

CREATE TABLE IF NOT EXISTS raw.player_bs_misc(
	game_id	TEXT,
	team_id	TEXT,
	team_abbr TEXT,
	team_city TEXT,	
	player_id TEXT,
	player_name	TEXT,
	start_position TEXT,
	comment	TEXT,
	mins	TEXT,
	pts_off_tov	NUMERIC,
	pts_2nd_chance NUMERIC,
	pts_fb NUMERIC,
	pts_paint NUMERIC,
	opp_pts_off_tov	NUMERIC,
	opp_pts_2nd_chance	NUMERIC,
	opp_pts_fb NUMERIC,
	opp_pts_paint NUMERIC,
	blk	NUMERIC,
	blka NUMERIC,	
	pf	NUMERIC,
	pfd NUMERIC,
	file_name TEXT
);
COPY raw.player_bs_misc FROM '/Users/Dan/Desktop/medium_tutorials/base_data/db_init_data/player_bs_misc_init.csv' DELIMITER ',' CSV HEADER;

--player_bs_scoring
DROP TABLE IF EXISTS raw.player_bs_scoring;

CREATE TABLE IF NOT EXISTS raw.player_bs_scoring(
	game_id	TEXT,
	team_id	TEXT,
	team_abbr TEXT,
	team_city TEXT,	
	player_id TEXT,
	player_name	TEXT,
	start_position TEXT,
	comment TEXT,
	mins	TEXT,
	pct_fga_2pt	NUMERIC,
	pct_fga_3pt	NUMERIC,
	pct_pts_2pt	NUMERIC,
	pct_pts_2pt_mr NUMERIC,
	pct_pts_3pt	NUMERIC,
	pct_pts_fb NUMERIC,
	pct_pts_ft	NUMERIC,
	pct_pts_off_tov	NUMERIC,
	pct_pts_paint NUMERIC,	
	pct_ast_2pm	NUMERIC,
	pct_uast_2pm NUMERIC,	
	pct_ast_3pm	NUMERIC,
	pct_uast_3pm NUMERIC,	
	pct_ast_fgm	NUMERIC,
	pct_uast_fgm NUMERIC,
	file_name TEXT
);
COPY raw.player_bs_scoring FROM '/Users/Dan/Desktop/medium_tutorials/base_data/db_init_data/player_bs_scoring_init.csv' DELIMITER ','  CSV HEADER;

--player_bs_usage
DROP TABLE IF EXISTS raw.player_bs_usage;

CREATE TABLE IF NOT EXISTS raw.player_bs_usage(
	game_id	TEXT,
	team_id	TEXT,
	team_abbr TEXT,
	team_city TEXT,	
	player_id TEXT,
	player_name	TEXT,
	start_position TEXT,	
	comment	TEXT,
	mins TEXT,	
	usg_pct	NUMERIC,
	pct_fgm	NUMERIC,
	pct_fga	NUMERIC,
	pct_fg3m NUMERIC,	
	pct_fg3a NUMERIC,	
	pct_ftm	NUMERIC,
	pct_fta	NUMERIC,
	pct_oreb NUMERIC,	
	pct_dreb NUMERIC,	
	pct_reb	NUMERIC,
	pct_ast	NUMERIC,
	pct_tov	NUMERIC,
	pct_stl	NUMERIC,
	pct_blk	NUMERIC,
	pct_blka NUMERIC,	
	pct_pf	NUMERIC,
	pct_pfd	NUMERIC,
	pct_pts NUMERIC,
	file_name TEXT
);
COPY raw.player_bs_usage FROM '/Users/Dan/Desktop/medium_tutorials/base_data/db_init_data/player_bs_usage_init.csv' DELIMITER ','  CSV HEADER;

--player_bs_summary
DROP TABLE IF EXISTS raw.player_bs_summ;

CREATE TABLE IF NOT EXISTS raw.player_bs_summ(
	game_date_est text,
	game_sequence text,
	game_id text,
	game_status_id text,
	game_status_text text,
	gamecode text,
	home_team_id text,
	visitor_team_id text,
	season text,
	live_period text,
	live_pc_time text,
	natl_tv_broadcaster_abbreviation text,
	live_period_time_bcast text,
	wh_status text,
	file_name text
);
COPY raw.player_bs_summ FROM '/Users/Dan/Desktop/medium_tutorials/base_data/db_init_data/player_bs_summ_init.csv' DELIMITER ','  CSV HEADER;


--player_bs_pt
DROP TABLE IF EXISTS raw.player_bs_pt;

CREATE TABLE IF NOT EXISTS raw.player_bs_pt(
	game_id TEXT,
	team_id TEXT,
	team_abbreviation TEXT,
	team_city TEXT,
	player_id TEXT,
	player_name TEXT,
	start_position TEXT,
	comment TEXT,
	min TEXT,
	spd NUMERIC,
	dist NUMERIC,
	orbc NUMERIC,
	drbc NUMERIC,
	rbc NUMERIC,
	tchs NUMERIC,
	sast NUMERIC,
	ftast NUMERIC,
	pass NUMERIC,
	ast NUMERIC,
	cfgm NUMERIC,
	cfga NUMERIC,
	cfg_pct NUMERIC,
	ufgm NUMERIC,
	ufga NUMERIC,
	ufg_pct NUMERIC,
	fg_pct NUMERIC,
	dfgm NUMERIC,
	dfga NUMERIC,
	dfg_pct NUMERIC,
	file_name TEXT
);
COPY raw.player_bs_pt FROM '/Users/Dan/Desktop/medium_tutorials/base_data/db_init_data/player_bs_pt_init.csv' DELIMITER ','  CSV HEADER;

--team_bs_advanced
DROP TABLE IF EXISTS raw.team_bs_adv;

CREATE TABLE IF NOT EXISTS raw.team_bs_adv(
	game_id	TEXT,
	team_id	TEXT,
	team_name TEXT,	
	team_abbr TEXT,	
	team_city TEXT,	
	mins	TEXT,
	e_off_rating NUMERIC,	
	off_rating NUMERIC,	
	e_def_rating NUMERIC,	
	def_rating NUMERIC,	
	e_net_rating NUMERIC,	
	net_rating NUMERIC,	
	ast_pct	NUMERIC,
	ast_tov	NUMERIC,
	ast_ratio NUMERIC,	
	oreb_pct NUMERIC,	
	dreb_pct NUMERIC,	
	reb_pct NUMERIC,	
	e_tm_tov_pct NUMERIC,	
	tm_tov_pct NUMERIC,	
	efg_pct	NUMERIC,
	ts_pct NUMERIC,	
	usg_pct NUMERIC,	
	e_usg_pct NUMERIC,	
	e_pace NUMERIC,	
	pace NUMERIC,
	pace_per40 NUMERIC,
	POSS NUMERIC,	
	pie NUMERIC,
	file_name TEXT
);
COPY raw.team_bs_adv FROM '/Users/Dan/Desktop/medium_tutorials/base_data/db_init_data/team_bs_advanced_init.csv' DELIMITER ','  CSV HEADER;

--team_bs_fourfactors
DROP TABLE IF EXISTS raw.team_bs_ff;

CREATE TABLE IF NOT EXISTS raw.team_bs_ff(
	game_id	TEXT,
	team_id	TEXT,
	team_name TEXT,
	team_abbr TEXT,	
	team_city TEXT,	
	mins	TEXT,
	efg_pct	NUMERIC,
	fta_rate NUMERIC,	
	tm_tov_pct NUMERIC,	
	oreb_pct NUMERIC,	
	opp_efg_pct NUMERIC,	
	opp_fta_rate NUMERIC,	
	opp_tov_pct NUMERIC,	
	opp_oreb_pct NUMERIC,
	file_name TEXT
);
COPY raw.team_bs_ff FROM '/Users/Dan/Desktop/medium_tutorials/base_data/db_init_data/team_bs_ff_init.csv' DELIMITER ','  CSV HEADER;

--team_bs_misc
DROP TABLE IF EXISTS raw.team_bs_misc;

CREATE TABLE IF NOT EXISTS raw.team_bs_misc(
	game_id	TEXT,
	team_id	TEXT,
	team_name TEXT,
	team_abbr TEXT,	
	team_city TEXT,	
	mins	TEXT,
	pts_off_tov NUMERIC,	
	pts_2nd_chance NUMERIC,
	pts_fb NUMERIC,	
	pts_paint NUMERIC,	
	opp_pts_off_tov	NUMERIC,
	opp_pts_2nd_chance NUMERIC,	
	opp_pts_fb NUMERIC,	
	opp_pts_paint NUMERIC,	
	blk NUMERIC,	
	blka NUMERIC,	
	pf NUMERIC,	
	pfd NUMERIC,
	file_name TEXT
);
COPY raw.team_bs_misc FROM '/Users/Dan/Desktop/medium_tutorials/base_data/db_init_data/team_bs_misc_init.csv' DELIMITER ','  CSV HEADER;

--team_bs_scoring
DROP TABLE IF EXISTS raw.team_bs_scoring;

CREATE TABLE IF NOT EXISTS raw.team_bs_scoring(
	game_id	TEXT,
	team_id	TEXT,
	team_name TEXT,	
	team_abbr TEXT,	
	team_city TEXT,	
	mins TEXT,
	pct_fga_2pt NUMERIC,	
	pct_fga_3pt	NUMERIC,
	pct_pts_2pt	NUMERIC,
	pct_pts_2pt_mr NUMERIC,	
	pct_pts_3pt	NUMERIC,
	pct_pts_fb	NUMERIC,
	pct_pts_ft	NUMERIC,
	pct_pts_off_tov	NUMERIC,
	pct_pts_paint NUMERIC,	
	pct_ast_2pm	NUMERIC,
	pct_uast_2pm NUMERIC,	
	pct_ast_3pm	NUMERIC,
	pct_uast_3pm NUMERIC,	
	pct_ast_fgm	NUMERIC,
	pct_uast_fgm NUMERIC,
	file_name TEXT
);
COPY raw.team_bs_scoring FROM '/Users/Dan/Desktop/medium_tutorials/base_data/db_init_data/team_bs_scoring_init.csv' DELIMITER ','  CSV HEADER;

--team_bs
DROP TABLE IF EXISTS raw.team_bs;

CREATE TABLE IF NOT EXISTS raw.team_bs(
	game_id	TEXT,
	team_id	TEXT,
	team_name TEXT,	
	team_abbr TEXT,	
	team_city TEXT,	
	mins TEXT,
	fgm	NUMERIC,
	fga	NUMERIC,
	fg_pct NUMERIC,	
	fg3m NUMERIC,	
	fg3a NUMERIC,	
	fg3_pct	NUMERIC,
	ftm	NUMERIC,
	fta	NUMERIC,
	ft_pct NUMERIC,	
	oreb NUMERIC,
	dreb NUMERIC,	
	reb	NUMERIC,
	ast NUMERIC,	
	stl	NUMERIC,
	blk	NUMERIC,
	tov NUMERIC,
	pf NUMERIC,
	pts	NUMERIC,
	plus_minus NUMERIC,
	file_name TEXT
);
COPY raw.team_bs FROM '/Users/Dan/Desktop/medium_tutorials/base_data/db_init_data/team_bs_trad_init.csv' DELIMITER ',' CSV HEADER;

--team_bs_pt
DROP TABLE IF EXISTS raw.team_bs_pt;

CREATE TABLE IF NOT EXISTS raw.team_bs_pt(
		game_id TEXT,
		team_id TEXT,
		team_name TEXT,
		team_abbr TEXT,
		team_city TEXT,
		min TEXT,
		dist NUMERIC,
		orbc NUMERIC,
		drbc NUMERIC,
		rbc NUMERIC,
		tchs NUMERIC,
		sast NUMERIC,
		ftast NUMERIC,
		pass NUMERIC,
		ast NUMERIC,
		cfgm NUMERIC,
		cfga NUMERIC,
		cfg_pct NUMERIC,
		ufgm NUMERIC,
		ufga NUMERIC,
		ufg_pct NUMERIC,
		fg_pct NUMERIC,
		dfgm NUMERIC,
		dfga NUMERIC,
		dfg_pct NUMERIC,
		file_name TEXT

);
COPY raw.team_bs_pt FROM '/Users/Dan/Desktop/medium_tutorials/base_data/db_init_data/team_bs_pt_init.csv' DELIMITER ',' CSV HEADER;



