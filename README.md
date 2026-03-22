# Projet Portfolio : 🎵 Music Popularity Analysis / Analyse de la Popularité Musicale

## Version Française 🇫🇷

## Présentation du Projet
Analyse des données Spotify pour comprendre les facteurs de popularité des morceaux. Focus : **nettoyage, EDA, segmentation, comparaison des features**.
C'est un projet pédagogique/académique: l’analyse montre que la popularité Spotify est faiblement corrélée aux features audio ; le but principal est de démontrer mes compétences SQL & Python pour le nettoyage et l’EDA.

## Résumé du projet
**Question d’analyse**
Quelle relation peut-on observer entre certaines caractéristiques audio, les macro-genres et la popularité des titres Spotify ?

**Indicateurs suivis**
- Popularité des titres
- Segments de popularité
- Danceability, energy, tempo, valence
- Répartition par macro-genre
  
**Points de vigilance sur les données**
- La popularité Spotify est un indicateur spécifique à la plateforme
- Les audio features n’intègrent pas les facteurs externes de succès (marketing, visibilité, notoriété, playlists, temporalité)
- La catégorisation en macro-genres repose sur un regroupement analytique des genres existants

**Lecture / recommandations**
- Constat : les titres les plus populaires présentent certaines tendances communes, mais les écarts observés sur les audio features restent modérés. L’analyse est surtout utile pour faire émerger des tendances descriptives et comparer des segments
- Implication : les caractéristiques audio seules ne permettent pas d’expliquer pleinement la popularité d’un titre.
- Action / piste : enrichir l’analyse avec des variables externes comme la visibilité, la date de sortie, la présence en playlist ou la notoriété des artistes.

