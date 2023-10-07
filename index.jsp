<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <style>
    #image-container {
      width: 200px;
      height: 200px;
      border: 1px solid black;
    }
  </style>
</head>
<body>
  <h1> Clothing Detector</h1>
  <label for="file-input">Choose file to upload</label>
  <input type="file" id="file-input">
  <div id="image-container"></div>

  <input type="submit" value="Submit">

  <script>
    const fileInput = document.getElementById('file-input');
    const imageContainer = document.getElementById('image-container');
    const submitButton = document.querySelector('input[type="submit"]');

    fileInput.addEventListener('change', () => {
      const file = fileInput.files[0];

      // Display the image in the image container.
      imageContainer.innerHTML = `<img src="${file.name}" alt="Image">`;
    });

    submitButton.addEventListener('click', () => {
      // Submit the form with the file attached.
      const formData = new FormData();
      formData.append('clothingImage', fileInput.files[0]);

      const xhr = new XMLHttpRequest();
      xhr.open('POST', '/upload');
      xhr.send(formData);
    });
  </script>
</body>
</html>


