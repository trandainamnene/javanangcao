<%@ page language="java" contentType="text/html; charset=utf8"
    pageEncoding="utf8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Easy Calculator</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <link rel="stylesheet" href="assest/styles/calculator/style.css">
   <!--   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script>
        $(document).ready(function () 
        {
            $(".btn-method").click(
                function()
                {
                    console.log($(this).val() == "+")
                    if ($(this).val() == "+")
                    {
                        $(".input-result").text(Number.parseInt($(".form-control").eq(0).val()) + Number.parseInt($(".form-control").eq(1).val()))  
                    } else if ($(this).val() == "-")
                    {
                        $(".input-result").text(Number.parseInt($(".form-control").eq(0).val()) - Number.parseInt($(".form-control").eq(1).val()))  
                    } else if ($(this).val() == "*")
                    {
                        $(".input-result").text(Number.parseInt($(".form-control").eq(0).val()) * Number.parseInt($(".form-control").eq(1).val()))  
                    } else 
                    {
                        $(".input-result").text(Number.parseInt($(".form-control").eq(0).val()) / Number.parseInt($(".form-control").eq(1).val()))  
                    }
                }
            )
           
        })
    </script>
    -->
</head>

<body>
    <main>
    <%
    	int a = 0 , b = 0 , kq = 0;
    	if (request.getAttribute("a")!= null){
    		a = (int)request.getAttribute("a");
    		b = (int)request.getAttribute("b");
    		kq = (int)request.getAttribute("kq");
    	}
    %>
        <form action="maytinhController" method="POST">
            <div class="wrap-group-input">
                <div class="input-group">
                    <span class="input-group-text" id="basic-addon1">a : </span>
                    <input name="txta" type="text" class="form-control" placeholder="Nhập giá trị a" aria-label="Username"
                        aria-describedby="basic-addon1" value=<%=a%>>
                </div>
                <div class="input-group">
                    <span class="input-group-text" id="basic-addon1">b : </span>
                    <input name="txtb" type="text" class="form-control" placeholder="Nhập giá trị b" aria-label="Username"
                        aria-describedby="basic-addon1" value=<%=b%>>
                </div>
            </div>
            <div class="wrap-button-input">
                <input type="submit" name="butc" class="btn btn-method btn-primary" value="+">
                <input type="submit" name="butt" class="btn btn-method btn-secondary" value="-">
                <input type="submit" name="butn" class="btn btn-method btn-success" value="*">
                <input type="submit" name="butchia" class="btn btn-method btn-light" value="/">
            </div>
            <div class="input-group input-result-group">
                <span class="input-group-text" id="basic-addon1">= : </span>
                <div class="form-control input-result">
				<%=kq %>
            </div>
        </form>
    </main>
</body>

</html>