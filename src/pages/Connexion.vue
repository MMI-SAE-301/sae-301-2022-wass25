<script setup lang="ts">

import LoginLogout from '@/components/LoginLogout.vue';

</script>

<template>
    <div>
        <Router-link to="/">
            <img class="accueil" src="/images/logo_noir.png" alt="">
        </Router-link>
        <div class="mt-auto mb-auto text-center">S'AUTHENTIFIER</div>
    </div>

    <div>
        <LoginLogout></LoginLogout>
    </div>

</template>