-record(rec_goods_package, {
	goods_id, 	%<<"物品ID">>, 
	goods_name, 	%<<"物品名稱">>, 
	type, 	%<<"物品類型:裝備/寶石/丹藥">>, 
	subtype, 	%<<"物品子類型:武器、頭盔等">>, 
	sell_type, 	%<<"物品出售類型">>, 
	sell_price, 	%<<"物品出售價格">>, 
	lv, 	%<<"等級">>, 
	pro, 	%<<"職業(0為不限制)">>, 
	sex, 	%<<"性別（0為不限，1為男，2為女）">>, 
	vip, 	%<<"vip等級限制，0為不限制">>, 
	country, 	%<<"陣營限制，0為不限制">>, 
	stack, 	%<<"可疊加數">>, 
	color, 	%<<"物品顏色，0 綠色，1 藍色，2 紫色，3 橙色， 4 紅色">>, 
	start_time, 	%<<"開始時間（秒）">>, 
	duration, 	%<<"可用持續時間 從收到物品開始，可持續使用時間，單位秒">>, 
	deadline, 	%<<"結束時間點   到這個時間後，物品立刻無效">>, 
	is_limit, 	%<<"物品產出限制">>, 
	is_logs, 	%<<"物品記錄日誌        只有勾選後伺服器才會記錄次物品的日誌，方便查詢追蹤">>, 
	is_sell, 	%<<"物品出售          這裡的出售指的是npc商店">>, 
	is_depot, 	%<<"物品存倉庫         禁止存在背包以為的地方，比如倉庫">>, 
	is_biz, 	%<<"物品交易          禁止玩家與玩家之間的交易">>, 
	is_destroy, 	%<<"物品銷毀          禁止摧毀物品">>, 
	is_make, 	%<<"物品不可打造        勾選後，裝備物品不可以打造">>, 
	is_bind, 	%<<"物品自動綁定        勾選後玩家裝備了此物品，自動綁定，無勾選裝備不綁定">>, 
	is_timer, 	%<<"物品立即計時        勾選後會開始計時（需要在資料庫配置時間了才生效），計時結束後，將會被系統收回">>, 
	is_split, 	%<<"物品不可拆分        勾選後，物品不可以拆分">>, 
	is_part, 	%<<"物品不可分解        勾選後無論什麼裝備都不可以分解">>, 
	drop_id, 	%<<"掉落ID">>, 
	target_id 	%<<"寵物模版id">> 
}).

