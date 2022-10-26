<template>

  <!-- Affiche les pages -->
  <Suspense>

    <router-view class="tout" />

  </Suspense>

  <footer>
    <div class="fin">
      <div>
        <img class="accueil" src="../public/images/logo blanc.png" alt="">
      </div>
      <div class="mt-auto mb-auto">COPYRIGHT <br> MMI MONTBELIARD</div>
      <div>
        <img class="accueil" src="../public/images/Calque 1.png" alt="">
      </div>
    </div>
  </footer>

</template>
