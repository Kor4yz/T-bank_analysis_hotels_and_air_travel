-- Общая доля онлайн-оплат (глобальный KPI)
SELECT
    sum(order_online_payment_flg) / count() AS online_share_total
FROM raw_dano_dataset_travel
WHERE created_dttm IS NOT NULL;