import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Add you favorite cocktail here"],
    typeSpeed: 80,
    loop: true
  });
}

export { loadDynamicBannerText };
