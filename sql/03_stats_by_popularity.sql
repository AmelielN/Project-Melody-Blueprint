-- Stats par segment de popularité
WITH stats AS (
    SELECT
        popularity_segment,
        AVG(danceability) AS avg_danceability,
        AVG(energy) AS avg_energy,
        AVG(tempo) AS avg_tempo
    FROM my_project.dataset.tracks_ml_ready
    GROUP BY popularity_segment
)
SELECT *
FROM stats
ORDER BY popularity_segment;
