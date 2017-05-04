$(document).ready(function(){
	//them ten file vao input file
 $('input[type=file]').on('change fileselect',function(e){
	  var  label = $(this).val().replace(/\\/g, '/').replace(/.*\//, '');
        var input = $(this).parents('.input-group').find(':text');
        input.val(label);
	});
 //editor
   $('[data-toggle="offcanvas"]').click(function(){
       $("#navigation").toggleClass("hidden-xs");
   });
   $('#edit').froalaEditor({
       language: 'vi',
       imageInsertButtons: ['imageByURL'],
       videoInsertButtons: ['videoByURL', 'videoEmbed'],
       imageUpload: false,
       pasteImage: false
    
   });
  
   
});