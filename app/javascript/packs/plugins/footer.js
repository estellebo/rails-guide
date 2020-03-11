const fixFooter = () => {
  document.addEventListener("DOMContentLoaded", function (event) {
    let footer = document.getElementById('footer');
    let head = document.querySelector('body');
    if (head.offsetHeight < window.innerHeight) {
      footer.classList.add("footer-fixed");
    }
  }, false);
};

export { fixFooter };
