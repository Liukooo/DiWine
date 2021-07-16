$(document).ready(function () {

   $("#categ").change(function () {
      var cid = $(this).val();
      $.ajax({
         url: 'php/load.php',
         method: 'post',
         data: 'cid=' + cid
      }).done(function (main) {
         console.log(main);
         main = JSON.parse(main);
         $('#main').empty();
         $('#main').append('<option selected disabled value="">--Select the main dish</option>');
         main.forEach(function (main) {
            $('#main').append('<option>' + main.main_dish + '</option>')
         });
      });
   });

   $("#region").change(function () {
      var rid = $(this).val();
      $.ajax({
         url: 'php/load.php',
         method: 'post',
         data: 'rid=' + rid
      }).done(function (province) {
         console.log(province);
         province = JSON.parse(province);
         $('#province').empty();
         $('#province').append('<option selected disabled value="">--Select a province</option>');
         province.forEach(function (province) {
            $('#province').append('<option>' + province.province + '</option>')
         });
      });
   });
});