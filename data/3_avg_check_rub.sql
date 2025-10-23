-- Средний чек по успешным заказам
SELECT
    sumIf(nominal_price_rub_amt, order_status_cd = 'SUC')
        / nullIf(countIf(order_status_cd = 'SUC'), 0) AS avg_check_rub
FROM raw_dano_dataset_travel
WHERE created_dttm IS NOT NULL;