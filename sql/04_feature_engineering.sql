-- Example: creating readable durations and flags for ML
CREATE OR REPLACE TABLE my_project.dataset.tracks_ml AS
SELECT
    track_id,
    track_name,
    artist_norm,
    popularity,
    pop_segment_nb,
    danceability,
    energy,
    loudness,
    tempo,
    CASE 
        WHEN tempo < 40 OR tempo > 220 THEN "anomaly"
        ELSE "ok"
    END AS tempo_flag,
    duration_ms,
    ROUND(duration_ms / 60000, 2) AS duration_minute,
    CAST(FLOOR(duration_ms / 60000) AS INT64) AS duration_min_int,
    CAST(ROUND(MOD(duration_ms, 60000)/1000) AS INT64) AS duration_sec,
    CONCAT(CAST(FLOOR(duration_ms / 60000) AS STRING), ':',
           LPAD(CAST(CAST(ROUND(MOD(duration_ms, 60000)/1000) AS INT64) AS STRING), 2, '0')) AS duration_mmss
FROM my_project.dataset.tracks;
