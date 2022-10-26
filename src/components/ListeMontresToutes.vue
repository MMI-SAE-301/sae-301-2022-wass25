<script setup lang="ts">
import { supabase } from "@/supabase";
import MontreCarré from "./VueMontreCarré.vue";
import MontreRond from "./VueMontreRond.vue";

const props = defineProps<{
    max?: number;
}>();

let { data: Montre, error } = await supabase
    .from("Montre")
    .select("*")
    .limit(props.max ?? 100)

if (error) {
    console.log("erreur données Montre", { error });
}
</script>

<template>
    <ul>
        <li class="text-center justify-center" v-for="montres in Montre" :key="montres.id_montre">
            <router-link :to="{
                name: 'montre-id', params: { id: montres.id_montre }
            }">
                <div class="">
                    <MontreRond class="petit" v-bind="montres" />
                </div>
            </router-link>
        </li>
    </ul>
</template>