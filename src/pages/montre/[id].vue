<script setup lang="ts">
import FormMontre from "../../components/FormMontre.vue";



defineProps({ id: String });
</script>



<template>
    <div class="flex justify-between m-4">
        <div>
            <Router-link to="/">
                <img class="accueil" src="../../../public/images/logo_noir.png" alt="">
            </Router-link>
        </div>
        <div class="mt-auto mb-auto text-xl">VOTRE MONTRE SUR MESURE</div>
        <div class="mt-auto mb-auto">
            <Router-link to="/Connexion">
                <img class="accueil" src="../../../public/images/icons8-user-menu-male-50.png" alt="">
            </Router-link>
        </div>
    </div>
    <div class="flex">
        <div>
            <img class="main" src="/images/main.png" alt="">
        </div>
        <div>
            <FormMontre :id="id" />
        </div>
    </div>
    <p class="previs">PREVISUALISATION</p>
    <div class="trait">

    </div>

</template>