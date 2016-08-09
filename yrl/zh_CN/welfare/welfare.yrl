
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 自动生成 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%------------------------注释-----------------------------------------
%%	福利基础数据表
%%---------------------------------------------------------------------
%%{rec_<<"welfare">>, <<"福利ID">>, <<"后续福利ID">>, <<"福利名称">>, <<"冷却时间">>, <<"重置条件">>, <<"福利类型">>, <<"福利类型要求条件">>, <<"匹配条件">>, <<"活动生效时间">>, <<"活动失效时间">>, <<"经验">>, <<"功勋">>, <<"游戏币">>, <<"邦定元宝">>, <<"物品">>, <<"历练">>, <<"体力">>}.
%%{rec_<<"welfare">>, <<"id">>, <<"next">>, <<"name">>, <<"cd">>, <<"reset">>, <<"type">>, <<"requirement">>, <<"is_when">>, <<"activity_start">>, <<"activity_end">>, <<"exp">>, <<"meritorious">>, <<"gold">>, <<"cash_bind">>, <<"goods">>, <<"experience">>, <<"sp">>}.
{rec_welfare, 10001, 10002, <<"连续在线礼包">>, 60, 0, 1, {upper,1}, 1, [{1970,1,1,8,0,0}], [{9999,12,31,23,59,59}], 0, 0, 0, 20, [], 0, 0}.
{rec_welfare, 10002, 10003, <<"连续在线礼包">>, 180, 0, 1, {upper,3}, 1, [{1970,1,1,8,0,0}], [{9999,12,31,23,59,59}], 0, 0, 10000, 0, [], 0, 0}.
{rec_welfare, 10003, 10004, <<"连续在线礼包">>, 300, 0, 1, {upper,5}, 1, [{1970,1,1,8,0,0}], [{9999,12,31,23,59,59}], 0, 0, 20000, 0, [], 0, 0}.
{rec_welfare, 10004, 10005, <<"连续在线礼包">>, 600, 0, 1, {upper,10}, 1, [{1970,1,1,8,0,0}], [{9999,12,31,23,59,59}], 0, 0, 20000, 0, [], 0, 0}.
{rec_welfare, 10005, 10006, <<"连续在线礼包">>, 1800, 0, 1, {upper,30}, 1, [{1970,1,1,8,0,0}], [{9999,12,31,23,59,59}], 0, 0, 0, 30, [{0,0,1090100089,1,1}], 0, 0}.
{rec_welfare, 10006, 10007, <<"连续在线礼包">>, 3600, 0, 1, {upper,60}, 1, [{1970,1,1,8,0,0}], [{9999,12,31,23,59,59}], 0, 0, 30000, 50, [], 0, 0}.
{rec_welfare, 10007, 10008, <<"连续在线礼包">>, 7200, 0, 1, {upper,120}, 1, [{1970,1,1,8,0,0}], [{9999,12,31,23,59,59}], 0, 0, 50000, 50, [], 0, 0}.
{rec_welfare, 10008, 10009, <<"连续在线礼包">>, 14400, 0, 1, {upper,240}, 1, [{1970,1,1,8,0,0}], [{9999,12,31,23,59,59}], 0, 0, 50000, 50, [], 0, 0}.
{rec_welfare, 10009, 10010, <<"连续在线礼包">>, 28800, 0, 1, {upper,480}, 1, [{1970,1,1,8,0,0}], [{9999,12,31,23,59,59}], 0, 0, 0, 100, [], 0, 0}.
{rec_welfare, 10010, 0, <<"连续在线礼包">>, 57600, 0, 1, {upper,960}, 1, [{1970,1,1,8,0,0}], [{9999,12,31,23,59,59}], 0, 0, 0, 100, [], 0, 0}.
{rec_welfare, 10011, 10012, <<"离线奖励">>, 0, 0, 2, {upper,3}, 1, [{1970,1,1,8,0,0}], [{9999,12,31,23,59,59}], 100000, 0, 0, 0, [], 0, 0}.
{rec_welfare, 10012, 0, <<"离线奖励">>, 0, 0, 2, {upper,7}, 1, [{1970,1,1,8,0,0}], [{9999,12,31,23,59,59}], 200000, 0, 0, 0, [], 0, 0}.
{rec_welfare, 10013, 10014, <<"连续登陆礼包">>, 0, 4, 3, {equal,0}, 1, [{1970,1,1,8,0,0}], [{9999,12,31,23,59,59}], 0, 0, 0, 0, [{0,0,1040602019,1,2},{0,0,1040502014,1,5}], 0, 0}.
{rec_welfare, 10014, 10015, <<"连续登陆礼包">>, 0, 4, 3, {equal,1}, 1, [{1970,1,1,8,0,0}], [{9999,12,31,23,59,59}], 0, 0, 0, 0, [{0,0,1040603020,1,2},{0,0,1040503015,1,5},{0,0,1040702024,1,1}], 0, 0}.
{rec_welfare, 10015, 10016, <<"连续登陆礼包">>, 0, 4, 3, {equal,2}, 1, [{1970,1,1,8,0,0}], [{9999,12,31,23,59,59}], 0, 0, 0, 0, [{0,0,1040603020,1,2},{0,0,1040505016,1,5},{0,0,1040703025,1,1},{0,0,1093000002,1,2}], 0, 0}.
{rec_welfare, 10016, 10017, <<"连续登陆礼包">>, 0, 4, 3, {equal,3}, 1, [{1970,1,1,8,0,0}], [{9999,12,31,23,59,59}], 0, 0, 0, 0, [{0,0,1040606022,1,1},{0,0,1040506017,1,5},{0,0,1040705026,1,1},{0,0,1093000002,1,2},{0,0,1093000005,1,2}], 0, 0}.
{rec_welfare, 10017, 10018, <<"连续登陆礼包">>, 0, 4, 3, {equal,4}, 1, [{1970,1,1,8,0,0}], [{9999,12,31,23,59,59}], 0, 0, 0, 0, [{0,0,1040607023,1,1},{0,0,1040507018,1,2},{0,0,1040705026,1,2},{0,0,1093000002,1,2},{0,0,1093000005,1,2},{0,0,1093000001,1,1}], 0, 0}.
{rec_welfare, 10018, 0, <<"连续登陆礼包">>, 0, 4, 3, {equal,-1}, 1, [{1970,1,1,8,0,0}], [{9999,12,31,23,59,59}], 0, 0, 0, 0, [{1,0,2011105006,1,1},{2,0,2011105007,1,1},{3,0,2011105008,1,1}], 0, 0}.
{rec_welfare, 10020, 0, <<"充值福利">>, 0, 0, 4, 0, 0, [{1970,1,1,8,0,0}], [{9999,12,31,23,59,59}], 0, 0, 0, 0, [{1,0,2011105015,1,1},{2,0,2011105016,1,1},{3,0,2011105017,1,1},{0,0,1050405039,1,5},{0,0,1093000002,1,5},{0,0,1040403006,1,1},{0,0,1092105098,1,2},{0,0,1040506017,1,20},{1,0,1030506003,1,1},{2,0,1030506002,1,1},{3,0,1030506001,1,1}], 0, 0}.
{rec_welfare, 10021, 0, <<"充值福利">>, 0, 0, 5, {left,100,500}, 1, [{1970,1,1,8,0,0}], [{9999,12,31,23,59,59}], 0, 0, 500, 100, [{0,0,2010113289,0,1}], 20000, 20}.
{rec_welfare, 10022, 0, <<"充值福利">>, 0, 0, 5, {left,500,1000}, 1, [{1970,1,1,8,0,0}], [{9999,12,31,23,59,59}], 0, 0, 500, 100, [{0,0,2010113289,0,1}], 20000, 20}.
{rec_welfare, 10023, 0, <<"充值福利">>, 0, 0, 5, {left,1000,5000}, 1, [{1970,1,1,8,0,0}], [{9999,12,31,23,59,59}], 0, 0, 500, 100, [{0,0,2010113289,0,1}], 20000, 20}.
{rec_welfare, 10024, 0, <<"充值福利">>, 0, 0, 5, {left,5000,10000}, 1, [{1970,1,1,8,0,0}], [{9999,12,31,23,59,59}], 0, 0, 500, 100, [{0,0,2010113289,0,1}], 20000, 20}.
{rec_welfare, 10025, 0, <<"充值福利">>, 0, 0, 5, {upper,10000}, 1, [{1970,1,1,8,0,0}], [{9999,12,31,23,59,59}], 0, 0, 500, 100, [{0,0,2010113289,0,1}], 20000, 20}.
{rec_welfare, 10026, 0, <<"充值福利">>, 0, 0, 6, {upper,100}, 1, [{1970,1,1,8,0,0}], [{9999,12,31,23,59,59}], 0, 0, 500, 100, [{0,0,2010113289,0,1}], 20000, 20}.
{rec_welfare, 10027, 0, <<"充值福利">>, 0, 0, 6, {upper,500}, 1, [{1970,1,1,8,0,0}], [{9999,12,31,23,59,59}], 0, 0, 500, 100, [{0,0,2010113289,0,1}], 20000, 20}.
{rec_welfare, 10028, 0, <<"充值福利">>, 0, 0, 6, {upper,1000}, 1, [{1970,1,1,8,0,0}], [{9999,12,31,23,59,59}], 0, 0, 500, 100, [{0,0,2010113289,0,1}], 20000, 20}.
{rec_welfare, 10029, 0, <<"充值福利">>, 0, 0, 6, {upper,5000}, 1, [{1970,1,1,8,0,0}], [{9999,12,31,23,59,59}], 0, 0, 500, 100, [{0,0,2010113289,0,1}], 20000, 20}.
{rec_welfare, 10030, 0, <<"充值福利">>, 0, 0, 6, {upper,10000}, 1, [{1970,1,1,8,0,0}], [{9999,12,31,23,59,59}], 0, 0, 500, 100, [{0,0,2010113289,0,1}], 20000, 20}.
{rec_welfare, 10031, 0, <<"每日VIP福利">>, 0, 1, 7, {equal,3}, 1, [{1970,1,1,8,0,0}], [{9999,12,31,23,59,59}], 0, 0, 0, 10, [], 0, 0}.
{rec_welfare, 10032, 0, <<"每日VIP福利">>, 0, 1, 7, {equal,4}, 1, [{1970,1,1,8,0,0}], [{9999,12,31,23,59,59}], 0, 0, 0, 10, [], 0, 0}.
{rec_welfare, 10033, 0, <<"每日VIP福利">>, 0, 1, 7, {equal,5}, 1, [{1970,1,1,8,0,0}], [{9999,12,31,23,59,59}], 0, 0, 0, 10, [], 0, 0}.
{rec_welfare, 10034, 0, <<"每日VIP福利">>, 0, 1, 7, {equal,6}, 1, [{1970,1,1,8,0,0}], [{9999,12,31,23,59,59}], 0, 0, 0, 20, [], 0, 0}.
{rec_welfare, 10035, 0, <<"每日VIP福利">>, 0, 1, 7, {equal,7}, 1, [{1970,1,1,8,0,0}], [{9999,12,31,23,59,59}], 0, 0, 0, 20, [], 0, 0}.
{rec_welfare, 10036, 0, <<"每日VIP福利">>, 0, 1, 7, {equal,8}, 1, [{1970,1,1,8,0,0}], [{9999,12,31,23,59,59}], 0, 0, 0, 30, [], 0, 0}.
{rec_welfare, 10037, 0, <<"每日VIP福利">>, 0, 1, 7, {equal,9}, 1, [{1970,1,1,8,0,0}], [{9999,12,31,23,59,59}], 0, 0, 0, 40, [], 0, 0}.
{rec_welfare, 10038, 0, <<"每日VIP福利">>, 0, 1, 7, {equal,10}, 1, [{1970,1,1,8,0,0}], [{9999,12,31,23,59,59}], 0, 0, 0, 50, [], 0, 0}.
{rec_welfare, 10039, 0, <<"等级VIP福利">>, 0, 0, 8, {equal,1}, 1, [{1970,1,1,8,0,0}], [{9999,12,31,23,59,59}], 0, 0, 500000, 100, [{0,0,1093000001,1,2}], 0, 0}.
{rec_welfare, 10040, 0, <<"等级VIP福利">>, 0, 0, 8, {equal,2}, 1, [{1970,1,1,8,0,0}], [{9999,12,31,23,59,59}], 0, 0, 0, 100, [{0,0,1093000001,1,2},{0,0,1040703025,1,1},{0,0,1040406008,1,1}], 0, 0}.
{rec_welfare, 10041, 0, <<"等级VIP福利">>, 0, 0, 8, {equal,3}, 1, [{1970,1,1,8,0,0}], [{9999,12,31,23,59,59}], 0, 0, 0, 100, [{0,0,1093000001,1,5},{0,0,1040703025,1,1},{0,0,1040406008,1,1},{0,0,1093000003,1,1}], 0, 0}.
{rec_welfare, 10042, 0, <<"等级VIP福利">>, 0, 0, 8, {equal,4}, 1, [{1970,1,1,8,0,0}], [{9999,12,31,23,59,59}], 0, 0, 0, 0, [{0,0,1093000001,1,5},{0,0,1040703025,1,1},{0,0,1093000005,1,10},{0,0,1050405009,1,20}], 0, 0}.
{rec_welfare, 10043, 0, <<"等级VIP福利">>, 0, 0, 8, {equal,5}, 1, [{1970,1,1,8,0,0}], [{9999,12,31,23,59,59}], 0, 0, 0, 0, [{0,0,1093000001,1,5},{0,0,1040703026,1,1},{0,0,1093000005,1,20},{0,0,1050405009,1,20},{0,0,2020000006,1,1}], 0, 0}.
{rec_welfare, 10044, 0, <<"等级VIP福利">>, 0, 0, 8, {equal,6}, 1, [{1970,1,1,8,0,0}], [{9999,12,31,23,59,59}], 0, 0, 0, 0, [{0,0,1093000001,1,10},{0,0,1040703026,1,2},{0,0,1050405009,1,20}], 0, 0}.
{rec_welfare, 10045, 0, <<"等级VIP福利">>, 0, 0, 8, {equal,7}, 1, [{1970,1,1,8,0,0}], [{9999,12,31,23,59,59}], 0, 0, 0, 0, [{0,0,1093000001,1,10},{0,0,1040703026,1,6},{0,0,1050405009,1,20},{0,0,2020000007,1,1}], 0, 0}.
{rec_welfare, 10046, 0, <<"等级VIP福利">>, 0, 0, 8, {equal,8}, 1, [{1970,1,1,8,0,0}], [{9999,12,31,23,59,59}], 0, 0, 0, 0, [{0,0,1093000001,1,10},{0,0,1040703028,1,1},{0,0,1050405009,1,20},{0,0,2020000008,1,1}], 0, 0}.
{rec_welfare, 10047, 0, <<"等级VIP福利">>, 0, 0, 8, {equal,9}, 1, [{1970,1,1,8,0,0}], [{9999,12,31,23,59,59}], 0, 0, 0, 0, [{0,0,1093000001,1,15},{0,0,1040703028,1,2},{0,0,1050405009,1,25},{0,0,2020000009,1,1}], 0, 0}.
{rec_welfare, 10048, 0, <<"等级VIP福利">>, 0, 0, 8, {equal,10}, 1, [{1970,1,1,8,0,0}], [{9999,12,31,23,59,59}], 0, 0, 0, 0, [{0,0,1093000001,1,20},{0,0,1040703028,1,4},{0,0,1050405009,1,50},{0,0,2020000010,1,1}], 0, 0}.
{rec_welfare, 10049, 0, <<"新手礼包">>, 0, 0, 9, 0, 0, [{1970,1,1,8,0,0}], [{9999,12,31,23,59,59}], 0, 0, 500, 0, [{0,0,2010113289,0,1}], 20000, 20}.
{rec_welfare, 10050, 10051, <<"成长礼包">>, 0, 0, 10, {equal,10}, 1, [{1970,1,1,8,0,0}], [{9999,12,31,23,59,59}], 0, 0, 500, 0, [{0,0,2010113289,0,1}], 20000, 20}.
{rec_welfare, 10051, 10052, <<"成长礼包">>, 0, 0, 10, {equal,20}, 1, [{1970,1,1,8,0,0}], [{9999,12,31,23,59,59}], 0, 0, 500, 0, [{0,0,2010113289,0,1}], 20000, 20}.
{rec_welfare, 10052, 10053, <<"成长礼包">>, 0, 0, 10, {equal,30}, 1, [{1970,1,1,8,0,0}], [{9999,12,31,23,59,59}], 0, 0, 500, 0, [{0,0,2010113289,0,1}], 20000, 20}.
{rec_welfare, 10053, 10054, <<"成长礼包">>, 0, 0, 10, {equal,40}, 1, [{1970,1,1,8,0,0}], [{9999,12,31,23,59,59}], 0, 0, 500, 0, [{0,0,2010113289,0,1}], 20000, 20}.
{rec_welfare, 10054, 10055, <<"成长礼包">>, 0, 0, 10, {equal,50}, 1, [{1970,1,1,8,0,0}], [{9999,12,31,23,59,59}], 0, 0, 500, 0, [{0,0,2010113289,0,1}], 20000, 20}.
{rec_welfare, 10055, 10056, <<"成长礼包">>, 0, 0, 10, {equal,60}, 1, [{1970,1,1,8,0,0}], [{9999,12,31,23,59,59}], 0, 0, 500, 0, [{0,0,2010113289,0,1}], 20000, 20}.
{rec_welfare, 10056, 10057, <<"成长礼包">>, 0, 0, 10, {equal,70}, 1, [{1970,1,1,8,0,0}], [{9999,12,31,23,59,59}], 0, 0, 500, 0, [{0,0,2010113289,0,1}], 20000, 20}.
{rec_welfare, 10057, 10058, <<"成长礼包">>, 0, 0, 10, {equal,80}, 1, [{1970,1,1,8,0,0}], [{9999,12,31,23,59,59}], 0, 0, 500, 0, [{0,0,2010113289,0,1}], 20000, 20}.
{rec_welfare, 10058, 10059, <<"成长礼包">>, 0, 0, 10, {equal,90}, 1, [{1970,1,1,8,0,0}], [{9999,12,31,23,59,59}], 0, 0, 500, 0, [{0,0,2010113289,0,1}], 20000, 20}.
{rec_welfare, 10059, 0, <<"成长礼包">>, 0, 0, 10, {equal,100}, 1, [{1970,1,1,8,0,0}], [{9999,12,31,23,59,59}], 0, 0, 500, 0, [{0,0,2010113289,0,1}], 20000, 20}.
{rec_welfare, 10060, 10061, <<"再战沙场">>, 0, 0, 13, {equal,1}, 1, [{1970,1,1,8,0,0}], [{9999,12,31,23,59,59}], 0, 0, 0, 0, [{0,0,1040507018,1,2},{0,0,1040607023,1,1}], 0, 0}.
{rec_welfare, 10061, 10062, <<"再战沙场">>, 0, 0, 13, {equal,20}, 1, [{1970,1,1,8,0,0}], [{9999,12,31,23,59,59}], 0, 0, 0, 0, [{0,0,1040507018,1,2},{0,0,1093000005,1,5},{0,0,1050405009,1,20}], 0, 0}.
{rec_welfare, 10062, 10063, <<"再战沙场">>, 0, 0, 13, {equal,30}, 1, [{1970,1,1,8,0,0}], [{9999,12,31,23,59,59}], 0, 0, 0, 0, [{0,0,1040507018,1,4},{0,0,1093000005,1,5},{0,0,1050405009,1,20},{0,0,1092105098,1,5}], 0, 0}.
{rec_welfare, 10063, 10064, <<"再战沙场">>, 0, 0, 13, {equal,40}, 1, [{1970,1,1,8,0,0}], [{9999,12,31,23,59,59}], 0, 0, 0, 0, [{0,0,1040507018,1,10},{0,0,1093000005,1,5},{0,0,1050405009,1,20},{0,0,1092105098,1,5},{0,0,1093000001,1,5}], 0, 0}.
{rec_welfare, 10064, 0, <<"再战沙场">>, 0, 0, 13, {equal,50}, 1, [{1970,1,1,8,0,0}], [{9999,12,31,23,59,59}], 0, 0, 0, 0, [{0,0,1040507018,1,20},{0,0,1093000005,1,5},{0,0,1050405009,1,20},{0,0,1092105098,1,5},{0,0,1093000001,1,5},{0,0,1050405039,1,5}], 0, 0}.
