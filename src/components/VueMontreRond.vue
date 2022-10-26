<script setup lang="ts">

import type { Montre } from "@/types"

withDefaults(defineProps<Montre>(), {
    bracelet: "white",
    boitier1: "white",
    boitier2: "white",
    boitier3: "white",
    boitier_rond: "white",
    ecran: "white",
    texte: "white",

});

</script>


<template>
    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 1366 768">
        <defs>
        </defs>
        <g id="bracelet">
            <path class="bracelet"
                d="M550.41,73.36S602.58,53.07,649,54.52s95.65,15.94,95.65,15.94-29,271-26.09,349.28S746.06,727,746.06,727s-47.83,21.73-92.76,18.84-97.1-17.4-97.1-17.4S580.09,489.3,580.09,395.1,550.41,73.36,550.41,73.36Z"
                :fill="bracelet" stroke="black" />
            <path class="bracelet"
                d="M509.83,199.45S549,127,544.61,73.36c0,0,17.39-27.53,102.9-27.53S757.65,64.67,757.65,64.67s14.8,110.14,35.09,130.43c0,0-96,18.84-148.13,18.84S509.83,199.45,509.83,199.45Z"
                :fill="bracelet" stroke="black" />
            <path class="bracelet"
                d="M795.14,607.79s-41.87,70.92-39.57,124.67c0,0-18.43,26.85-103.87,23.59s-109.35-23-109.35-23S531.76,622.4,512.26,601.35c0,0,96.61-15.17,148.74-13.18S795.14,607.79,795.14,607.79Z"
                :fill="bracelet" stroke="black" />
        </g>
        <g id="boitier">
            <rect class="boitier1" x="459.42" y="176.21" width="379.91" height="453.62" rx="80.8" :fill="boitier1"
                stroke="black" />
            <rect class="boitier2" x="478.69" y="201.63" width="341.37" height="402.78" rx="72.17" :fill="boitier2" />
            <rect class="boitier3" x="497.6" y="218.1" width="303.55" height="369.83" rx="65.21" :fill="boitier3" />
        </g>
        <g id="boitier_rond" data-name="boitier rond">
            <path class="boitier_rond"
                d="M653.73,637.22a238.06,238.06,0,1,1,168.34-69.73A236.48,236.48,0,0,1,653.73,637.22Z"
                :fill="boitier_rond1" />
            <path
                d="M653.73,161.23a237.21,237.21,0,1,1-92.61,18.7,236.45,236.45,0,0,1,92.61-18.7m0-.25c-131.54,0-238.18,106.64-238.18,238.18S522.19,637.34,653.73,637.34,891.92,530.71,891.92,399.16,785.28,161,653.73,161Z" />
            <path class="cls-36" d="M653.73,619.54A220.37,220.37,0,1,1,809.57,555,218.94,218.94,0,0,1,653.73,619.54Z"
                :fill="boitier_rond2" />
            <path
                d="M653.73,178.9A219.58,219.58,0,1,1,568,196.21a219,219,0,0,1,85.73-17.31m0-.25c-121.78,0-220.5,98.73-220.5,220.51S532,619.67,653.73,619.67s220.51-98.73,220.51-220.51S775.52,178.65,653.73,178.65Z" />
            <circle class="ecran" cx="653.73" cy="399.16" r="194.53" :fill="ecran" />
        </g>
        <g id="info" :fill="texte" stroke="black">
            <text class="cls-37" transform="translate(519.13 375.35)">1O:1O</text>
            <text class="cls-38" transform="translate(568.44 267.61)">
                <tspan xml:space="preserve">Lun. 24 oct.</tspan>
            </text>
            <text class="cls-38" transform="translate(594.51 557.03)">TiK•TaK</text>
        </g>
    </svg>
</template>

<style>
.cls-12,
.cls-13,
.cls-14,
.cls-15,
.cls-16,
.cls-17,
.cls-18,
.cls-19,
.cls-20,
.cls-21,
.cls-22,
.cls-23,
.cls-24,
.cls-25,
.cls-26 {
    mix-blend-mode: screen;
}

.cls-13,
.cls-14,
.cls-15,
.cls-18,
.cls-32 {
    opacity: 0.8;
}


.cls-34,
.cls-35 {
    stroke: #000;
    stroke-miterlimit: 10;
    stroke-width: 0.5px;
}

.cls-37 {
    font-size: 98px;
    letter-spacing: -0.11em;
}

.cls-37,
.cls-38 {
    font-family: ArialMT, Arial;
}

.cls-38 {
    font-size: 30px;
    letter-spacing: -0.01em;
    font-style: oblique;
}
</style>