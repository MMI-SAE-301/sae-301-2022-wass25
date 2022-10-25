<script setup lang="ts">
import FormMontre from "../../components/FormMontre.vue";


defineProps({ id: String });
</script>



<template>
    <FormMontre :id="id" />

</template>