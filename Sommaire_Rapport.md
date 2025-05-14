<span style="color:#FFFFFF; font-size:22px;">📊 <b>Sommaire du Rapport Power BI</b></span>

---

<span style="color:#FFFFFF; font-size:18px;">📄 <b>PAGE 1 : VUE D’ENSEMBLE DES ENTREPRISES MILLIARDAIRES</b></span>

📌 <b>Objectif</b> : Offrir une vision globale des entreprises milliardaires françaises via la vue <code>entreprises_milliardaires</code>

✅ <b>Visuels</b> :
- 1️⃣ Nombre total d’entreprises milliardaires
- 2️⃣ Répartition des entreprises par type de bilan (camembert ou barres)
- 3️⃣ Répartition des entreprises milliardaires par année (histogramme)
- 4️⃣ Répartition des entreprises par cluster de chiffre d’affaires (donut ou bar chart)
- 5️⃣ Top 10 entreprises en chiffre d’affaires
- 6️⃣ Top 10 entreprises en résultat net

📌 <b>Filtres</b> :
- Année
- Cluster CA
- Type de Bilan

---

<span style="color:#FFFFFF; font-size:18px;">📄 <b>PAGE 2 : ANALYSE DES CLUSTERS ET PERFORMANCE FINANCIÈRE</b></span>

📌 <b>Objectif</b> : Analyser et comparer les performances financières des entreprises milliardaires par cluster.

✅ <b>Visuels</b> :
- 1️⃣ 📊 <b>Matrice des clusters</b>  
  | Cluster | Nombre d’entreprises | Part | CA Moyen | Résultat Net Moyen | Marge Nette Moyenne |
  |:--------|:---------------------|:------|:-----------|:-------------------|:--------------------|  
  ➝ Avec tooltips : détail CA & Résultat Net par entreprise  

- 2️⃣ 📊 <b>Histogrammes ou boîtes à moustaches</b> :
  - Distribution du CA par cluster
  - Distribution du Résultat Net par cluster
  - Distribution de la Marge Nette par cluster

- 3️⃣ 📈 <b>Évolution dans le temps</b> :
  - Évolution du CA moyen par cluster
  - Évolution du Résultat Net moyen par cluster
  - Taux de variation annuel du CA moyen par cluster
  - Taux de variation annuel du Résultat Net moyen par cluster

📌 <b>Filtres</b> :
- Année
- Cluster CA

---

<span style="color:#FFFFFF; font-size:18px;">📄 <b>PAGE 3 : ÉVOLUTION FINANCIÈRE SUR LES ANNÉES</b></span>

📌 <b>Objectif</b> : Analyser la dynamique des entreprises milliardaires sur les années.

✅ <b>Visuels</b> :
- 1️⃣ 📈 Évolution du nombre d’entreprises en perte
- 2️⃣ 📈 Évolution du CA total et Résultat Net total
- 3️⃣ 📈 Évolution du CA moyen et Résultat Net moyen
- 4️⃣ 📈 Taux de variation annuel du CA total
- 5️⃣ 📈 Taux de variation annuel du Résultat Net total

📌 <b>Filtres</b> :
- Année
- Cluster CA

---

🎯 <b>Données utilisées</b> : Vue <code>entreprises_milliardaires</code> issue du fichier <code>ratios_inpi_bce.csv</code> (version du 28/04/2025)

📑 <b>Source des données</b> : <a href="https://data.economie.gouv.fr/explore/dataset/ratios_inpi_bce" style="color:#1E90FF;">Ratios financiers des entreprises françaises - data.economie.gouv.fr</a>
