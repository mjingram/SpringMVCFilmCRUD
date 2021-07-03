const splash = document.querySelector('.splash-result');

document.addEventListener('DOMContentLoaded', (e)=>{
  setTimeout(()=>{
    splash.classList.add('display-none');
  }, 2000);
})



const resDiv = document.getElementById("resultsDiv");
const editDiv = document.getElementById("editDiv");
const deleteDiv = document.getElementById("deleteDiv");
const editBtn = document.getElementById("editBtn");
const deleteBtn = document.getElementById("deleteBtn");

function showEdit() {
  if (resDiv.style.display === "none") {
    resDiv.style.display = "block";
  } else {
    resDiv.style.display = "none";
    deleteDiv.style.display = "none";
    editDiv.style.display = "block";
    editBtn.innerText = "Query"
  }
}

function showDelete() {
  console.log("delete clicked");
  if (resDiv.style.display === "none") {
    console.log("inside if");
    resDiv.style.display = "block";
  } else {
    console.log("inside else");
    resDiv.style.display = "none";
    editDiv.style.display = "none";
    deleteDiv.style.display = "block";
    deleteBtn.innerText = "Query"
  }
}

function showEditToDelete() {

  resDiv.style.display = "none";
  editDiv.style.display = "none";
  deleteDiv.style.display = "block";

}

function showDeleteToEdit() {
console.log("delete clicked");
  deleteDiv.style.display = "none";
  resDiv.style.display = "none";
  editDiv.style.display = "block";
}
