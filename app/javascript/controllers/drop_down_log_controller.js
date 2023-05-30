import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="drop-down-log"
export default class extends Controller {
  connect() {
  }

  static targets = ["menu"]

  dropdown() {
    console.log('hello');
    this.menuTarget.classList.toggle("hide");
  }
}
