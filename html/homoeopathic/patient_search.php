<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Patient Search</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.0/css/all.min.css" integrity="sha512-BnbUDfEUfV0Slx6TunuB042k9tuKe3xrD6q4mg5Ed72LTgzDIcLPxg6yI2gcMFRyomt+yJJxE+zJwNmxki6/RA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
}

html{
    font-size: 82.5%;
}

body{
    min-height:100vh;
    display:flex;
    justify-content:center;
    align-items:center;
    background-color: rebeccapurple;
}
a,a:hover{
    text-decoration:none;
}
.searchBox{
    position: relative;
    display:flex;
    justify-content:center;
    align-items:center;

}
.searchBox:hover > .searchText{
    width:25rem;
    padding: 2rem;
    box-shadow: 0 2rem 2rem -1.5rem rgba(0, 0, 0, 0.5);
}

.searchBox:hover > .searchBtn{
    background-color: white;
    color:blue;
}

.searchText{
    width: 0rem;    
    border-radius: 5rem;
    border: none;
    outline: none;
    transition: all 0.2s linear;

}
.searchText.focus{
    outline: none;
}

.searchBtn{
    width: 5rem;
    height: 5rem;
    background-color: black;
    color: white;
    position: absolute;
    right:1rem;
    display: grid;
    place-items: center;
    border-radius: 50%;
    font-size: 2.5rem;
    
}

</style>
</head>
<body>
    <div class="searchBox">
        <input type="text" class="searchText" placeholder="Type to search...">
        <a href="#" class="searchBtn">
            <!-- <i class="fa-solid fa-magnifying-glass fa-3x"></i> -->
            <ion-icon name="search-outline">
        </a>
    </div>
</body>
</html>