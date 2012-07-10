function _after(response) { 
    if (response.success) {
        $.knotify.message("The widget has been updated correctly", "Data pushed", 3000);
    } else {
        $.knotify.message("There was an error updating the widget", "Data not pushed", 3000);
    }
} 
