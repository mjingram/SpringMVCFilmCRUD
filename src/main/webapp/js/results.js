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
const resSpeech = document.getElementById("resSpeech");
const editSpeech = document.getElementById("editSpeech");
const deleteSpeech = document.getElementById("deleteSpeech");

function showEdit() {
  if (resDiv.style.display === "none") {
    resDiv.style.display = "block";
    resSpeech.style.display ="block";
  } else {
    resDiv.style.display = "none";
    deleteDiv.style.display = "none";
    editDiv.style.display = "block";
    editBtn.innerText = "Query";
    resSpeech.style.display = "none";
    editSpeech.style.display = "block";
    deleteSpeech.style.display = "none";
  }
}

function showDelete() {
  console.log("delete clicked");
  if (resDiv.style.display === "none") {
    console.log("inside if");
    resDiv.style.display = "block";
    resSpeech.style.display = "block";
  } else {
    console.log("inside else");
    resDiv.style.display = "none";
    editDiv.style.display = "none";
    deleteDiv.style.display = "block";
    deleteBtn.innerText = "Query";
    resSpeech.style.display = "none";
    editSpeech.style.display = "none";
    deleteSpeech.style.display = "block";
  }
}

function showEditToDelete() {

  resDiv.style.display = "none";
  editDiv.style.display = "none";
  deleteDiv.style.display = "block";
  
  resSpeech.style.display = "none";
  editSpeech.style.display = "none";
  deleteSpeech.style.display = "block";
  

}

function showDeleteToEdit() {
console.log("delete clicked");
  deleteDiv.style.display = "none";
  resDiv.style.display = "none";
  editDiv.style.display = "block";
  
  resSpeech.style.display = "none";
  deleteSpeech.style.display = "none";
  editSpeech.style.display = "block";
}
