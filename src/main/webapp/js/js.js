/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).ready(function(){
    // the "href" attribute of .modal-trigger must specify the modal ID that wants to be triggered
    $('#openModal').click(function () {
        $('#modal1').openModal({
            dismissible: true,
            opacity: 0.8, // Opacity of modal background
            in_duration: 300, // Transition in duration
            out_duration: 200, // Transition out duration
            

        });
    });
       
    $('#modalValideBtn').click(function() {
     $('#modal1').closeModal();
    }); 
    
     $('input#input_text, textarea#textarea1').characterCounter();
     $('#openModalReg').click(function(){
         $('#modal2').openModal({
            dismissible: true,
            opacity: 0.8, // Opacity of modal background
            in_duration: 300, // Transition in duration
            out_duration: 200, // Transition out duration
            

        });
     });
     $('#modalValideBtnReg').click(function() {
         $('#modal2').closeModal();
     }); 
    

});
        
