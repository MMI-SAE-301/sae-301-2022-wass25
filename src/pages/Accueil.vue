<template>
    <div class="">
        <img class="flex justify-center m-auto w-32 mb-4 mt-24" src="../../public/images/logo noir.png" alt="">
    </div>
    <div class="carré">
        <router-link to="/montre/id">
            <div class="oui">
                <img class="gauche" src="../../public/images/montre_gauche.png" alt="">
                <p class="votre">VOTRE</p>
                <p class="montre">MONTRE</p>
                <p class="sur">SUR</p>
                <p class="mesure">MESURE</p>
            </div>
        </router-link>
        <router-link to="/Connexion">
            <div class="oui1">
                <img class="milieu" src="../../public/images/connexion.png" alt="">
                <p class="connexion">S'AUTHENTIFIER</p>
            </div>
        </router-link>
        <router-link to="/">
            <div class="oui2">
                <img class="droite" src="../../public/images/montre_droit.png" alt="">
                <p class="vos1">VOS</p>
                <P class="vos2">MONTRES</P>
            </div>
        </router-link>

    </div>
</template>