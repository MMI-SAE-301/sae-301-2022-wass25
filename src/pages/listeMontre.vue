<script setup lang="ts">

import MontreCarrÃ© from "../components/VueMontreCarrÃ©.vue";
import MontreRond from "../components/VueMontreRond.vue"
import ListeMontre from "../components/ListeMontres.vue"
import ListeMontreToute from "../components/ListeMontresToutes.vue"
import { user } from "@/supabase";



</script>




<template>
    <link rel="stylesheet" href="../index.css">
    <div class="flex justify-between m-4">
        <div>
            <Router-link to="/">
                <img class="accueil" src="/images/logo_noir.png" alt="">
            </Router-link>
        </div>
        <div class="mt-auto mb-auto">
            <Router-link to="/Connexion">
                <img class="accueil" src="/images/icons8-user-menu-male-50.png" alt="">
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
    <section v-else>
        <router-link to="/Connexion">
            <h2 class="text-center -mb-10 mb-60 mt-56 hover:scale-150 transition duration-700">
                CONNECTER VOUS POUR VOIR VOS MONTRES
            </h2>
        </router-link>

    </section>


</template>