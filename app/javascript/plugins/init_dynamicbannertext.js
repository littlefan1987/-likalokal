import Typed from 'typed.js';

const initDynamicBannerText = () => {
    new Typed('#banner-typed-text', {
      strings: ["into the dark.", "in the graveyard.", "into the dark forest.", "in the underground vault."],
      typeSpeed: 60,
      loop: true
    });
  }

export { initDynamicBannerText };
