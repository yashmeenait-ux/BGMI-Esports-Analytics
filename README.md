# BGMI Esports Analytics

End-to-end **Business Analytics / Esports Analytics** portfolio project covering verified flagship BGMI competitions.

## Structure
```text
BGMI-Esports-Analytics/
├── data/processed/
│   ├── tournaments.csv
│   ├── bgis_2024_grand_finals_team_stats.csv
│   ├── bgis_2024_finish_leaders.csv
│   ├── bgis_2025_grand_finals_team_stats.csv
│   ├── bgis_2025_player_stats.csv
│   ├── bmsd_2025_player_stats.csv
│   ├── bmic_2025_player_stats.csv
│   ├── bgis_2026_team_stats.csv
│   ├── bgis_2026_player_stats.csv
│   ├── bmps_2026_team_stats.csv
│   ├── bmps_2026_player_stats.csv
│   └── sources.csv
├── images/
├── README.md
├── BUSINESS_ANALYSIS_REPORT.md
├── database_script_mssql.sql
├── data_profiling_mssql.sql
├── eda_mssql.sql
├── business_eda.sql
└── index.html
```

## Scope
Flagship BGMI esports: **BGIS, BMPS, BMSD and BMIC**, plus the 2023 India-Korea Invitational. The current dataset contains **12 verified event records covering 2023–2026**.

## Dashboard
Open `index.html`.

## SQL
Run `database_script_mssql.sql`, import the processed CSVs, then run `data_profiling_mssql.sql` and `eda_mssql.sql`.

## Data Quality
Public sources do not expose identical match/player detail for every event. Missing values are left missing rather than invented. Exact source URLs are in `data/processed/sources.csv`.
