(() => {
  const menuToggle = document.querySelector("#menuToggle");
  const mobileNav = document.querySelector("#mobileNav");

  if (menuToggle && mobileNav) {
    menuToggle.addEventListener("click", () => {
      const expanded = menuToggle.getAttribute("aria-expanded") === "true";
      const nextExpanded = !expanded;
      menuToggle.setAttribute("aria-expanded", String(nextExpanded));
      mobileNav.hidden = !nextExpanded;
    });

    mobileNav.querySelectorAll("a").forEach((link) => {
      link.addEventListener("click", () => {
        menuToggle.setAttribute("aria-expanded", "false");
        mobileNav.hidden = true;
      });
    });
  }

  const year = document.querySelector("#year");
  if (year) year.textContent = new Date().getFullYear();
})();
