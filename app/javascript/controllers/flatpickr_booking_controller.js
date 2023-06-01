import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";

// Connects to data-controller="flatpickr-booking"
export default class extends Controller {
  static targets = ["date"]

  connect() {
    console.log("hello flatpickr booking")
    flatpickr(this.dateTarget, {altInput: true,
                                minDate: "today",
                                maxDate: new Date().fp_incr(365),
                                mode: "multiple"
                              })
  }

  register(event) {
    const date = this.dateTarget.value
    console.log(date)
    const arrayDate = date.split(",")
    console.log(arrayDate)
    // const endDate = this.startTimeTarget.value.split(" to ")[1]
    // this.listTarget.innerHTML = ""
    // if (endDate !== "" && startDate !== "") {
    //   if (endDate > startDate) {
    //     const numberDays = (new Date(endDate) - new Date(startDate))/ (1000 * 3600 * 24);
    //     this.listTarget.insertAdjacentHTML("beforeend",
    //                                         `<p>${price}€ x ${numberDays} days = ${price * numberDays}€ </p>`
    //     )} else {
    //     this.listTarget.insertAdjacentHTML("beforeend",
    //                                         `<p>Please select a valid date !</p>`
    //     )}
    // }
  }
}
