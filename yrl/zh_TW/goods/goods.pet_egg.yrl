
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 自动生成 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%------------------------注释-----------------------------------------
%%	寵物蛋結構
%%---------------------------------------------------------------------
%%{rec_<<"goods_pet_egg">>, <<"物品ID">>, <<"物品名稱">>, <<"物品圖示ID">>, <<"物品詳情">>, <<"物品類型:裝備/寶石/丹藥">>, <<"物品子類型:武器、頭盔等">>, <<"物品出售類型">>, <<"物品出售價格">>, <<"等級">>, <<"職業(0為不限制)">>, <<"性別（0為不限，1為男，2為女）">>, <<"vip等級限制，0為不限制">>, <<"國家">>, <<"可疊加數">>, <<"物品顏色，0 綠色，1 藍色，2 紫色，3 橙色， 4 紅色">>, <<"開始時間（秒）">>, <<"可用持續時間 從收到物品開始，可持續使用時間，單位秒">>, <<"結束時間點   到這個時間後，物品立刻無效">>, <<"物品產出限制">>, <<"物品記錄日誌        只有勾選後伺服器才會記錄次物品的日誌，方便查詢追蹤">>, <<"物品出售          這裡的出售指的是npc商店">>, <<"物品存倉庫         禁止存在背包以為的地方，比如倉庫">>, <<"物品交易          禁止玩家與玩家之間的交易">>, <<"物品銷毀          禁止摧毀物品">>, <<"物品自動綁定        勾選後玩家裝備了此物品，自動綁定，無勾選裝備不綁定">>, <<"物品立即計時        勾選後會開始計時（需要在資料庫配置時間了才生效），計時結束後，將會被系統收回">>, <<"物品不可拆分        勾選後，物品不可以拆分">>, <<"寵物模版id">>, <<"經驗">>}.
%%{rec_<<"goods_pet_egg">>, <<"goods_id">>, <<"goods_name">>, <<"icon">>, <<"intro">>, <<"type">>, <<"subtype">>, <<"sell_type">>, <<"sell_price">>, <<"lv">>, <<"pro">>, <<"sex">>, <<"vip">>, <<"country">>, <<"stack">>, <<"color">>, <<"start_time">>, <<"duration">>, <<"deadline">>, <<"is_limit">>, <<"is_logs">>, <<"is_sell">>, <<"is_depot">>, <<"is_biz">>, <<"is_destroy">>, <<"is_bind">>, <<"is_timer">>, <<"is_split">>, <<"target_id">>, <<"exp">>}.
{rec_goods_pet_egg, 1020202001, <<"黃馬駒">>, 1020202001, <<"能成長為5級別綠色坐騎黃鬃馬的幼獸，可以在26、32級的異民族戰場中獲得。">>, 2, 2, 4, 100, 5, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 2011102001, 600}.
{rec_goods_pet_egg, 1020202002, <<"紅馬駒">>, 1020203001, <<"能成長為40級綠色坐騎大宛馬的幼獸，可以在40、48、53級的異民族戰場中獲得。">>, 2, 2, 4, 200, 40, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 2011102002, 1200}.
{rec_goods_pet_egg, 1020202003, <<"青驄駒">>, 2011102003, <<"能成長為60級綠色坐騎青驄馬的幼駒，可以在60、63、69級的異民族戰場中獲得。">>, 2, 2, 4, 300, 60, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 2011102003, 1800}.
{rec_goods_pet_egg, 1020202004, <<"80級綠色小馬駒">>, 1020202004, 1, 2, 2, 4, 400, 80, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 2011102004, 2400}.
{rec_goods_pet_egg, 1020202005, <<"100級綠色小馬駒">>, 1020202005, 1, 2, 2, 4, 500, 100, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 2011102005, 3000}.
{rec_goods_pet_egg, 1020203001, <<"白鶴駒">>, 1020206001, <<"能成長為20級藍色坐騎白鶴馬的幼獸，可以在 26、32級的異民族戰場中獲得。">>, 2, 2, 4, 120, 20, 0, 0, 0, 0, 1, 3, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 2011103001, 1800}.
{rec_goods_pet_egg, 1020203002, <<"飛沙駒">>, 1020203002, <<"能成長為40級藍色坐騎沙裡飛的幼獸，可以在40、48、53級的異民族戰場中獲得。">>, 2, 2, 4, 240, 40, 0, 0, 0, 0, 1, 3, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 2011103002, 3600}.
{rec_goods_pet_egg, 1020203003, <<"黑雲駒">>, 2011103003, <<"能成長為60級藍色坐騎黑雲的幼駒，可以在60、63、69級的異民族戰場中獲得。">>, 2, 2, 4, 360, 60, 0, 0, 0, 0, 1, 3, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 2011103003, 5400}.
{rec_goods_pet_egg, 1020203004, <<"80級藍色小馬駒">>, 1020203004, 1, 2, 2, 4, 480, 80, 0, 0, 0, 0, 1, 3, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 2011103004, 7200}.
{rec_goods_pet_egg, 1020203005, <<"100級藍色小馬駒">>, 1020203005, 1, 2, 2, 4, 600, 100, 0, 0, 0, 0, 1, 3, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 2011103005, 9000}.
{rec_goods_pet_egg, 1020205001, <<"牛犢">>, 1020205001, <<"能成長為20級紫色坐騎赤犛牛的幼獸，可以在26、32、40級的異民族戰場中獲得。">>, 2, 2, 4, 140, 20, 0, 0, 0, 0, 1, 5, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 2011105001, 7200}.
{rec_goods_pet_egg, 1020205002, <<"紫騂幼駒">>, 1020205012, <<"能成長為40級紫色坐騎紫騂的幼獸，可以在40、48、53級的異民族戰場中獲得。">>, 2, 2, 4, 280, 40, 0, 0, 0, 0, 1, 5, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 2011105002, 14400}.
{rec_goods_pet_egg, 1020205003, <<"汗血幼駒">>, 2011105003, <<"能成長為60級紫色坐騎汗血馬的幼駒，可以在60、63、69級的異民族戰場中獲得。">>, 2, 2, 4, 420, 60, 0, 0, 0, 0, 1, 5, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 2011105003, 21600}.
{rec_goods_pet_egg, 1020205004, <<"戰豬幼駒">>, 1020205004, <<"能成長為80級紫色坐騎獠牙戰豬的幼駒，可以在80級的異民族戰場中獲得。">>, 2, 2, 4, 560, 80, 0, 0, 0, 0, 1, 5, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 2011105022, 28800}.
{rec_goods_pet_egg, 1020205005, <<"100級紫色小馬駒">>, 1020205005, 1, 2, 2, 4, 700, 100, 0, 0, 0, 0, 1, 5, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 2011105005, 36000}.
{rec_goods_pet_egg, 1020206001, <<"的盧幼駒">>, 2011106003, <<"能成長為20級橙色坐騎的盧馬的幼駒，可以在26、32級的異民族戰場中獲得。">>, 2, 2, 4, 160, 20, 0, 0, 0, 0, 1, 6, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 2011106001, 14400}.
{rec_goods_pet_egg, 1020206002, <<"小虎崽">>, 1020206002, <<"能成長為40級橙色坐騎戰虎的幼獸，可以在40、48、53級的異民族戰場中獲得。">>, 2, 2, 4, 320, 40, 0, 0, 0, 0, 1, 6, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 2011106002, 28800}.
{rec_goods_pet_egg, 1020206003, <<"雪獅幼駒">>, 1020206003, <<"能成長為60級橙色坐騎的雪獅的幼駒，可以在60、63、69級的異民族戰場中獲得。">>, 2, 2, 4, 480, 60, 0, 0, 0, 0, 1, 6, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 2011106003, 43200}.
{rec_goods_pet_egg, 1020206004, <<"白澤幼駒">>, 1020206004, <<"能成長為80級橙色坐騎通海白澤的幼駒，可以在80級的異民族戰場中獲得。">>, 2, 2, 4, 640, 80, 0, 0, 0, 0, 1, 6, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 2011105023, 57600}.
{rec_goods_pet_egg, 1020206005, <<"100級橙色小馬駒">>, 1020206005, 1, 2, 2, 4, 800, 100, 0, 0, 0, 0, 1, 6, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 2011106005, 72000}.
{rec_goods_pet_egg, 1020207001, <<"絕影幼駒">>, 2011106015, <<"能成長為20級紅色坐騎的絕影的幼駒，可以在26、32級的異民族戰場中獲得。">>, 2, 2, 4, 180, 20, 0, 0, 0, 0, 1, 7, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 2011107001, 14400}.
{rec_goods_pet_egg, 1020207002, <<"獵豹幼駒">>, 1020207002, <<"能成長為40級紅色坐騎獵豹的幼獸，可以在40、48級的異民族戰場中獲得。">>, 2, 2, 4, 360, 40, 0, 0, 0, 0, 1, 7, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 2011107002, 28800}.
{rec_goods_pet_egg, 1020207003, <<"犀牛崽">>, 2011107003, <<"能成長為60級紅色坐騎獨角犀的幼獸，可以在60級的異民族戰場中獲得。">>, 2, 2, 4, 540, 60, 0, 0, 0, 0, 1, 7, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 2011107003, 43200}.
{rec_goods_pet_egg, 1020207004, <<"麒麟幼駒">>, 1020207004, <<"能成長為80級紅色坐騎至尊麒麟的幼駒，可以在80級的異民族戰場中獲得。">>, 2, 2, 4, 720, 80, 0, 0, 0, 0, 1, 7, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 2011105024, 57600}.
{rec_goods_pet_egg, 1020207005, <<"100級紅色小馬駒">>, 1020207005, 1, 2, 2, 4, 900, 100, 0, 0, 0, 0, 1, 7, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 2011107005, 72000}.
