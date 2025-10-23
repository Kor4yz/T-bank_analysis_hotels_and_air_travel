-- Основная агрегация по заказам (mart_orders_daily)
SELECT
    toDate(created_dttm) AS dt,
    order_type_cd,
    bundle_nm,
    loyalty_program_type_nm,
    count() AS orders_all,
    countIf(order_status_cd = 'SUC') AS orders_suc,
    sumIf(order_online_payment_flg, order_status_cd = 'SUC') AS online_suc,
    sum(order_online_payment_flg) AS online_all,
    sumIf(nominal_price_rub_amt, order_status_cd = 'SUC') AS revenue_rub,
    uniqExactIf(client_rk, order_status_cd = 'SUC') AS clients_uu,
    divide(
        sumIf(order_online_payment_flg, order_status_cd = 'SUC'),
        nullIf(countIf(order_status_cd = 'SUC'), 0)
    ) AS online_share_suc,
    divide(
        sum(order_online_payment_flg),
        nullIf(count(), 0)
    ) AS online_share_all
FROM raw_dano_dataset_travel
WHERE created_dttm IS NOT NULL
GROUP BY
    dt, order_type_cd, bundle_nm, loyalty_program_type_nm
ORDER BY dt
FORMAT CSVWithNames;