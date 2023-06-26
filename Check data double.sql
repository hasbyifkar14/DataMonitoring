SELECT v.tanggal_report,u.username,COUNT(rps.sku_id),id_report,visit_id, sku_id_id, is_listed,
reason_id,reguler_stock,stock,price,tt.trade_type_name
date_receive
FROM report_sku rps
JOIN visit v ON v.id_visit=rps.visit_id
JOIN store s ON s.id_store=v.store_id
JOIN trade_type tt ON tt.trade_type_id=s.trade_type_id
JOIN user u ON k.iduser=v.user_id
WHERE 
#rps.visit_id='476021445230517110030' //Contoh 1 visit (report)
v.tanggal_report='2023-06-21'
GROUP BY sku_id,visit_id,is_listing,reason_id,reguler_stock_value,stock,price
HAVING COUNT(rps.sku_id)>1;
