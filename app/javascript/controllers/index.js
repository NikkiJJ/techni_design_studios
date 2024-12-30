// Import and register all your controllers from the importmap under controllers/*

import { application } from "./application"; // Ensure it points to the correct application.js file

// Eager load all controllers defined in the importmap under controllers/**/*_controller
import { eagerLoadControllersFrom } from "@hotwired/stimulus-loading";
eagerLoadControllersFrom(require.context("./", true, /_controller\.js$/));

// Lazy load controllers as they appear in the DOM
// Uncomment the line below if you prefer lazy loading controllers
// import { lazyLoadControllersFrom } from "@hotwired/stimulus-loading";
// lazyLoadControllersFrom(require.context("./", true, /_controller\.js$/));
