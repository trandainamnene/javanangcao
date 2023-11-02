<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=utf8"
    pageEncoding="utf8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng ký</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <link rel="stylesheet" href="assest/styles/reset.css">
    <link rel="stylesheet" href="assest/styles/dang_ky/style.css">
</head>

<body>
    <div class="wrap-form-register">
        <h2 class="form-register__heading">
            ĐĂNG KÝ
        </h2>
        <header class="header">
            <span class="form-register__label-quick-register dot">
                Đăng ký nhanh qua Facebook
            </span>
            <div class="form-register__row">
                <div class="form-register-left">
                    <a href="#!">
                        <img src="https://tailieu.vn/static/b2013az/templates/version1/default/images/btnfb277x45.jpg"
                            alt="">
                    </a>
                    <p class="form-register__show-regiter">Đăng ký mới bằng tài khoản TaiLieu.VN</p>
                </div>
                <div class="form-register-right">
                    <p class="dot">Thưởng ngay <mark>50</mark> ePoints khi đăng ký mới & <mark>5</mark> ePoints cho mỗi
                        lượt chia sẻ Facebook</p>
                    <p class="dot">Tích lũy nhiều ePoints khi Upload tài liệu </p>
                </div>
            </div>
        </header>
        <p class="form-register__noti">Bạn cần kích hoạt tài khoản qua Email sau khi đăng ký để nhận ngay 50 ePoints thưởng từ TaiLieu.VN</p>
        <form action="" class="form-register">
            <div class="form-group">
                <input class="form-group__input" type="text" placeholder="Nhập Username">
                <input class="form-group__input" type="text" placeholder="Nhập Họ và Tên">
            </div>
            <div class="form-group">
                <input class="form-group__input" type="password" placeholder="Nhập mật khẩu">
                <select name="" id="">
                    <option value="">Giới tính</option>
                    <option value="">Nam</option>
                    <option value="">Nữ</option>
                </select>
            </div>
            <div class="form-group">
                <input class="form-group__input" type="password" placeholder="Nhập lại mật khẩu">
                <select name="" id="">
                    <option value="">Ngày Sinh</option>
                    <%for (int i = 1 ; i <=31 ; i++) {%>
                    	<option value=""><%=i %></option>
                    <%}%>
                </select>
                <select name="" id="">
                    <option value="">Tháng</option>
                     <%for (int i = 1 ; i <=12 ; i++) {%>
                    	<option value=""><%=i %></option>
                    <%}%>
                </select>
                <select name="" id="">
                    <option value="">Năm</option>
                     <%Calendar d = Calendar.getInstance();
						int a = d.get(Calendar.YEAR);
						for (int i = a ; i >= a - 100 ; i--) {
                     %>
                     
                    	<option value=""><%=i %></option>
                    	
                    <%  } %>
                </select>
            </div>
            <div class="form-group">
                <input class="form-group__input" type="email" name="" id="" placeholder="Nhập địa chỉ email">
                <select name="" id="">
                    <option value="">Giới tính</option>
                    <option value="">Nam</option>
                    <option value="">Nữ</option>
                </select>
            </div>
            <div class="form-group">
                <input class="form-group__input" type="email" name="" id="" placeholder="Nhập lại địa chỉ email">
                <input class="form-group__input-code" type="text" name="" id="" placeholder="Nhập mã xác nhận">
            </div>
            <div class="form-group form-group-submit">
                <input type="submit" value="Đăng ký" class="form-group__submit btn btn-primary">
                <input type="checkbox" name="" id="form-group__accept" class="form-group__accept">
                <label for="form-group__accept" class="form-group-label">
                    Tôi đồng ý với các Chính Sách và Thỏa Thuận Sử Dụng của TaiLieu.VN
                </label>
            </div>
        </form>
        <footer class="footer">
            <span class="form-register__show-regiter">
                Bạn đã có tài khoản TaiLieu.VN? Đăng nhập
            </span>
            <div class="footer__row">
                <div class="footer-column">
                    <p class="footer__content">Thưởng 50 ePoints khi đăng ký mới</p>
                    <p class="footer__content">Tặng 5 ePoints cho mỗi lượt chia sẻ Facebook</p>
                </div>
                <div class="footer-column">
                    <p class="footer__content">Xem và Tải trên <b class="foooter__hightligh">1 Triệu</b> Tài Liệu miễn
                        phí</p>
                    <p class="footer__content">Kết nối <b class="foooter__hightligh">5 Triệu</b> Thành Viên TaiLieu.VN
                    </p>
                </div>
                <div class="footer-column">
                    <p class="footer__content">Kết bạn với <a class="footer__link"
                            href="https://tailieu.vn/">Tailieu.vn</a> trên <a class="footer__link"
                            href="https://www.facebook.com/">Facebook</a> để nhận link download miễn phí
                        <mark>100</mark> tài liệu <mark>HOT</mark> mỗi ngày
                    </p>
                </div>
            </div>
        </footer>
    </div>
</body>

</html>