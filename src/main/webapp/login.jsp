<%@ page language="java" contentType="text/html; charset=utf8"
    pageEncoding="utf8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <link rel="stylesheet" href="assest/styles/reset.css">
    <link rel="stylesheet" href="./assest/styles/login/style.css">
</head>

<body>
    <main>
        <div class="content">
            <div class="thumb">
                <img class="thumb__logo" src="https://student.husc.edu.vn/Themes/Login/images/Logo-ko-nen.png"
                    alt="Logo">
                <img class="thumb__image" src="https://student.husc.edu.vn/Themes/Login/images/image1.png" alt="thumb">
            </div>
            <div class="form-wrap">
                <form action="" class="login-form">
                    <div class="form__inner">
                        <img src="https://student.husc.edu.vn/Themes/Login/images/logo-small.png" alt="image form" class="login-form__image">
                        <h2 class="login-form__heading">
                            Sinh Viên
                        </h2>
                        <div class="login-form-group">
                            <label class="login-form-group__label" for="login-form-group__id">Mã sinh viên : </label>
                            <input class="login-form-group__id" type="text" name="id" id="login-form-group__id" placeholder="Mã sinh viên">
                        </div>
                        <div class="login-form-group">
                            <label class="login-form-group__label" for="login-form-group__id">Mật khẩu : </label>
                            <input class="login-form-group__id" type="text" name="id" id="login-form-group__id" placeholder="Mật khẩu">
                        </div>
                        <input class="login-form__submit btn" type="submit" value="Đăng nhập">
                    </div>
                </form>
            </div>
        </div>
    </main>
</body>

</html>