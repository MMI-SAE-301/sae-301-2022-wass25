<script setup lang="ts">
import { colors } from "@/types";
defineProps<{
    name: string,
    label: string,
}>();

</script>
<template>
    <FormKit :name="name" :label="label" value="#FFFFFF" type="radio" :options="colors" :sections-schema="{
        inner: { $el: null },
        decorator: { $el: null },
    }" input-class="peer sr-only" options-class="option">
        <template #label="context">
            <div class="h-10 w-10 rounded-full border-2 peer-checked:border-red-600 hover:scale-125 transition duration-500"
                :style="{ backgroundColor: context.option.value }"></div>
            <span class="sr-only">{{ context.option.label }}</span>
        </template>
    </FormKit>
</template>