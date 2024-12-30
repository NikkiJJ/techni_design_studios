// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
//= require rails-ujs

import "@hotwired/turbo-rails"
import "controllers"
import "@popperjs/core"
import "bootstrap"
import "./stimulus-loading";



document.addEventListener("DOMContentLoaded", function () {
  const toggler = document.querySelector(".navbar-toggler");
  const bannerMenu = document.querySelector(".banner-menu");

  if (toggler && bannerMenu) {
    toggler.addEventListener("click", function () {
      bannerMenu.classList.toggle("show");
    });
  }
});
