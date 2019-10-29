<template>
  <div id="app">
    <div :class="$style['background-gradient']"></div>
    <div :class="$style['header']">
      <img
        :class="$style['q-sys-logo']"
        src="@/assets/logo-q-sys.png"
        alt="Q-SYS"
      />
      <p :class="$style['community-text']">Community</p>
    </div>
    <p :class="$style['from-text']">from</p>
    <img
      :class="$style['solo-works-logo']"
      src="@/assets/logo-solo-works.png"
      alt="Solo Works"
    />
    <p :class="$style['coming-soon-text']">Coming soon</p>
    <div :class="$style['foreground-gradient']"></div>
  </div>
</template>

<script lang="ts">
import Vue from 'vue';

export default Vue.extend({
  name: 'App',
});
</script>

<style lang="scss" module>
$gu: 0.8vh;

%text {
  color: white;
  font-family: sans-serif;
  letter-spacing: 0.2em;
  text-transform: uppercase;
}

@keyframes background-color {
  from {
    background-color: hsl(195, 50%, 50%);
  }
  to {
    background-color: hsl(180, 75%, 50%);
  }
}
@keyframes enter-high-opacity {
  from {
    opacity: 0;
    transform: scale(0.95);
  }
  to {
    opacity: 0.8;
    transform: scale(1);
  }
}
@keyframes enter-low-opacity {
  from {
    opacity: 0;
    transform: scale(0.95);
  }
  to {
    opacity: 0.5;
    transform: scale(1);
  }
}

* {
  margin: 0;
}

:global(#app) {
  -moz-osx-font-smoothing: grayscale;
  -webkit-font-smoothing: antialiased;
  align-items: center;
  animation: background-color 10s infinite alternate;
  display: flex;
  flex-direction: column;
  height: 100vh;
  justify-content: center;
}
.background-gradient {
  background: linear-gradient(135deg, transparent, hsla(240, 50%, 10%, 1));
  height: 100vh;
  position: absolute;
  width: 100vw;
}
.header {
  animation: enter-high-opacity 2s 1s both;
  margin-bottom: 8 * $gu;
  mix-blend-mode: difference;
  text-align: center;
}
.q-sys-logo {
  height: 10 * $gu;
  margin-bottom: 4 * $gu;
}
.community-text {
  @extend %text;
  font-size: 6 * $gu;
}
.from-text {
  @extend %text;
  animation: enter-low-opacity 2s 2s both;
  font-size: 3 * $gu;
  font-style: italic;
  margin-bottom: 8 * $gu;
}
.solo-works-logo {
  animation: enter-low-opacity 2s 3s both;
  height: 24 * $gu;
  margin-bottom: 16 * $gu;
}
.coming-soon-text {
  @extend %text;
  animation: enter-high-opacity 2s 5s both;
  font-size: 4 * $gu;
}
.foreground-gradient {
  background: linear-gradient(135deg, transparent, hsla(240, 50%, 10%, 0.25));
  height: 100vh;
  position: absolute;
  width: 100vw;
}
</style>
