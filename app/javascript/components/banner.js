import Typed from 'typed.js';

  const loadDynamicBannerText = () => {
    new Typed('#banner-typed-text', {
      strings: ["into the dark.", "in the graveyard.", "into the dark forest.", "in the underground vault."],
      typeSpeed: 60,
      loop: true
    });
  }

export { loadDynamicBannerText };

