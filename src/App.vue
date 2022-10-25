<template>
  <nav>
    <li>
      <router-link class="text-red-600 underline" to="/Accueil">
        Accueil
      </router-link>
    </li>
    <ul>
      <li>
        <router-link class="text-red-600 underline" to="/">
          Vos montres
        </router-link>
      </li>
      <li>
        <router-link class="text-red-600 underline" to="/montre/id">
          Votre montre sur mesure
        </router-link>
      </li>
      <li>
        <router-link class="text-red-600 underline" to="/Connexion">
          S'authentifier
        </router-link>
      </li>
    </ul>
  </nav>

  <!-- Affiche les pages -->
  <Suspense>

    <router-view class="tout" />

  </Suspense>

</template>
