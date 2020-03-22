-- To run, connect to psql command line and type- \i Desktop/medium_tutorials/db_scripts/create_tables.sql
--gl_player
DROP TABLE IF EXISTS gl_player;

CREATE TABLE IF NOT EXISTS gl_player(
	game_id	TEXT,
	team_id	TEXT,
	team_abbr TEXT,	
	team_city TEXT,	
	nba_id TEXT,	
	player_name	TEXT,
	start_position TEXT,
	comment	TEXT,
	mins	TEXT,
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
	ast	NUMERIC,
	stl	NUMERIC,
	blk	NUMERIC,
	tov NUMERIC,
	pf NUMERIC,
	pts	NUMERIC,
	plus_minus NUMERIC
);
COPY gl_player FROM '/Users/Dan/Desktop/medium_tutorials/base_data/db_init_data/gl_player_init.csv' DELIMITER ','  CSV HEADER;

--gl_other
DROP TABLE IF EXISTS gl_other;

CREATE TABLE IF NOT EXISTS gl_other(
	league_id TEXT,
	team_id TEXT,
	team_abbr TEXT,
	team_city TEXT,
	pts_paint NUMERIC,
	pts_2nd_chance NUMERIC, 
	pts_fb NUMERIC,
	largest_lead NUMERIC,
	lead_changes NUMERIC,
	times_tied NUMERIC,
	team_tov NUMERIC,
	tot_tov NUMERIC,
	team_reb NUMERIC,
	pts_off_tov NUMERIC
);
COPY gl_other FROM '/Users/Dan/Desktop/medium_tutorials/base_data/db_init_data/gl_other_init.csv' DELIMITER ','  CSV HEADER;

--gl_player_advanced
DROP TABLE IF EXISTS gl_player_adv;

CREATE TABLE IF NOT EXISTS gl_player_adv(
	game_id	TEXT,
	team_id TEXT,
	team_abbr TEXT,
	team_city TEXT,
	nba_id TEXT,
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
	pie NUMERIC
);
COPY gl_player_adv FROM '/Users/Dan/Desktop/medium_tutorials/base_data/db_init_data/gl_player_adv_init.csv' DELIMITER ','  CSV HEADER;

--gl_player_fourfactors
DROP TABLE IF EXISTS gl_player_ff;

CREATE TABLE IF NOT EXISTS gl_player_ff(
	game_id	TEXT,
	team_id	TEXT,
	team_abbr TEXT,	
	team_city TEXT,
	nba_id TEXT,
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
	opp_oreb_pct NUMERIC
);
COPY gl_player_ff FROM '/Users/Dan/Desktop/medium_tutorials/base_data/db_init_data/gl_player_ff_init.csv' DELIMITER ','  CSV HEADER;

--gl_player_misc
DROP TABLE IF EXISTS gl_player_misc;

CREATE TABLE IF NOT EXISTS gl_player_misc(
	game_id	TEXT,
	team_id	TEXT,
	team_abbr TEXT,
	team_city TEXT,	
	nba_id TEXT,
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
	pfd NUMERIC
);
COPY gl_player_misc FROM '/Users/Dan/Desktop/medium_tutorials/base_data/db_init_data/gl_player_misc_init.csv' DELIMITER ',' CSV HEADER;

--gl_player_scoring
DROP TABLE IF EXISTS gl_player_scoring;

CREATE TABLE IF NOT EXISTS gl_player_scoring(
	game_id	TEXT,
	team_id	TEXT,
	team_abbr TEXT,
	team_city TEXT,	
	nba_id TEXT,
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
	pct_uast_fgm NUMERIC
);
COPY gl_player_scoring FROM '/Users/Dan/Desktop/medium_tutorials/base_data/db_init_data/gl_player_scoring_init.csv' DELIMITER ','  CSV HEADER;

--gl_player_usage
DROP TABLE IF EXISTS gl_player_usage;

CREATE TABLE IF NOT EXISTS gl_player_usage(
	game_id	TEXT,
	team_id	TEXT,
	team_abbr TEXT,
	team_city TEXT,	
	nba_id TEXT,
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
	pct_pts NUMERIC
);
COPY gl_player_usage FROM '/Users/Dan/Desktop/medium_tutorials/base_data/db_init_data/gl_player_usage_init.csv' DELIMITER ','  CSV HEADER;

--gl_summary
DROP TABLE IF EXISTS gl_summary;

CREATE TABLE IF NOT EXISTS gl_summary(
	game_date_est TEXT,
	game_sequence NUMERIC,
	game_id	TEXT,
	game_status_id NUMERIC,	
	game_status_text TEXT,	
	gamecode TEXT,	
	home_team_id TEXT,	
	visitor_team_id	TEXT,
	season NUMERIC,	
	live_period NUMERIC,
	live_pc_time TEXT,	
	natl_tv_broadcaster_abbr TEXT,
	live_period_time_bcast TEXT,	
	wh_status NUMERIC
);
COPY gl_summary FROM '/Users/Dan/Desktop/medium_tutorials/base_data/db_init_data/gl_summary_init.csv' DELIMITER ','  CSV HEADER;

--gl_team_advanced
DROP TABLE IF EXISTS gl_team_adv;

CREATE TABLE IF NOT EXISTS gl_team_adv(
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
	pie NUMERIC
);
COPY gl_team_adv FROM '/Users/Dan/Desktop/medium_tutorials/base_data/db_init_data/gl_team_adv_init.csv' DELIMITER ','  CSV HEADER;

--gl_team_fourfactors
DROP TABLE IF EXISTS gl_team_ff;

CREATE TABLE IF NOT EXISTS gl_team_ff(
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
	opp_oreb_pct NUMERIC
);
COPY gl_team_ff FROM '/Users/Dan/Desktop/medium_tutorials/base_data/db_init_data/gl_team_ff_init.csv' DELIMITER ','  CSV HEADER;

--gl_team_misc
DROP TABLE IF EXISTS gl_team_misc;

CREATE TABLE IF NOT EXISTS gl_team_misc(
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
	pfd NUMERIC
);
COPY gl_team_misc FROM '/Users/Dan/Desktop/medium_tutorials/base_data/db_init_data/gl_team_misc_init.csv' DELIMITER ','  CSV HEADER;

--gl_team_scoring
DROP TABLE IF EXISTS gl_team_scoring;

CREATE TABLE IF NOT EXISTS gl_team_scoring(
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
	pct_uast_fgm NUMERIC
);
COPY gl_team_scoring FROM '/Users/Dan/Desktop/medium_tutorials/base_data/db_init_data/gl_team_scoring_init.csv' DELIMITER ','  CSV HEADER;

--gl_team
DROP TABLE IF EXISTS gl_team;

CREATE TABLE IF NOT EXISTS gl_team(
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
	plus_minus NUMERIC
);
COPY gl_team FROM '/Users/Dan/Desktop/medium_tutorials/base_data/db_init_data/gl_team_init.csv' DELIMITER ',' CSV HEADER;





