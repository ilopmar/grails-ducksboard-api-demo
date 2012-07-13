function _after(response) { 
    if (response.success) {
        $.knotify.message("The widget has been updated correctly", "Data pushed", 3000);
    } else {
        $.knotify.message("There was an error updating the widget", "Data not pushed", 3000);
    }
} 

// Ajax post of the image
$("#fileToUpload").change(function() {
    var file = this.files[0];
    var xhr = new XMLHttpRequest();
    var url = $(this).attr('rel');
    xhr.open('POST', url, true);
    
    $('.spinner').removeClass('hidden');
    
    xhr.onload = function(e) {  
        var responseJSON = eval( "(" + xhr.response + ")" );
        $('.spinner').addClass('hidden');
        _after(responseJSON);
    } 
    xhr.send(file);
});
