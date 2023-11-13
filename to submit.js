// Function to submit Farmer's form
function submitFarmerForm() {
    const farmerName = document.getElementById('farmerName').value;
    const productPicture = document.getElementById('productPicture').files[0];
    const productDetails = document.getElementById('productDetails').value;
    const productPrice = document.getElementById('productPrice').value;

    // Upload picture to Firebase Storage (you need to set up Firebase Storage for this)
    const storageRef = firebase.storage().ref('productPictures/' + productPicture.name);
    const pictureTask = storageRef.put(productPicture);

    pictureTask.then(snapshot => {
        snapshot.ref.getDownloadURL().then(downloadURL => {
            // Save farmer's information to the database
            const farmerData = {
                name: farmerName,
                pictureURL: downloadURL,
                details: productDetails,
                price: productPrice
            };
            database.ref('farmers').push(farmerData);
        });
    });
}

// Function to submit Consumer's form
function submitConsumerForm() {
    const consumerName = document.getElementById('consumerName').value;
    const productSearch = document.getElementById('productSearch').value;
    const quantity = document.getElementById('quantity').value;

    // Save consumer's information to the database
    const consumerData = {
        name: consumerName,
        productSearch: productSearch,
        quantity: quantity
    };
    database.ref('consumers').push(consumerData);
}
