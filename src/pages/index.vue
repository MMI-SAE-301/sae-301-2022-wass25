
<template>
  <div class="">
    <img class="flex justify-center m-auto w-32 mb-4 mt-24" src="../../public/images/logo_noir.png" alt="">
  </div>
  <div class="carré">
    <router-link to="/montre/id">
      <div class="oui2">
        <img class="gauche" src="../../public/images/montre_gauche.png" alt="">
        <p class="votre">VOTRE <br>MONTRE <br>SUR <br>MESURE</p>
      </div>
    </router-link>
    <router-link to="/Connexion">
      <div class="oui1">
        <img class="milieu" src="../../public/images/connexion.png" alt="">
        <p class="connexion1">S'AUTHENTIFIER</p>
      </div>
    </router-link>
    <router-link to="/listeMontre">
      <div class="oui2">
        <img class="droite" src="../../public/images/montre_droit.png" alt="">
        <p class="vos1">VOS</p>
        <p class="vos2">MONTRES</p>
      </div>
    </router-link>
  </div>
  <div class="bande1">
    <h1 class="m-16 pt-7 text-4xl font-bold">UNE QUALITE AU RENDEZ VOUS</h1>
    <div class="flex">
      <p class="info">AVEC TIKTAK, NOUS VOULONS QUE NOS CLIENTS ACHETES LE PRODUITS QU’IL LEUR CONVIENT.
        <br>
        <br>
        UN PRODUIT UNIQUE. <br>
        <br>
        UN PRODUIT AUTHENTIQUE QUE VOUS AVEZ IMAGINE ! <br>
        <br>
        PERSONNALISER VOTRE MONTRE CONNECTER TIKTAK POUR LA METTRE A VOTRE GOUT. <br> EN PASSANT PAR LA FORME,
        LE

        BRACELET, LE
        BOITIER, L’ECRAN <br> OU MEME LA COULEUR ET LES MATERIAUX UTILISER. <br>
        <br>
        ALORS LANCEZ VOUS DES MAINTENANT ET PERSONNALISER VOTRE TIKTAK !
      </p>
      <img class="illustration" src="../../public/images/ill.png" alt="">
    </div>
  </div>
  <p class="info2">
    CONNECTEZ VOUS AVEC VOTRE COMPTE GOOGLE <br> OU FACEBOOK POUR AVOIR ACCEE A TOUTES NOS <br>
    FONCTIONNALITES.
  </p>
  <div class="flex">
    <div class="orange">
      <img class="lestrois" src="../../public/images/les3.png" alt="">
    </div>
    <div class="noir">
      <h1 class="ml-20 pt-7 text-4xl font-bold">COLLECTIONER LES</h1>
      <p class="info3">VOUS VOYEZ GRAND ? <br>
        <br>
        VOUS VOULEZ ESSAYER TOUTES LES COMBINAISON POSSIBLE ? <br>
        <br>
        NOUS STOCKONS MAINTENANTS TOUTES VOS CREATIONS POUR VOUS !
      </p>
    </div>
  </div>

</template>