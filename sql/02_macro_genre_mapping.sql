-- Mapping des genres en macro-catégories
UPDATE my_project.dataset.track_genre
SET macro_genre = CASE
    WHEN LOWER(TRIM(genre)) IN ('pop','indie-pop','k-pop','j-pop') THEN '1. Pop & Mainstream'
    WHEN LOWER(TRIM(genre)) IN ('rock','alternative','indie') THEN '2. Rock & Alternative'
    WHEN LOWER(TRIM(genre)) IN ('metal','hard-rock') THEN '3. Metal & Hard Styles'
    WHEN LOWER(TRIM(genre)) IN ('edm','electronic','house','techno') THEN '4. Electronic & Dance'
    WHEN LOWER(TRIM(genre)) IN ('hip-hop','r-n-b','funk') THEN '5. Hip-Hop, R&B & Urban'
    WHEN LOWER(TRIM(genre)) IN ('jazz','blues') THEN '6. Jazz, Blues & Soul'
    WHEN LOWER(TRIM(genre)) IN ('folk','country','acoustic') THEN '7. Folk, Country & Acoustic'
    WHEN LOWER(TRIM(genre)) IN ('classical','opera') THEN '8. Classical & Traditional'
    WHEN LOWER(TRIM(genre)) IN ('world','latin') THEN '9. World / International'
    ELSE 'Other'
END
WHERE TRUE;
