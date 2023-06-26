SELECT v.tanggal_mulai,k.username,COUNT(rps.product_id),id_report_stock,visit_id, product_id, is_listing,
reason_id,reguler_stock,stock,price,sa.nama_account,sc.nama_channel,tt.trade_type_name
date_receive,is_backup 
FROM report_stock_trial rps
JOIN visit v ON v.id_visit=rps.visit_id
JOIN store s ON s.id_store=v.store_id
JOIN str_account sa ON sa.id_account=s.account_id
JOIN str_channel sc ON sc.id_channel=sa.channel_id
JOIN trade_type tt ON tt.trade_type_id=s.trade_type_id
JOIN karyawan k ON k.idkaryawan=v.karyawan_id
WHERE 
#rps.visit_id='476021445230517110030'
v.tanggal_mulai='2023-06-21'
 GROUP BY product_id,visit_id,is_listing,reason_id,reguler_stock,stock,price
 HAVING COUNT(rps.product_id)>1;