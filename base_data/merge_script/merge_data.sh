#gl_player
head -1 /Users/Dan/Desktop/medium_tutorials/base_data/gl_player/gl_player_0021200001.csv > /Users/Dan/Desktop/medium_tutorials/base_data/db_init_data/gl_player_init.csv
for file in /Users/Dan/Desktop/medium_tutorials/base_data/gl_player/*.csv;
 do sed 1d $file >> /Users/Dan/Desktop/medium_tutorials/base_data/db_init_data/gl_player_init.csv;
done

#gl_player_scoring
head -1 /Users/Dan/Desktop/medium_tutorials/base_data/gl_player_scoring/gl_player_scoring_0021200001.csv > /Users/Dan/Desktop/medium_tutorials/base_data/db_init_data/gl_player_scoring_init.csv
for file in /Users/Dan/Desktop/medium_tutorials/base_data/gl_player_scoring/*.csv;
 do sed 1d $file >> /Users/Dan/Desktop/medium_tutorials/base_data/db_init_data/gl_player_scoring_init.csv;
done

#gl_player_ff
head -1 /Users/Dan/Desktop/medium_tutorials/base_data/gl_player_ff/gl_player_ff_0021200001.csv > /Users/Dan/Desktop/medium_tutorials/base_data/db_init_data/gl_player_ff_init.csv
for file in /Users/Dan/Desktop/medium_tutorials/base_data/gl_player_ff/*.csv;
 do sed 1d $file >> /Users/Dan/Desktop/medium_tutorials/base_data/db_init_data/gl_player_ff_init.csv;
done

#gl_player_misc
head -1 /Users/Dan/Desktop/medium_tutorials/base_data/gl_player_misc/gl_player_misc_0021200001.csv > /Users/Dan/Desktop/medium_tutorials/base_data/db_init_data/gl_player_misc_init.csv
for file in /Users/Dan/Desktop/medium_tutorials/base_data/gl_player_misc/*.csv;
 do sed 1d $file >> /Users/Dan/Desktop/medium_tutorials/base_data/db_init_data/gl_player_misc_init.csv;
done

#gl_player_adv
head -1 /Users/Dan/Desktop/medium_tutorials/base_data/gl_player_adv/gl_player_adv_0021200001.csv > /Users/Dan/Desktop/medium_tutorials/base_data/db_init_data/gl_player_adv_init.csv
for file in /Users/Dan/Desktop/medium_tutorials/base_data/gl_player_adv/*.csv;
 do sed 1d $file >> /Users/Dan/Desktop/medium_tutorials/base_data/db_init_data/gl_player_adv_init.csv;
done

#gl_player_usage
head -1 /Users/Dan/Desktop/medium_tutorials/base_data/gl_player_usage/gl_player_usage_0021200001.csv > /Users/Dan/Desktop/medium_tutorials/base_data/db_init_data/gl_player_usage_init.csv
for file in /Users/Dan/Desktop/medium_tutorials/base_data/gl_player_usage/*.csv;
 do sed 1d $file >> /Users/Dan/Desktop/medium_tutorials/base_data/db_init_data/gl_player_usage_init.csv;
done

#gl_team
head -1 /Users/Dan/Desktop/medium_tutorials/base_data/gl_team/gl_team_0021200001.csv > /Users/Dan/Desktop/medium_tutorials/base_data/db_init_data/gl_team_init.csv
for file in /Users/Dan/Desktop/medium_tutorials/base_data/gl_team/*.csv;
 do sed 1d $file >> /Users/Dan/Desktop/medium_tutorials/base_data/db_init_data/gl_team_init.csv;
done

#gl_team_scoring
head -1 /Users/Dan/Desktop/medium_tutorials/base_data/gl_team_scoring/gl_team_scoring_0021200001.csv > /Users/Dan/Desktop/medium_tutorials/base_data/db_init_data/gl_team_scoring_init.csv
for file in /Users/Dan/Desktop/medium_tutorials/base_data/gl_team_scoring/*.csv;
 do sed 1d $file >> /Users/Dan/Desktop/medium_tutorials/base_data/db_init_data/gl_team_scoring_init.csv;
done

#gl_team_ff
head -1 /Users/Dan/Desktop/medium_tutorials/base_data/gl_team_ff/gl_team_ff_0021200001.csv > /Users/Dan/Desktop/medium_tutorials/base_data/db_init_data/gl_team_ff_init.csv
for file in /Users/Dan/Desktop/medium_tutorials/base_data/gl_team_ff/*.csv;
 do sed 1d $file >> /Users/Dan/Desktop/medium_tutorials/base_data/db_init_data/gl_team_ff_init.csv;
done

#gl_team_misc
head -1 /Users/Dan/Desktop/medium_tutorials/base_data/gl_team_misc/gl_team_ff_0021200001.csv > /Users/Dan/Desktop/medium_tutorials/base_data/db_init_data/gl_team_misc_init.csv
for file in /Users/Dan/Desktop/medium_tutorials/base_data/gl_team_misc/*.csv;
 do sed 1d $file >> /Users/Dan/Desktop/medium_tutorials/base_data/db_init_data/gl_team_misc_init.csv;
done

#gl_team_adv
head -1 /Users/Dan/Desktop/medium_tutorials/base_data/gl_team_adv/gl_team_adv_0021200001.csv > /Users/Dan/Desktop/medium_tutorials/base_data/db_init_data/gl_team_adv_init.csv
for file in /Users/Dan/Desktop/medium_tutorials/base_data/gl_team_adv/*.csv;
 do sed 1d $file >> /Users/Dan/Desktop/medium_tutorials/base_data/db_init_data/gl_team_adv_init.csv;
done

#gl_team_usage
head -1 /Users/Dan/Desktop/medium_tutorials/base_data/gl_team_usage/gl_team_usage_0021200001.csv > /Users/Dan/Desktop/medium_tutorials/base_data/db_init_data/gl_team_usage_init.csv
for file in /Users/Dan/Desktop/medium_tutorials/base_data/gl_team_usage/*.csv;
 do sed 1d $file >> /Users/Dan/Desktop/medium_tutorials/base_data/db_init_data/gl_team_usage_init.csv;
done

#gl_other
head -1 /Users/Dan/Desktop/medium_tutorials/base_data/gl_other/gl_other_0021200001.csv > /Users/Dan/Desktop/medium_tutorials/base_data/db_init_data/gl_other_init.csv
for file in /Users/Dan/Desktop/medium_tutorials/base_data/gl_other/*.csv;
 do sed 1d $file >> /Users/Dan/Desktop/medium_tutorials/base_data/db_init_data/gl_other_init.csv;
done

#gl_summary
head -1 /Users/Dan/Desktop/medium_tutorials/base_data/gl_summary/gl_summary_0021200001.csv > /Users/Dan/Desktop/medium_tutorials/base_data/db_init_data/gl_summary_init.csv
for file in /Users/Dan/Desktop/medium_tutorials/base_data/gl_summary/*.csv;
 do sed 1d $file >> /Users/Dan/Desktop/medium_tutorials/base_data/db_init_data/gl_summary_init.csv;
done
