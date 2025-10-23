-- Топ-5 программ лояльности по выручке
SELECT
    loyalty_program_type_nm,
    sumIf(nominal_price_rub_amt, order_status_cd = 'SUC') AS revenue_rub
FROM raw_dano_dataset_travel
WHERE created_dttm IS NOT NULL
GROUP BY loyalty_program_type_nm
ORDER BY revenue_rub DESC
LIMIT 5;