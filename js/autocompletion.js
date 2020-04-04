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
                            $('#result').append('<div onclick="recupId(this)" class="liste" id="'+ Object.values(data[j])[i] +'">' + Object.values(data[j])[i] + '</div>');
                        }
                    }
                }
                if($('#search').val() == ""){
                    $('.liste').remove();
                }
            }
        })
    })
    $('#searchmain').keyup(function () {
        $.ajax({
            method: "GET",
            url: "auto.php",
            data: 'search=' + $('#searchmain').val(),
            datatype: "json",
            success: function (datatype) {
                var data = JSON.parse(datatype);
                // console.log(data);
                var valeur = $('#searchmain').val();
                $('#resultmain').empty();
                for (j = 0; j < data.length; ++j) {
                    for (i = 0; i < Object.values(data[j]).length; ++i) {
                        if ((Object.values(data[j])[i].toLowerCase()).includes(valeur.toLowerCase()) == true) {
                            $('#resultmain').append('<div onclick="recupIdMain(this)" class="listemain" id="'+ Object.values(data[j])[i] +'">' + Object.values(data[j])[i] + '</div>');
                        }
                    }
                }
                if($('#searchmain').val() == ""){
                    $('.listemain').remove();
                }
            }
        })
    })
})
function recupIdMain(divId){
    id = divId.id;
    $('#searchmain').val(id);
    $('.listemain').remove();
}
function recupId(divId){
    id = divId.id;
    $('#search').val(id);
    $('.liste').remove();
}