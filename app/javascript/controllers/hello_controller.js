import { Controller } from "stimulus";

export default class extends Controller {
    static targets = [ "list" ]

    addHelloWorld() {
        const listEl = this.listTarget;
        let itemEl = document.createElement("li");
        itemEl.innerHTML = "Hello world from a Stimulus controller!";
        listEl.appendChild(itemEl);
    }
}