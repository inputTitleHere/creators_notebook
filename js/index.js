


// Aligns small magic circles to the corner of magic box.
const alignMagicCircles=()=>{
  // move circles only containing ".outwards" class
  const outwards = document.querySelectorAll('.outwards');
  outwards.forEach((item)=>{
    const [ , className] = item.classList;
    switch (className) {
      case "tl":
        item.style.transform="translate(-50px, -50px)";
        return;
      case "tr":
        item.style.transform="translate(50px, -50px)";
        return;
      case "bl":
        item.style.transform="translate(-50px, 50px)";
        return;
      case "br":
        item.style.transform="translate(50px, 50px)";
        return;
    }
  });
};

const setInfoHeight=()=>{
  const purposeWrapperHeight = document.querySelector(".purpose-wrapper").clientHeight;

  document.querySelector(".bottom-cover").style.height=`${purposeWrapperHeight}px`;
};

const triggerLoginAction=()=>{
  // this method aims to create a warping circle effect for the login button on click.
  const darkMagic = document.querySelector(".dark-magic");
  darkMagic.classList.remove('dark-magic');
  darkMagic.classList.add('dark-magic-enlarge');

  const loginElement = document.querySelector("#login");
  loginElement.style.cursor="default";
  loginElement.style.pointerEvents="none";

  setTimeout(() => {
    const loginWindowWrapper = document.querySelector(".login-window-wrapper");
    loginWindowWrapper.classList.add('login-window-wrapper-enlarge');
  }, 300);

  setTimeout(() => {
    darkMagic.classList.add('dark-magic-after');
  }, 400);

};


/*! addEventListener Area */
window.addEventListener('load',()=>{
  alignMagicCircles();
  setInfoHeight();

  login.addEventListener('click',()=>{
    triggerLoginAction();
  });
});

window.addEventListener('resize',()=>{
  setInfoHeight();
});


