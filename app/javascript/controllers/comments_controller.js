import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  
  initialize() {
    // console.log("initialized!")
  }
  
  connect(event) {
    // this.element.textContent = "Hello World!"
    // console.log("Hello Shakir!")
  }

  toggleForm(event) {
    console.log("i clicked the edit button!")
    event.preventDefault();
    event.stopPropagation();
    const formId = event.params["form"];
    const formBodyId = event.params["body"];

    // comment form
    const form = document.getElementById(formId);
    form.classList.toggle("d-none");
    form.classList.toggle("mt-5");

    // body text
    const commentBody = document.getElementById(formBodyId);
    commentBody.classList.toggle("d-none");
  }
}
