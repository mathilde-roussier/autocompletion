$(document).ready(function () {
    $('#search').keyup(function () {
        $.ajax({
            method: "GET",
            url: "auto.php",
            data: 'search=' + $('#search').val(),
            datatype: "json",
            success: function (datatype) {
                var data = JSON.parse(datatype);
                var valeur = $('#search').val();
                $('#result').empty();
                for (j = 0; j < data.length; ++j) {
                    for (i = 0; i < Object.values(data[j]).length; ++i) {
                        if ((Object.values(data[j])[i].toLowerCase()).includes(valeur.toLowerCase()) == true) {
                            if($('#'+i+'').html() != Object.values(data[j])[i]){
                                $('#result').append('<div onclick="recupId(this)" class="liste" id="'+ i +'">' + Object.values(data[j])[i] + '</div>');
                            }else{
                                break;
                            }
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
                var valeur = $('#searchmain').val();
                $('#resultmain').empty();
                for (j = 0; j < data.length; ++j) {
                    for (i = 0; i < Object.values(data[j]).length; ++i) {
                        if ((Object.values(data[j])[i].toLowerCase()).includes(valeur.toLowerCase()) == true) {
                            if($('#'+i+'').html() != Object.values(data[j])[i]){
                                $('#resultmain').append('<div onclick="recupIdMain(this)" class="listemain" id="'+ i +'">' + Object.values(data[j])[i] + '</div>');
                            }else{
                                break;
                            }
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
    id = divId.innerHTML;
    $('#searchmain').val(id);
    $('.listemain').remove();
}
function recupId(divId){
    id = divId.innerHTML;
    $('#search').val(id);
    $('.liste').remove();
}