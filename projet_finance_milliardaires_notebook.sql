-- 📌 Projet : Analyse des entreprises milliardaires françaises (2012-2023)
-- 📌 Auteur : DJAHA YANKEP Charly William
-- 📌 Source de données : https://data.economie.gouv.fr/explore/dataset/ratios_inpi_bce
-- 📌 Fichier : ratios_inpi_bce.csv

/* 📌 Objectif :
Étudier la santé financière des entreprises françaises réalisant plus de 1 milliard d’euros de chiffre d’affaires entre 2012 et 2023.
L’analyse s’appuie sur des indicateurs financiers : chiffre d’affaires, résultat net, marge nette, et classement en quartiles de chiffre d’affaires.
*/

/* 📌 Méthodologie de nettoyage et préparation des données :

1️⃣ Détection des valeurs aberrantes :
- Analyse des distributions du chiffre d’affaires et du résultat net.
- Identification des CA négatifs et des résultats nets incohérents (supérieurs à +200% du CA ou inférieurs à –100% du CA).

2️⃣ Règles métiers appliquées :
- Conservation des entreprises dont le chiffre d’affaires est supérieur ou égal à 1 milliard d’euros.
- Encadrement des résultats nets à –100% / +200% du chiffre d’affaires.
- Élimination des doublons** par entreprise et par année en priorisant le type de bilan. Priorité : `K` > `C` > `S` > autres.

3️⃣ Ajout d’indicateurs :
- Extraction de l’année depuis la date de clôture.
- Calcul de la marge nette.
- Classement en quartiles (clusters) selon le chiffre d’affaires.

*/

-- 1️⃣ Filtrage des entreprises milliardaires et calcul de marges
WITH base_filtrée AS (
    SELECT siren,
           date_cloture_exercice,
           EXTRACT(year FROM date_cloture_exercice) AS annee,
           type_bilan,
           chiffre_d_affaires,
           resultat_net,
           marge_brute,
           resultat_net / chiffre_d_affaires * 100::numeric AS marge_nette
    FROM ratios_inpi_bce
    WHERE chiffre_d_affaires >= 1000000000
      AND chiffre_d_affaires > 0
      AND resultat_net BETWEEN -1 * chiffre_d_affaires AND 2 * chiffre_d_affaires
      AND date_cloture_exercice BETWEEN '2012-01-01' AND '2023-12-31'
),

-- 2️⃣ Attribution d’un rang pour le type de bilan
rangés AS (
    SELECT *,
           CASE type_bilan
               WHEN 'K' THEN 1
               WHEN 'C' THEN 2
               WHEN 'S' THEN 3
               ELSE NULL
           END AS rang_type_bilan
    FROM base_filtrée
),

-- 3️⃣ Suppression des doublons par entreprise et année (priorité au bilan le plus représentatif)
dedoublonnés AS (
    SELECT DISTINCT ON (siren, annee)
           siren, date_cloture_exercice, annee, type_bilan,
           chiffre_d_affaires, resultat_net, marge_brute, marge_nette
    FROM rangés
    ORDER BY siren, annee, rang_type_bilan
),

-- 4️⃣ Classement en 4 clusters selon le CA
clusterisé AS (
    SELECT *,
           ntile(4) OVER (ORDER BY chiffre_d_affaires) AS cluster_ca
    FROM dedoublonnés
)

-- 5️⃣ Résultat final
SELECT * FROM clusterisé;