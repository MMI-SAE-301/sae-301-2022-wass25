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
        <li v-for="montres in Montre" :key="montres.id_montre">
            <router-link :to="{ params: { id: montres.id_montre } }">
                <MontreRond class=" w-64" v-bind="montres" />
            </router-link>
        </li>
    </ul>
</template>