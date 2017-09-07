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
  const addNewFavorite = (event) => {
    event.preventDefault();

    const favInput = document.querySelector(".favorite-input");
    const favInputText = favInput.value;
    favInput.value = "";

    const newLi = document.createElement("li");
    newLi.textContent = favInputText;

    const favUl = document.getElementById("sf-places");
    favUl.appendChild(newLi);
  };

  document.querySelector(".favorite-submit").addEventListener("click", addNewFavorite);


  // Toggle photo form
  const showForm = (event) => {
    const formDiv = document.querySelector(".photo-form-container");
    if (formDiv.className === "photo-form-container") {
      formDiv.className = "photo-form-container hidden";
    } else {
      formDiv.className = "photo-form-container";
    }
  };

  const showFormButton = document.querySelector(".photo-show-button");
  showFormButton.addEventListener("click", showForm);

  // adding new photos
  const addPhoto = (event) => {
    event.preventDefault();

    const photoUrlInput = document.querySelector(".photo-url-input");
    const photoUrl = photoUrlInput.value;
    photoUrlInput.value = "";

    const newImg = document.createElement("img");
    newImg.src = photoUrl;

    const newPhotoLi = document.createElement("li");
    newPhotoLi.appendChild(newImg);

    const photosUl = document.querySelector(".dog-photos");
    photosUl.appendChild(newPhotoLi);
  };

  document.querySelector(".photo-url-submit").addEventListener("click", addPhoto);


});
