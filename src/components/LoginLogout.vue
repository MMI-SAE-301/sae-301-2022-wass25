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
        <button v-if="user" @pointerdown="supabase.auth.signOut()">
            Se déconnecter ({{ user.email }})
        </button>
        <button v-else @pointerdown="supabase.auth.signIn({ provider: 'facebook' })">
            Se connecter avec Facebook
        </button>

    </div>
</template>