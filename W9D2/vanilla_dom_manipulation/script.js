document.addEventListener("DOMContentLoaded", () => {
  // toggling restaurants

  const toggleLi = (e) => {
    const li = e.target;
    if (li.className === "visited") {
      li.className = "";
    } else {
      li.className = "visited";
    }
  };

  document.querySelectorAll("#restaurants li").forEach((li) => {
    li.addEventListener("click", toggleLi);
  });



  // adding SF places as list items

  const favSubmit = (event) => {
    event.preventDefault();
    
    const favInput = document.querySelector('.favorite-input');
    const fav = favInput.value;
    favInput.value = '';

    const newLi = document.createElement('li');
    newLi.textContent = fav;

    const favsList = document.getElementById('sf-places');
    favsList.appendChild(newLi);
  }

  const listSubmit = document.querySelector('.favorite-submit');
  listSubmit.addEventListener('click', favSubmit);



  // adding new photos

  const showPhotoForm = (event) => {
    const photoFormDiv = document.querySelector('.photo-form-container');
    if (photoFormDiv.className === 'photo-form-container') {
      photoFormDiv.className = 'photo-form-container hidden';
    } else {
      photoFormDiv.className = 'photo-form-container';
    }
  };

  



});
