/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).ready(function () {
    // the "href" attribute of .modal-trigger must specify the modal ID that wants to be triggered
    $('#openModal').click(function () {
        $('#modal1').openModal({
            dismissible: true,
            opacity: 0.8, // Opacity of modal background
            in_duration: 300, // Transition in duration
            out_duration: 200 // Transition out duration
        });
    });

    $('input#input_text, textarea#textarea1').characterCounter();
    $('#openModalReg').click(function () {
        $('#modal2').openModal({
            dismissible: true,
            opacity: 0.8, // Opacity of modal background
            in_duration: 300, // Transition in duration
            out_duration: 200 // Transition out duration


        });
    });
    $('#modalValideBtnReg').click(function () {
        $('#modal2').closeModal();
    });

    $('#login_val_btn').click(function () {
        var login = $('#login').val();
        var pass = $('#motDePasse').val();
        var url = "http://localhost:8080/Projet_LO54/login";
        $.ajax({
            type: "POST",
            url: url,
            data: {login: login, motDePasse: pass},
            success: success,
            dataType: dataType
        });
        /*$.post(url, {login: login, motDePasse: pass})
                .done(function (data) {
                    alert("Data Loaded: " + data);
        });*/
    });
    
    $('#sessionSearchBtn').click(function(){
        var motCle = $('#motCle').val();
        var date = $('#data').val();
        var lieu = $('#listeVille option:selected').text();
        var url = "http://localhost:8080/Projet_LO54/catalogue";
        $('#modal1').closeModal();
        $.ajax({
            type: "POST",
            url: url,
            data: {motCle:motCle, date:date, lieu:lieu},
            success: function(){alert("Succes");},
            dataType: dataType
        });
        
    });


});

