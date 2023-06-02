import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";


// Connects to data-controller="flatpickr"
export default class extends Controller {
  static values = { bookings: Array, unavailabilities: Array };
  static targets = ["startTime", "endTime", "list", "price", "from", "to", "bookings", "unavailabilities"];

  connect() {
    const arrayBooking = JSON.parse(this.bookingsTarget.dataset.flatpickrBookingsValue)
    const bookingsDisabled = arrayBooking.map((booking) => ({
      from: booking.start_date,
      to: booking.end_date
    }));
    const unavailabilities = JSON.parse(this.unavailabilitiesTarget.dataset.flatpickrUnavailabilitiesValue)
    unavailabilities.forEach((element)=> {bookingsDisabled.push(element)} )

    flatpickr(this.startTimeTarget, {altInput: true,
                                    minDate: "today",
                                    maxDate: new Date().fp_incr(365),
                                    mode: "range",
                                    plugins: [new rangePlugin({ input: "#end_time"})],
                                    disable: bookingsDisabled
                                  })
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
                                            `<p>${price}€ x ${numberDays} days = ${price * numberDays}€ </p>`
        )} else {
        this.listTarget.insertAdjacentHTML("beforeend",
                                            `<p>Please select two days at least !</p>`
        )}
    }
  }

  disableDates() {

  }
}
