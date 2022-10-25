<script setup lang="ts">

import type { Montre } from "@/types";
import { ref } from "vue";
import { supabase } from "@/supabase";
import MontreCarré from "./VueMontreCarré.vue";
import MontreRond from "./VueMontreRond.vue";
import FormKitListColors from "./FormKitListColors.vue";

const props = defineProps(["id"]);
const Montres = ref<Montre>({});

async function upsertMontre(dataForm, node) {
    const { data, error } = await supabase.from("Montre").upsert(dataForm);
    if (error) node.setErrors([error.message]);
    else {
        node.setErrors([]);
        router.push({ name: "basket-edit-id", params: { id: data[0].id } });
    }
}

if (props.id) {
    let { data, error } = await supabase
        .from("Montre")
        .select("*")
        .eq("id_montre", props.id);

    if (error) console.log("n'a pas pu charger le table Montre :", error);
    else Montres.value = (data as any[])[0];
}

</script>



<template>
    <div>
        <div class="exemple">
            <MontreCarré class="carousel-item w-64" v-bind="Montres" id="profil" />
            <MontreRond class="carousel-item w-64" v-bind="Montres" id="dessus" />
        </div>

        <div>
            <FormKit type="form" v-model="Montres" @submit="upsertMontre" submit-label="Terminé">
                <div class="selection">
                    <FormKitListColors name="boitier1" label="Boitier1" />
                    <FormKitListColors name="boitier2" label="Boitier2" />
                    <FormKitListColors name="boitier_rond1" label="Boitier rond 1" value="#000000" />
                    <FormKitListColors name="boitier_rond2" label="Boitier rond 2" />
                    <FormKitListColors name="ecran" label="Ecran" value="#000000" />
                    <FormKitListColors name="bracelet" label="Bracelet" value="#000000" />
                    <FormKitListColors name="texte" label="texte" />
                </div>
            </FormKit>
        </div>
    </div>
</template>
