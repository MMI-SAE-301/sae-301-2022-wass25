<script setup lang="ts">

import { TabGroup, TabList, Tab, TabPanels, TabPanel } from '@headlessui/vue';
import type { Montre } from "@/types";
import { ref } from "vue";
import { supabase } from "@/supabase";
import MontreCarré from "./VueMontreCarré.vue";
import MontreRond from "./VueMontreRond.vue";
import FormKitListColors from "./FormKitListColors.vue";

const props = defineProps(["id"]);
const Montres = ref<Montre>({});

async function upsertMontre(dataForm, node) {
    dataForm.date = Date.now()
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



    <div class="formulaire">
        <FormKit class="envoyer" type="form" v-model="Montres" @submit="upsertMontre" submit-label="ACHETER"
            submit-id="envoyer">

            <TabGroup vertical as="div" class="grid grid-cols-[200px_minmax(300px,_1fr)] gap-4" id="grannd">
                <TabList class="flex flex-col gap-9" id="tab">
                    <Tab class="y">FORME</Tab>
                    <Tab class="y">ECRAN</Tab>
                    <Tab class="y">BOITIER 1</Tab>
                    <Tab class="y">BOITIER 2</Tab>
                    <Tab class="y">BRACELET</Tab>
                    <Tab class="y">BOITIER ROND 1</Tab>
                    <Tab class="y">BOITIER ROND 2</Tab>
                    <Tab class="y">TEXTE</Tab>
                </TabList>
                <TabPanels>
                    <TabPanel static>
                        <TabGroup>
                            <TabList static class="hidden ui-selected:block">
                                <Tab>CARRE</Tab>
                                <Tab>ROND</Tab>
                            </TabList>
                            <TabPanels>
                                <TabPanel>
                                    <MontreCarré class="montree" v-bind="Montres" id="rond" />
                                </TabPanel>
                                <TabPanel>
                                    <MontreRond class="montree" v-bind="Montres" id="rond" />
                                </TabPanel>
                            </TabPanels>
                        </TabGroup>
                    </TabPanel>
                    <TabPanel static class="hidden ui-selected:block">
                        <FormKitListColors name="ecran" />
                        <FormKit name="ecran" type="color" />
                    </TabPanel>

                    <TabPanel static class="hidden ui-selected:block transition duration-150">
                        <FormKitListColors name="boitier1" />
                        <FormKit name="boitier1" type="color" />
                    </TabPanel>

                    <TabPanel static class="hidden ui-selected:block transition duration-150">
                        <FormKitListColors name="boitier2" />
                        <FormKit name="boitier2" type="color" />
                    </TabPanel>

                    <TabPanel static class="hidden ui-selected:block">
                        <FormKitListColors name="bracelet" />
                        <FormKit name="bracelet" type="color" />
                    </TabPanel>

                    <TabPanel static class="hidden ui-selected:block">
                        <FormKitListColors name="boitier_rond1" />
                        <FormKit name="boitier_rond1" type="color" />
                    </TabPanel>

                    <TabPanel static class="hidden ui-selected:block">
                        <FormKitListColors name="boitier_rond2" />
                        <FormKit name="boitier_rond2" type="color" />
                    </TabPanel>

                    <TabPanel static class="hidden ui-selected:block">
                        <FormKitListColors name="texte" />
                        <FormKit name="texte" type="color" />
                    </TabPanel>

                </TabPanels>
            </TabGroup>

        </FormKit>
    </div>

</template>


