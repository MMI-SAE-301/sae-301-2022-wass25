<script setup lang="ts">

import LoginLogout from '@/components/LoginLogout.vue';

</script>

<template>
    <div class="flex m-4">
        <div>
            <Router-link to="/Accueil">
                <img class="accueil" src="../../public/images/logo noir.png" alt="">
            </Router-link>
        </div>
        <div class="mt-auto mb-auto justify-center">S'AUTHENTIFIER</div>
    </div>

    <LoginLogout></LoginLogout>

</template>