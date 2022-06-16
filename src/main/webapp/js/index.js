


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
  // 이 버튼을 클릭하면 원형으로 나타나면서 마법효과를 내게 됩니다.
  const darkMagic = document.querySelector(".dark-magic");
  darkMagic.classList.remove('dark-magic');
  darkMagic.classList.add('dark-magic-enlarge');

  const loginElement = document.querySelector("section#login");
  loginElement.style.cursor="default";
  loginElement.style.pointerEvents="none";
  loginElement.removeEventListener('click', triggerLoginAction);

  const loginWindow = document.querySelector(".login-window");

  setTimeout(() => {
    const loginWindowWrapper = document.querySelector(".login-window-wrapper");
    loginWindowWrapper.classList.add('login-window-wrapper-enlarge');
  }, 300);

  setTimeout(() => {
    darkMagic.classList.add('dark-magic-after');
    loginWindow.classList.add('login-window-after');
  }, 400);

};

const cancelLoginAction=()=>{
  const loginWindow = document.querySelector(".login-window");
  const darkMagic = document.querySelector(".dark-magic-enlarge");
  const loginWindowWrapper = document.querySelector(".login-window-wrapper");

  loginWindowWrapper.classList.remove("login-window-wrapper-enlarge");
  darkMagic.classList.remove('dark-magic-after');
  setTimeout(() => {
    darkMagic.classList.remove('dark-magic-enlarge');
    darkMagic.classList.add('dark-magic');
  }, 200);
  setTimeout(() => {
    loginWindow.classList.remove('login-window-after');
    const loginElement = document.querySelector("section#login");
    loginElement.style.cursor="pointer";
    loginElement.style.pointerEvents="all";
    loginElement.addEventListener('click', triggerLoginAction);
  }, 300);
};

/*! addEventListener Area */

window.addEventListener('load',()=>{
  alignMagicCircles();
  setInfoHeight();

  login.addEventListener('click',triggerLoginAction);

});

window.addEventListener('resize',()=>{
  setInfoHeight();
});




const lph=()=>{
  alert("Login Button Pressed");
};
