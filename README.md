# Projet Portfolio : 🎵 Music Popularity Analysis / Analyse de la Popularité Musicale

## English Version

### Project Overview
This project aims to **analyze the factors influencing the popularity of music tracks**. Using SQL and Python, we cleaned, structured, and explored the dataset to provide actionable insights for music analytics.

### Dataset
- Source: [Spotify Enriched Dataset](https://huggingface.co/datasets/maharshipandya/spotify-tracks-dataset)
- Size: 89,741 tracks
- Features: audio metrics (tempo, danceability, energy), track details (genre, duration), and popularity score

### Data Cleaning & Feature Engineering
- Removed duplicates and irrelevant records
- Standardized variable formats
- Created new features, e.g., track length categories, binary mood indicators, popularity segments

### Analysis
- Segmented tracks by popularity
- Compared features of popular vs non-popular tracks
- Explored differences across genres and audio features

**Note on Popularity Metric:** The “popularity” score from Spotify reflects mainly the **number of streams** for each track ([Spotify API documentation](https://developer.spotify.com/documentation/web-api/reference/tracks/get-track/)). For our analysis, we grouped tracks into **popularity buckets** to simplify comparisons.

### Key Insights
- Certain audio features slightly influence popularity
- Genres show distinct patterns in popularity
- Audio features alone cannot fully predict popularity (limitations)

### Tools & Skills
- SQL: data cleaning, transformation, feature creation
- Python: exploratory analysis, visualization
- Looker Studio: interactive dashboard

  
### Dashboard
- [Looker Studio](https://lookerstudio.google.com/reporting/03415171-2a3b-45ff-9916-5d20fb39c223/page/p_odhjmsb4vd)

### Limitations
- Dataset lacks external variables (artist marketing, playlist placement)
- Correlation does not imply causation

---

## Version Française

### Présentation du Projet
Ce projet a pour objectif **d’analyser les facteurs influençant la popularité des morceaux musicaux**. Avec SQL et Python, nous avons nettoyé, structuré et exploré le dataset pour fournir des insights exploitables pour l’analyse musicale.

### Dataset
- Source : [Spotify Dataset enrichi](https://huggingface.co/datasets/maharshipandya/spotify-tracks-dataset)
- Size: 89,741 tracks
- Variables : métriques audio (tempo, danceability, energy), informations sur les morceaux (genre, durée) et score de popularité

### Nettoyage & Création de Variables
- Suppression des doublons et enregistrements inutiles
- Standardisation des formats de variables
- Création de nouvelles variables, ex. : catégories de durée, indicateurs binaires d’ambiance, segments de popularité

### Analyse
- Segmentation des morceaux selon leur popularité
- Comparaison des caractéristiques des morceaux populaires vs non populaires
- Exploration des différences entre genres et métriques audio

- **Remarque sur le score de popularité :** Le score de “popularité” fourni par Spotify reflète surtout le **nombre de streams** par morceau ([documentation Spotify API](https://developer.spotify.com/documentation/web-api/reference/tracks/get-track/)). Pour notre analyse, nous avons créé des **catégories de popularité** afin de faciliter les comparaisons.

### Insights Clés
- Certaines caractéristiques audio influencent légèrement la popularité
- Les genres présentent des patterns distincts de popularité
- Les variables audio seules ne suffisent pas à prédire la popularité (limites)

### Outils & Compétences
- SQL : nettoyage et transformation des données, création de variables
- Python : analyse exploratoire, visualisation
- Looker Studio : dashboard interactif [lien]

### Dashboard
- [Looker Studio](https://lookerstudio.google.com/reporting/03415171-2a3b-45ff-9916-5d20fb39c223/page/p_odhjmsb4vd)
  

### Limites
- Dataset limité : absence de variables externes (marketing artiste, placement en playlist)
- Corrélation ≠ causalité
