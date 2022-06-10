

window.addEventListener('load',()=>{
  alignMagicCircles();
});

const alignMagicCircles=()=>{
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

  })
};


