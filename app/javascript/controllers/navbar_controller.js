import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["menu"];

  toggle(event) {
    // Toggle the "show" class on the menu
    this.menuTarget.classList.toggle("show");

    // Update the aria-expanded attribute dynamically
    const isExpanded = this.menuTarget.classList.contains("show");
    event.currentTarget.setAttribute("aria-expanded", isExpanded);
  }
}
