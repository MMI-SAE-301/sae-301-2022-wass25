<script setup lang="ts">

import MontreCarré from "../../src/components/VueMontreCarré.vue";
import MontreRond from "../../src/components/VueMontreRond.vue"
import ListeMontre from "../components/ListeMontres.vue"
import { user } from "@/supabase";



</script>




<template>
  <link rel="stylesheet" href="../index.css">
  <div>
    <Router-link to="/Accueil">
      <img src="../../public/images/logo noir.png" alt="">
    </Router-link>
  </div>
  <section v-if="user">
    <h2 class="exemple">
      Vos dernières création
    </h2>
    <ListeMontre class="exemple" :max="5" />
  </section>


</template>