<%@ page language="java" contentType="text/html; charset=utf8"
    pageEncoding="utf8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TEST AJAX</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
 	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>

<body>
    <style>
        .container-1 {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
		
		.left , .right {
			height: 100vh;
            width: 20%;
		}
		
        .left {
            background: red;
        }

        .center button {
            padding: 30px;
            margin-left: 10px;
            margin-right: 10px;
        }

        .center {
            max-width: 100%;
        }

        .right {
            background: violet;
        }

        .are-display {
            background: blue;
            min-height: 200px;
            margin: 20px auto;
        }
    </style>

    <div class="container-1">
        <div class="left">

        </div>

        <div class="center">
            <div class="center-wrap">
                <button class="btn-login">Hiển thị form đăng nhập</button>
                <button>Hiển thị form đăng ký</button>
                <button>Hiển thị máy tính</button>
            </div>
            <div class="are-display"></div>
        </div>

        <div class="right">

        </div>
    </div>
    <script>
        //    $('.btn-login').click(
        //     function() {
        //         $('.center').load('../Login_HUSC/index.html main' , function(a , b , c) {
        //             console.log(c)
        //         })
        //     }
        //    )
        document.querySelector('.btn-login').onclick = function () {
        	const _this = this;
            const xhttp = new XMLHttpRequest();
           	xhttp.onreadystatechange = function(){
           		if (this.readyState == 4 && this.status == 200)
           			{
           				document.querySelector('.center').innerHTML = this.responseText;
           				console.log(this.responseText)
           			}
           	}
            xhttp.open("GET", "dangnhap.jsp");
            xhttp.send();
        }
    </script>
</body>

</html>