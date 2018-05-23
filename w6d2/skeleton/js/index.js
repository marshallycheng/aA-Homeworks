console.log("Hello from the JavaScript console!");

// Your AJAX request here
$.ajax({
  type: 'GET',
  url: 'http://api.openweathermap.org/data/2.5/weather' +
  	'?q=London,uk&appid=bcb83c4b54aee8418983c2aff3073b3b',
  success(data) {
    console.log("We did it!")
    console.log(data);
  },
  error() {
    console.error("An error occurred.");
  },
});

console.log("All finished with AJAX.")

// Add another console log here, outside your AJAX request
