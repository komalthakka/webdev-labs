let headerFontSize = 2.0;
let contentFontSize = 1.0;

const makeBigger = () => {
   headerFontSize = headerFontSize + .2;
   contentFontSize = contentFontSize + .2;
   document.querySelector("h1").style.fontSize = headerFontSize.toString() + 'em';
   document.querySelector("p").style.fontSize = contentFontSize.toString() + 'em';
};

const makeSmaller = () => {
   headerFontSize = headerFontSize - .2;
   contentFontSize = contentFontSize - .2;
   document.querySelector("h1").style.fontSize = headerFontSize.toString() + 'em';
   document.querySelector("p").style.fontSize = contentFontSize.toString() + 'em';
};


document.querySelector("#a1").addEventListener('click', makeBigger);
document.querySelector("#a2").addEventListener('click', makeSmaller);