### Dataset
- Source : [Spotify Dataset enrichi](https://huggingface.co/datasets/maharshipandya/spotify-tracks-dataset)
- Size: 89,741 tracks
- Caractéristiques audio : danceability, energy, valence, tempo, loudness, duration  
- Score de popularité → segmenté en 5 catégories


#### Remarque sur le score de popularité :
Le score de “popularité” fourni par Spotify reflète surtout le **nombre de streams** par morceau ([documentation Spotify API](https://developer.spotify.com/documentation/web-api/reference/tracks/get-track/)). Pour notre analyse, nous avons créé des **catégories de popularité** afin de faciliter les comparaisons.

### Compétences / Outils
- **SQL** : nettoyage, transformations, création de variables  
- **Python** : pandas, matplotlib, seaborn, analyse exploratoire  
- **Looker Studio** : dashboard interactif  
- **Workflow** : notebooks Colab → BigQuery → dashboards  

Ces transformations ont permis de passer d’un dataset brut à une structure plus lisible pour l’analyse comparative et la visualisation.

## Insights Clés

| Variable      | Non Populaire | Très Populaire | % Variation relative |
|---------------|---------------|----------------|----------------------|
| Danceability  | 0.578         | 0.599          | +3.48%               |
| Energy        | 0.591         | 0.642          | +8.56%               |
| Tempo         | 119.56        | 120.60         | +0.86%               |

> Les titres populaires sont légèrement **plus dansants et énergiques**. La popularité dépend d’une **combinaison de caractéristiques**, pas d’une seule.

**🎯 Insight pratique / décisionnel :**  
Les morceaux avec plus de danceability et d’énergie tendent à être légèrement plus populaires. Ces insights peuvent **informer la création de playlists, la stratégie marketing ou les recommandations musicales**, montrant la capacité à relier données → décision.

### Workflow
1. Nettoyage & normalisation (doublons, standardisation noms artistes/morceaux)  
2. EDA : distributions, outliers, corrélations  
3. Segmentation par popularité & comparaison des features  
4. Visualisations → barplots, histogrammes, Looker Studio  


## 📊 Dashboard
- [Looker Studio](https://lookerstudio.google.com/reporting/67ab3195-1208-459e-9038-0c2320291e0d)

**Insights clés : Popularité vs caractéristiques audio**
Les morceaux très populaires ont tendance à avoir une **danceability** et une **énergie** plus élevées, tempo moyen ~121 bpm.  
![Popularity vs Danceability & Energy](https://github.com/AmelielN/Project-Portfolio-Audio-features-Popularity/blob/main/photos/slide4charts.png?raw=true)

**Distribution des macro-genres selon les niveaux de popularité**
Montre comment la **popularité varie selon les macro-genres**. Les segments de très haute popularité sont dominés par **Pop & Mainstream** et **Rock & Alternative**.  
![Macro Genre Distribution](https://github.com/AmelielN/Project-Portfolio-Audio-features-Popularity/blob/main/photos/slide3chart.png?raw=true)



**Interactive Dashboard**  
Explorez le dashboard ici: [Portfolio Audio Feature & Popularity Analysis - report (en)](https://lookerstudio.google.com/reporting/67ab3195-1208-459e-9038-0c2320291e0d)

### Limites
- Dataset limité : absence de variables externes (marketing artiste, placement en playlist)
- Les caractéristiques audio seules ne suffisent pas à prédire la popularité
- Corrélation ≠ causalité

### Prochaines Étapes / Impact Potentiel
- Modélisation prédictive de la popularité  
- Clustering par profil audio  
- Insights pour création de playlists ou recommandations musicales

---------------------

## English Version 🇬🇧

## Project Overview
Analyze Spotify track data to understand what audio features relate to popularity. Focus: **cleaning, EDA, segmentation, feature comparison**.

### Dataset
- Source: [Spotify Enriched Dataset](https://huggingface.co/datasets/maharshipandya/spotify-tracks-dataset)
- Size: 89,741 tracks
- Audio features: danceability, energy, valence, tempo, loudness, duration  
- Popularity score → grouped into 5 segments  
  
#### Note on Popularity Metric:
The “popularity” score from Spotify reflects mainly the **number of streams** for each track ([Spotify API documentation](https://developer.spotify.com/documentation/web-api/reference/tracks/get-track/)). For our analysis, we grouped tracks into **popularity buckets** to simplify comparisons.


### Key Skills / Tools
- **SQL**: data cleaning, transformations, feature engineering  
- **Python**: pandas, matplotlib, seaborn, EDA  
- **Looker Studio**: dashboard visualization  
- **Workflow**: Colab notebooks → BigQuery → dashboards  

## Key Insights

| Feature       | Non-Popular | High Popularity | % Difference |
|---------------|------------|----------------|--------------|
| Danceability  | 0.578      | 0.599          | +3.48%       |
| Energy        | 0.591      | 0.642          | +8.56%       |
| Tempo         | 119.56     | 120.60         | +0.86%       |

> Popular tracks slightly higher in **danceability & energy**. Popularity driven by **combination of features**, not a single variable.

**🎯 Practical / Business Insight:**  
Tracks with higher danceability and energy tend to be slightly more popular. These insights could inform **playlist curation, marketing strategy, or music recommendation algorithms**, showing an understanding of data-driven decision-making.


### Workflow
1. Data cleaning & normalization (remove duplicates, standardize artist/track names)  
2. EDA: distributions, outliers, correlation analysis  
3. Popularity segmentation & feature comparison  
4. Visualizations → barplots, histograms, Looker Studio dashboard  

  
## 📊 Dashboard
- [Looker Studio](https://lookerstudio.google.com/reporting/67ab3195-1208-459e-9038-0c2320291e0d)
  
**Key Insights: Popularity vs Audio Features**  
High popularity tracks tend to have higher danceability and energy, average tempo ~121 bpm.
![Popularity vs Danceability & Energy](https://github.com/AmelielN/Project-Portfolio-Audio-features-Popularity/blob/main/photos/slide4charts.png?raw=true)

**Macro Genre Distribution Across Popularity Levels**  
Shows how popularity varies by macro-genre. Pop & Mainstream, and Rock & Alternative dominate the Very High Popularity segment.
![Macro Genre Distribution](https://github.com/AmelielN/Project-Portfolio-Audio-features-Popularity/blob/main/photos/slide3chart.png?raw=true)


**Interactive Dashboard**  
Explore the full dashboard here: [Portfolio Audio Feature & Popularity Analysis - report (en)](https://lookerstudio.google.com/reporting/67ab3195-1208-459e-9038-0c2320291e0d)

### Limitations
- Dataset lacks external variables (artist marketing, playlist placement)
- Audio features alone cannot fully predict popularity
- Correlation does not imply causation

### Next Steps / Potential Impact
- Predictive modeling of track popularity  
- Clustering tracks by audio profile  
- Insights for playlist curation or music recommendation  
---


