// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

$(document).ready(function() {
    // Attach event listener to the delete button
    $(".delete_button form").on("submit", function(e) {
    // Display the confirmation popup
    if (!confirm("Are you sure you want to delete this entry?")) {
        e.preventDefault(); // Cancel form submission if user cancels
    }
    });
});