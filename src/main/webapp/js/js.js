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
    /* Requette Ajax de recherche*/
    $('#sessionSearchBtn').click(function(){
        $('#searchForm').submit();
        $('#modal1').closeModal();
        
    });
    /*$('#sessionSearchBtn').click(function () {
        reqParam = {
            motCle: null,
            date: null,
            lieu: null
        };
        var motCle = $('#motCle').val();
        var date = $('#date').val();
        var lieu = $('#listeVille option:selected').text();
        var url = "http://localhost:8080/Projet_LO54/search";
        reqParam.date = date;
        reqParam.motCle = motCle;
        reqParam.lieu = lieu;
        //alert("Data sent:"+reqParam.date+" " +reqParam.lieu);
        //alert("Requette sent to : " + url);
        $.ajax({
            type: "POST",
            url: url,
            data: reqParam,
            success: function () {
                        alert("Succes");
                        $('#modal1').closeModal();
                    },
            error: function () {
                alert("error :");
                $('#modal1').closeModal();
            },
            dataType: "html"
        });
    });
    */
    /*Requette Ajax d'inscripton*/
     $('#modalValideBtnReg').click(function () {
        $("#registerForm").submit();
    });
    
    


});

function submitForm(){
    Param = {
            firstName: null,
            lastName: null,
            address: null,
            phone: null,
            email:null,
            sessionId:null
        };
    var firstName= $('#first_name').val();
    var lastName = $('#last_name').val();
    var address = $('#adresse').val();
    var phone = $('#tel').val();
    var email = $('#email').val();
    var sessionId = $('#sessionId').val();
    var url = "http://localhost:8080/Projet_LO54/formation";
    Param.firstName = firstName;
    Param.lastName = lastName;
    Param.address = address;
    Param.phone = phone;
    Param.email = email;
    Param.sessionId = sessionId;
    //alert("Data sent:"+reqParam.date+" " +reqParam.lieu);
    //alert("Requette sent to : " + url);
    $.ajax({
        type: "POST",
        url: url,
        data: Param,
        success: function (msg) {
                    //alert(msg);
                    $("#modalContentDiv").html(msg);
                    var i = msg.indexOf("enregistrement");
                   
                    
                    $('#modal1').openModal({
                        dismissible: false, // Modal can be dismissed by clicking outside of the modal
                        opacity: .5, // Opacity of modal background
                        in_duration: 300, // Transition in duration
                        out_duration: 200 // Transition out duration
                    });
                    
                    if(i > 0){
                       //go to catalogue if all good
                       document.getElementById('okLink').setAttribute("href","/Projet_LO54/catalogue");
                    }
                    
                },
        error: function (error) {
            alert("error :"+error);
            $('#modal2').closeModal();
        },
        dataType: "text"
    });
    return false ; // pour empecher l'envoi du formulaire
}