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
    const editButtonId = event.params["edit"];

    // comment form
    const form = document.getElementById(formId);
    const commentBody = document.getElementById(formBodyId);
    const editButton = document.getElementById(editButtonId);

    // edit form
    form.classList.toggle("d-none");
    form.classList.toggle("mt-5");
    // hide comment body on edit
    commentBody.classList.toggle("d-none");
    //edit button text
    this.toggleEditButtonText(editButton)
  }

  toggleEditButtonText(editButton){
    if (editButton.innerText === "Edit")
    {
      editButton.innerText = "Cancel";
      this.toggleEditButtonClass(editButton);
    }
    else{
      editButton.innerText = "Edit";
      this.toggleEditButtonClass(editButton);
    }

  }

  toggleEditButtonClass(editButton){
    editButton.classList.toggle("btn-secondary");
    editButton.classList.toggle("btn-warning");
  }
}
