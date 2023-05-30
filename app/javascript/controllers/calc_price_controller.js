import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="calc-price"
export default class extends Controller {
  static targets = ["start", "end", "list", "price"];

  connect() {
    console.log("hello console")
  }

  calculate(event) {
    const price = this.priceTarget.innerText
    const startDate = this.startTarget.value
    const endDate = this.endTarget.value
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
