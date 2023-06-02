import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";

// Connects to data-controller="flatpickr-booking"
export default class extends Controller {
  static values = { bookings: Array, unavailabilities: Array };
  static targets = ["date", "bookings", "unavailabilities"]

  connect() {
    const arrayBooking = JSON.parse(this.bookingsTarget.dataset.flatpickrBookingBookingsValue)
    const bookingsDisabled = arrayBooking.map((booking) => ({
      from: booking.start_date,
      to: booking.end_date
    }));
    const unavailabilities = JSON.parse(this.unavailabilitiesTarget.dataset.flatpickrBookingUnavailabilitiesValue)
    unavailabilities.forEach((element)=> {bookingsDisabled.push(element)} )
    flatpickr(this.dateTarget, {altInput: true,
                                minDate: "today",
                                maxDate: new Date().fp_incr(365),
                                mode: "multiple",
                                disable: bookingsDisabled
                              })
  }

  register(event) {
    const date = this.dateTarget.value
    const arrayDate = date.split(",")
  }
}
