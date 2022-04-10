import { Controller } from "@hotwired/stimulus"

export default class extends Controller {

  static targets = ["output"]

  connect() {
    console.log("Stimulus Connected")
  }

  delete() {
    console.log("button found")
  }

}
