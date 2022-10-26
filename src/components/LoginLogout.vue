<script setup lang="ts">
import { supabase, user } from '../supabase'

async function signInWithFacebook() {
    const { data, error } = await supabase.auth.signInWithOAuth({
        provider: 'facebook',
    })
}

async function signout() {
    const { error } = await supabase.auth.signOut()
}
</script>

<template>
    <div class="connexion">
        <button id="facebook" v-if="user" @pointerdown="supabase.auth.signOut()">
            Se déconnecter ({{ user.email }})
        </button>
        <button id="facebook" v-else @pointerdown="supabase.auth.signIn({ provider: 'facebook' })">
            <p class="fb1"> SE CONNECTER AVEC FACEBOOK </p><img class="fb" src="../../public/images/facebook.png"
                alt="" />
        </button>
        <button class="invisible" id="facebook" v-if="user" @pointerdown="supabase.auth.signOut()">
            Se déconnecter ({{ user.email }})
        </button>
        <button id="facebook" v-else @pointerdown="supabase.auth.signIn({ provider: 'google' })">
            <p class="fb1"> SE CONNECTER AVEC GOOGLE </p><img class="fb" src="../../public/images/google.png" alt="" />
        </button>

    </div>
</template>