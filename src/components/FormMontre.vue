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
        router.push({ name: "montre-edit-id", params: { id: data[0].id } });
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
            <MontreCarré class="carousel-item w-64" v-bind="Montres" id="carré" />
            <MontreRond class="carousel-item w-64" v-bind="Montres" id="rond" />
        </div>

        <div>
            <FormKit type="form" v-model="Montres" @submit="upsertMontre" submit-label="Terminé">
                <div class="selection">
                    <div class="flex gap-4">
                        <FormKitListColors name="boitier1" label="Boitier1" />
                        <FormKit name="boitier1" type="color" />
                    </div>
                    <div class="flex gap-4">
                        <FormKitListColors name="boitier2" label="Boitier2" />
                        <FormKit name="boitier2" type="color" />
                    </div>
                    <div class="flex gap-4">
                        <FormKitListColors name="boitier_rond1" label="Boitier rond 1" value="#000000" />
                        <FormKit name="boitier_rond1" type="color" />
                    </div>
                    <div class="flex gap-4">
                        <FormKitListColors name="boitier_rond2" label="Boitier rond 2" />
                        <FormKit name="boitier_rond2" type="color" />
                    </div>
                    <div class="flex gap-4">
                        <FormKitListColors name="ecran" label="Ecran" value="#000000" />
                        <FormKit name="ecran" type="color" />
                    </div>
                    <div class="flex gap-4">
                        <FormKitListColors name="bracelet" label="Bracelet" value="#000000" />
                        <FormKit name="bracelet" type="color" />
                    </div>
                    <div class="flex gap-4">
                        <FormKitListColors name="texte" label="texte" />
                        <FormKit name="texte" type="color" />
                    </div>
                </div>
            </FormKit>
        </div>
    </div>
</template>


