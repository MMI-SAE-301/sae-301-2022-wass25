<template>
  <nav>
    <ul>
      <li>
        <router-link class="text-red-600 underline" to="/">
          Vos montres
        </router-link>
      </li>
      <li>
        <router-link class="text-red-600 underline" to="/montre/new">
          Votre montre sur mesure
        </router-link>
      </li>
    </ul>
  </nav>

  <!-- Affiche les pages -->
  <Suspense>

    <router-view class="tout" />

  </Suspense>

  <LoginLogout></LoginLogout>

</template>

<script setup lang="ts">
import LoginLogout from './components/LoginLogout.vue'
</script>
