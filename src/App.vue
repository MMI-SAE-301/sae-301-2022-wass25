<template>
  <nav>
    <ul>
      <li>
        <router-link class="text-red-600 underline" to="/">
          Liste d'exemple
        </router-link>
      </li>
      <li>
        <router-link class="text-red-600 underline" to="/montre/new">
          Personnaliser une Basket
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
