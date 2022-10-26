<script setup lang="ts">

import MontreCarré from "../../src/components/VueMontreCarré.vue";
import MontreRond from "../../src/components/VueMontreRond.vue"
import ListeMontre from "../components/ListeMontres.vue"
import { user } from "@/supabase";



</script>




<template>
  <link rel="stylesheet" href="../index.css">
  <div class="flex justify-between m-4">
    <div>
      <Router-link to="/Accueil">
        <img class="accueil" src="../../public/images/logo noir.png" alt="">
      </Router-link>
    </div>
    <div class="mt-auto mb-auto">VOS MONTRES</div>
    <div class="mt-auto mb-auto">
      <Router-link to="/Connexion">
        <img class="accueil" src="../../public/images/icone.png" alt="">
      </Router-link>
    </div>
  </div>
  <section v-if="user">
    <h2 class="exemple">
      VOS DERNIERES CREATIONS
    </h2>
    <ListeMontre class="flex" :max="5" />
  </section>


</template>