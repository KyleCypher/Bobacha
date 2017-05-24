$(document).ready(
    function () {




        $.ajax({
            async: true,
            url: '../drinksofthemonth.txt',
            dataType: 'text',
            success: function (data) {

                showData = data.replace(/^/, "<textarea rows = 5 cols = 50>").replace(/$/gm, "")




                swal({
                    title: "Flavors of The Month",
                    html: showData,
                    showCancelButton: true,
                    confirmButtonText: "Save",
                    cancelButtonText: "Cancel",
                    closeOnCancel: true
                }, function (isConfirm) {
                    if (isConfirm) {

                        // Fire off the request to /form.php
                        request = $.ajax({
                            url: "/form.php",
                            type: "post",
                            data: data
                        });

                        // Callback handler that will be called on success
                        request.done(function (response, textStatus, jqXHR) {
                            // Log a message to the console
                            console.log("Hooray, it worked!");
                        });

                        // Callback handler that will be called on failure
                        request.fail(function (jqXHR, textStatus, errorThrown) {
                            // Log the error to the console
                            console.error(
                                "The following error occurred: " +
                                textStatus, errorThrown
                            );
                        });
                      
                    }
                });
            }
        })
    })
