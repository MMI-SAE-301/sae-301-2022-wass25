<script setup lang="ts">

import MontreCarré from "../../src/components/VueMontreCarré.vue";
import MontreRond from "../../src/components/VueMontreRond.vue"
import ListeMontre from "../components/ListeMontres.vue"
import ListeMontreToute from "../components/ListeMontresToutes.vue"
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
    <div class="mt-auto mb-auto">
      <Router-link to="/Connexion">
        <img class="accueil" src="../../public/images/icons8-user-menu-male-50.png" alt="">
      </Router-link>
    </div>
  </div>
  <div class="text-center -mt-20 mb-20">VOS MONTRES</div>
  <section v-if="user">
    <h2 class="text-center -mb-10">
      VOS DERNIERES CREATIONS
    </h2>
    <ListeMontre class="flex justify-center gap-20 pt-20" :max="3" />
    <h2 class="text-center pt-16 -mb-10">TOUTES VOS MONTRES</h2>
    <ListeMontreToute class="grid grid-cols-5 gap-1 pt-20 -mb-9" :max="40" />
  </section>


</template>