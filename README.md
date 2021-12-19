#README 

# Description

### 1. Présentation

Investir dans l'immobilier est quelque chose que nous avons (presque) tous déjà rêvé de faire. Que ce soit pour soi-même ou pour espérer en tirer un revenu régulier, nous pouvons très rapidement nous perdre face à la masse des éléments à prendre en compte et leur complexité.

Nous nous plaçons ici dans le cas précis d'une personne souhaitant acquérir un bien pour le mettre à la location (et non pas pour faire de l'achat/revente OU en faire sa résidence principale -bien que ces fonctionnalités puissent être développées plus tard pour étendre l'offre).

/!\ Ce site n'est pas destiné à mettre en lien les vendeurs et les acheteurs.

Lors des visites, certaines informations sont cruciales pour pouvoir faire une analyse objective du potentiel d'un bien (charges, loyer annuel, taux d'occupation...) et il est impératif que le futur acheteur y ait accès pour pouvoir comparer plusieurs biens entre eux et choisir l’investissement qui lui correspondra le mieux.

Nous souhaitons donc mettre en place un outil lui permettant de récolter ces informations importantes sans risquer d'en oublier, et d'obtenir une analyse objective des biens qu'il a visités.


### 2. Parcours utilisateur

L'utilisateur du site doit pouvoir avoir accès aux fonctionnalités suivantes :

    Connexion à son compte,

    Création d'un projet immobilier (descriptif avec les critères de choix -ex: budget à allouer, périmètre de recherche, type de bien...) --> un utilisateur peut avoir plusieurs projets d'investissement immobilier en même temps,

    Pour chaque projet: comparatif des biens visités (classés par ordre de rentabilité brute puisque axé sur l'investissement locatif),

    Possibilité de cliquer sur un bien dans le comparatif pour voir les détails (lien de l'annonce, remarques, réponses aux différentes questions du formulaire, (si possible photos)) + possibilité d'éditer les informations,

    Lors d'une visite, création d'un nouveau logement = génération d'un formulaire avec toutes les questions à poser à un vendeur / agent immobilier.

(OPTIONNEL: Cliquer sur imprimer pour transformer la page HTML en fichier PDF prêt à être présenté à la banque dans le cadre d'une offre - avec le détail des calculs.)

![alt text](https://zupimages.net/up/21/49/r16c.jpg)



### 3. Concrètement et techniquement

Le site doit être accessible sur ordinateur mais aussi sur téléphone (pour être transporté lors des visites des biens immobiliers) et seulement en ligne après une connexion à son compte utilisateur.

#### 3.1. Base de données

3 models principaux: - Utilisateur, - Projet : join table entre un utilisateur et un logement, - Logement : avec les informations liées au bien (lien vers une annonce, remarques personnelles, prix, loyer mensuel perceptible, charges, ...).


####3.2. Front

Le but est de faire simple et fonctionnel mais il faudra:

    générer des éléments (molécules et organismes) tels que : formulaires (une question par écran pour faciliter la lecture, avec les boutons "précédent" et "suivant" pour naviguer entre les différentes questions), un tableau comparatif des logements classé par rentabilité brute...

    mettre un point d'honneur au responsive design.

#### 3.3. Backend

Ce projet reprend dans les grandes lignes tout ce que nous avons vu jusqu'à présent (Rails, architecture MVC, postgresql, ... ).



### 4. La version minimaliste mais fonctionnelle qu'il faut avoir livré la première semaine

Nous souhaitons proposer un site permettant à chaque utilisateur de se connecter sur un espace personnel référençant ses projets d'investissement immobiliers (investissement locatif seulement pour le moment). Pour chacun des projets, un classement en fonction de la rentabilité brute des biens visités sera disponible et les détails de chaque bien immobilier seront accessibles.


### 5. La version que l'on présentera aux jury

Nous souhaitons à l'issue de la deuxième semaine présenter un outil permettant à l'utilisateur d'avoir une interface de navigation agréable (un soin particulier doit être apporté au niveau du formulaire de saisie des informations de chaque logement puisque cet outil doit pouvoir être utilisé de manière fluide lors d'une visite sur téléphone).

Chaque bien doit disposer d'une fiche avec toutes les informations saisies par l'utilisateur (via le formulaire ou une session "Remarques").

L'affichage du comparatif entre les différents bien doit être clair et lisible.

Mettre en place un système de don.

Optionnel : Une fois que l'utilisateur a choisi le bien pour lequel il va faire une offre, il peut imprimer le dossier pour le proposer à la banque.


### 6. Notre mentor

Nico Hermet :)


# Pourquoi rejoindre ce projet

/!\ Nous ne cherchons pas de membre pour compléter l'équipe pour le moment :)

Ce projet peut intéresser toute personne qui souhaite investir dans l'immobilier (locatif) et qui aimerait participer à l'élaboration d'un outil facilitant la décision d'achat. Ce projet permet aussi de revoir les notions abordées au cours de ces 2 derniers mois de THP. Quitte à passer deux semaines à coder, autant coder l'outil qui nous permettra peut-être un jour de devenir propriétaire plus sereinement !

#### Executive Summary : https://pastebin.com/fbKgpL6k

#### User Flow : https://wireframe.cc/pro/pp/ff8429f79502622


#### Lien Heroku :

* Production : https://immotep.herokuapp.com/

#### API Mailjet : Désactivation de l'action Mailer avec Mailjet lors de la création de compte, pour éviter le blocage de l'application sur les créations de comptes.
