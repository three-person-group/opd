<!DOCTYPE html>
<html lang="en">

<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <link rel="stylesheet" type="text/css" href="search.css">
   <link rel="stylesheet" type="text/css"
      href="https://stackpath.bootstrapcdn.com/font-awsome/4.7.0/css/font-awsome.min.css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.0/css/all.min.css" integrity="sha512-BnbUDfEUfV0Slx6TunuB042k9tuKe3xrD6q4mg5Ed72LTgzDIcLPxg6yI2gcMFRyomt+yJJxE+zJwNmxki6/RA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
      <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
      <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
   <title>existing_patient</title>
   <style>

body{
    min-height:10vh;
}
      .autocomplete {
         position: relative;
         display: flex;
         justify-content: center;
         align-items: center;

      }

      .autocomplete:hover>.medicinename {
         width: 25rem;
         padding: 2rem;
         box-shadow: 0 2rem 2rem -1.5rem rgba(0, 0, 0, 0.5);
      }

      .autocomplete:hover>.searchBtn {
         background-color: white;
         color: blue;
      }

      .medicinename {
         width: 0rem;
         border-radius: 5rem;
         border: none;
         outline: none;
         transition: all 0.2s linear;

      }

      .medicinename.focus {
         outline: none;
      }

      .searchBtn {
         width: 5rem;
         height: 5rem;
         background-color: black;
         color: white;
         position: absolute;
         right: 1rem;
         display: grid;
         place-items: center;
         border-radius: 50%;
         font-size: 2.5rem;

      }

      .list {
         width: 100%;
         position: absolute;
         border: 1px solid #4d6e87;
         display: none;
         background-color: #4d6e87;
      }

      .list ul {
         list-style: none;
         background: #fff;
         margin: 0;
         padding: 0;
         text-align: left;

      }

      .list ul li {
         padding: 2px 10px;
         cursor: pointer;
      }

      .list ul li:hover {
         background: #d0e4f4;
      }

      html{
        font-size: 82.5%;
      }
      .container{
         margin:0;
         padding:0;
         float:left;
         max-height:50vh;
      }
      body{
         max-height:50vh;
      }
   </style>

   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

</head>

<body>
   <h1>
      Enter OPD NO:</h1>

   <div class="container">
   <div class="autocomplete">
      <!-- <input type="text" class="searchText" placeholder="Type to search..."> -->
      <input type="text" id="id-medicine-1" class="medicinename" name="smedicinename1" placeholder="seach here opdno"
         autocomplete="false" required>
      <a href="#" class="searchBtn" id="id-search">
         <ion-icon name="search-outline">
      </a>
      <div id="medicinelist1" class="list"></div>
   </div>
   </div>


   <script>

      $(document).ready(function () {


         // for id1 medicine name auto seach click and blur event
         $("#id-medicine-1").on("keyup", medicinename1);

         // search medicine name from table
         function medicinename1() {
            $("#medicinelist1").html("");               //empty search list
            var medicine_name = $(this).val();


            if (medicine_name != "") {
               $.ajax({
                  url: 'http://localhost:3000/html/homoeopathic/existing_patient_api/api-search.php?smedicine_name=' + medicine_name,
                  type: "GET",
                  dataType: "json",
                  success: function (data) {
                     console.log(data)

                     if (data.status == false) {
                        $("#table-id").fadeIn("fast").append("<ul>" +
                           "<li>" + "NOT FOUND" + "</li>" + "</ul>")
                     }
                     else {

                        //dropdown  type search
                        $.each(data, function (key, value) {
                           $("#medicinelist1").fadeIn("fast").append("<ul>" +
                              "<li>" + value.opdno + " " + value.pname + "</li>" + "</ul>");
                        });
                     }
                  }
               });

               $("#id-medicine-1").focusout(("#medicinelist1").fadeOut);
               // var d=$("#id-medicine-1").focusout(("#medicinelist li"));
               // console.log(d,d.val)
            }
            else {

               $("#medicinelist1").fadeOut();
               $("#id-qty-1").html("");
               $("#id-charges-3").html("");
            }
         }
         //  tab to get li value in field
         $(document).on("blur", "#id-medicine-1", function () {
            let c = $("#medicinelist1 ul:first li:nth-child(1)").text();
            var a = $("#id-medicine-1").val();
            if (c != "") {

               $("#id-medicine-1").val(c);
            }

            console.log(c)
            $("#medicinelist1").fadeOut();

         });

         //  click to get li value in field
         $(document).on("click", "#medicinelist1 li", function () {
            $("#id-medicine-1").val($(this).text());
            $("#medicinelist1").fadeOut();
            // charge1()
         });
         // fadeOut search list
         $(document).on("blur", "#id-medicine-1", function () {
            $("#medicinelist1").fadeOut();
         });


         $(document).on("click", "#id-search", function () {


            var opdno = $("#id-medicine-1").val();

            console.log(opdno)

            localStorage.clear()

            localStorage.setItem("opdno", opdno)

            opdno = parseInt(opdno);

            // console.log(localStorage)
            // var obj1 = { sopdno: opdno };
            // console.log(obj1);

            // var jsonnameOpdno = JSON.stringify(obj1)

            $.ajax({
               url: 'http://localhost:3000/html/homoeopathic/existing_patient_api/api-opdno-exsits-or-not.php?sopdno=' + opdno,
               type: "GET",
               dataType: "json",
               success: function (data) {
                  console.log(data)

                  if (data.status == false) {
                     alert("data not found");

                  }
                  else {


                     location.href = 'http://localhost:3000/html/homoeopathic/opd_reg_for_existing_patient.html';
                  }
               }
            });





         });


      });
   </script>
</body>

</html>