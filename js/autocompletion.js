$(document).ready(function () {
    $('#search').keyup(function () {
        $.ajax({
            method: "GET",
            url: "auto.php",
            data: 'search=' + $('#search').val(),
            datatype: "json",
            success: function (datatype) {
                var data = JSON.parse(datatype);
                // console.log(data);
                var valeur = $('#search').val();
                $('#result').empty();
                for (j = 0; j < data.length; ++j) {
                    for (i = 0; i < Object.values(data[j]).length; ++i) {
                        if ((Object.values(data[j])[i].toLowerCase()).includes(valeur.toLowerCase()) == true) {
                            $('#result').append('<div class="liste" id="">' + Object.values(data[j])[i] + '</div>');
                        }
                    }
                }
            }
        })
    })

})
