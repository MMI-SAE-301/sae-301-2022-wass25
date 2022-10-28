<script setup lang="ts">
import { supabase } from "@/supabase";
import MontreCarré from "./VueMontreCarré.vue";
import MontreRond from "./VueMontreRond.vue";
import { user } from "@/supabase";

const props = defineProps<{
    max?: number;
}>();

let { data: Montre, error } = await supabase
    .from("lastmontre")
    .select("*")
    .limit(props.max ?? 100)

if (error) {
    console.log("erreur données Montre", { error });
}

</script>

<template>
    <ul>
        <li v-for="montres in Montre" :key="montres.id_montre">
            <router-link :to="{
                name: 'montre-id', params: { id: montres.id_montre }
            }">
                <div v-if="montres.id_user == user.id" class="carreee">
                    <div v-if="montres.forme == 'rond'" class="carreee">
                        <MontreRond class="present" v-bind="montres" />
                    </div>
                    <div v-else class="carreee">
                        <MontreCarré class="present" v-bind="montres" />
                    </div>
                </div>
            </router-link>
        </li>
    </ul>
</template>