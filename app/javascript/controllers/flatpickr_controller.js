import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";


// Connects to data-controller="flatpickr"
export default class extends Controller {
  static targets = ["startTime", "endTime", "list", "price"];

  connect() {
    flatpickr(this.startTimeTarget, {altInput: true, minDate: "today", maxDate: new Date().fp_incr(365), mode: "range",plugins: [new rangePlugin({ input: "#end_time"})]})
    flatpickr(this.endTimeTarget, {altInput: true, minDate: "today", maxDate: new Date().fp_incr(365), mode: "range"})
  }

  calculate(event) {
    const price = this.priceTarget.innerText
    const startDate = this.startTimeTarget.value.split(" to ")[0]
    const endDate = this.startTimeTarget.value.split(" to ")[1]
    this.listTarget.innerHTML = ""
    if (endDate !== "" && startDate !== "") {
      if (endDate > startDate) {
        const numberDays = (new Date(endDate) - new Date(startDate))/ (1000 * 3600 * 24);
        this.listTarget.insertAdjacentHTML("beforeend",
                                            `<p>${price}€ x ${numberDays} = ${price * numberDays} </p>`
        )} else {
        this.listTarget.insertAdjacentHTML("beforeend",
                                            `<p>Please select a valid date !</p>`
        )}
    }
  }
}
