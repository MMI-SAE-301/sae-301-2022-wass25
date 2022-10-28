<template>

  <!-- Affiche les pages -->
  <Suspense>

    <router-view class="tout" />

  </Suspense>

  <footer>
    <div class="fin">
      <div>
        <img class="accueil" src="/images/logo_blanc.png" alt="">
      </div>
      <div class="mt-auto mb-auto text-center">© COPYRIGHT <br> MMI MONTBELIARD</div>
      <div>
        <img class="accueil" src="/images/mmi1.png" alt="">
      </div>
      <div class="traitblanc"></div>
      <div class="mt-auto mb-auto text-center">CONDITTIONS D'UTILISATION <br> <br> POLITIQUE DE CONFIDENTIALITE</div>
      <div class="traitblanc"></div>
      <div class="mt-auto mb-auto text-center">FACEBOOK <br> <br> GOOGLE</div>
      <div class="traitblanc"></div>
      <div class="mt-auto mb-auto text-center">2022 SITE WEB PAR WASSEL AZZOUZ</div>
      <div class="traitblanc"></div>
      <div class="mt-auto mb-auto text-center">CREER POUR LA SAE 301</div>
    </div>
  </footer>

</template>
