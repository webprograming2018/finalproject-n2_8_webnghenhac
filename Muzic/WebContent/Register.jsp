<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <title>Bee Music</title>
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no">
  <meta name="format-detection" content="telephone=no">

  <!-- font -->
  <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900" rel="stylesheet">
  <!-- css -->
  <link rel="stylesheet" href="assets/css/main.css">
</head>
<body>
  <div class="auth-page">
    <div class="auth-page-wrapper">
      <div class="bg-wrapper">
        <canvas id="Background-Canvas" height="981" class="bg-01" width="1372"></canvas>
      </div>  

      <div class="auth-login-content">
        <div class="logo">
          <img src="assets/images/bee.png" alt="bee team">
        </div>

        <div class="auth-form">
          <p class="title">
            Đăng kí
          </p>
          <span class="sub-title">
            Đăng kí tài khoản tại Bee Music
          </span>

          <form action=""  name="form">
            <div class="input-item">
              <input type="text" name="username" placeholder="username" required id="email-input">
              <i class="iconmo-email font-icon"></i>
            </div>

            <div class="input-item">
              <input type="password" placeholder="password" name="password" required>
              <i class="iconmo-password font-icon"></i>
            </div>

            <div class="input-item">
              <input type="password" placeholder="re-type password" name="re-password" required>
              <i class="iconmo-password font-icon"></i>
            </div>
            
            <input type="button" value="Đăng kí" class="auth-button-01" onclick="callRegister()">
          </form>
          <div class="register-suggest">
            <span>Bạn đã có tài khoản ?</span>
            <a href="Login.jsp" class="link-suggest">Đăng nhập</a>
          </div>
        </div>
      </div>
    </div>
  </div>
   <div class="modal-01" id="modalUpload">
        <div class="modal-header">
          <p class="modal__title">Thông báo</p>
          <div class="close-btn" id="close-btn"></div>
        </div>
        <div class="modal-body">
              <div class="input-item">
                <h4 class="desc" id="content" style="text-align: center">
                </h4>
              </div>
              </div>
       </div>
</body>
<!-- js -->
<script src="assets/js/background2.js"></script>
<script src="https://connect.soundcloud.com/sdk/sdk-3.3.0.js"></script>
<script src="http://code.jquery.com/jquery-1.7.2.js"></script>
<script src="assets/js/callregister.js"></script>
<!-- <script src="assets/js/SC.js"></script> -->
<script src="assets/js/main.js"></script>
</html>
