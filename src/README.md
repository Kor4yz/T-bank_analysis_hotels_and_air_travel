## 🧠 Репродукция анализа

Весь код анализа и генерации отчётов содержится в файле  
[`src/main.py`](src/main.py).

Скрипт автоматически:
- загружает и очищает данные (`data/dano_dataset_travel.csv`);
- строит визуализации и сохраняет их в `reports/results/`;
- генерирует HTML-презентацию `tbank_report.html`;
- создаёт Jupyter Notebook `TBank_Travel_EDA.ipynb` для воспроизводимости.

Запуск:
```bash
python src/main.py
```

Tребуется Python 3.9+ и библиотеки pandas, matplotlib, seaborn, numpy

---

## ⚙️ Мини-доработки, если хочешь сделать «идеально»
1. Добавь в корень файл `requirements.txt` с зависимостями:
   ```txt
   pandas
   numpy
   matplotlib
   seaborn
  ```
