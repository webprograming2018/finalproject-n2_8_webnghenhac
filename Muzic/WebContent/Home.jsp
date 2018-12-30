<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
  <meta charset="UTF-8">
  <title>Bee Music</title>
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no">
  <meta name="format-detection" content="telephone=no">

  <!-- font -->
  <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900" rel="stylesheet">
  <!-- css -->
  <link rel="stylesheet" href="assets/css/main.css">
  <script type="text/javascript">
  	var username = '<%=session.getAttribute("username") %>';
  	var id = '<%=session.getAttribute("idusers") %>';
  	var idtrackrequest= '<%=request.getAttribute("idmusic") %>';
  	var urlrequest ='<%=request.getAttribute("urlmusic") %>';
  	var title ='<%=request.getAttribute("titlemusic") %>';
  	var author = '<%=request.getAttribute("author") %>';
  	var idlove='<%=request.getAttribute("idlove") %>';
  	console.log(idlove);
  </script>
</head>
<body>
  <div id="app">
    <nav class="menu-wrapper">
      <div class="logo">
        <img src="assets/images/bee.png" alt="Bee music">
        <span class="text">Bee Music</span>
      </div>
       <div class="trigger">
        <img src="assets/images/menu.png" alt="trigger">
      </div>
      
      <ul class="menu-01">
        <!-- ////////////////////////chua login//////////////////////////// -->
        <!-- <li class="item">
          <a href="login.html">Đăng nhập</a>
        </li>

        <li class="item">
          <a href="register.html">Đăng kí</a>
        </li> -->
        <!-- ////////////////////////chua login//////////////////////////// -->
        <li class="item account-item">
          <div class="account">
            <ul class="account-box">
              <li class="item">
                <a href="dsyt.jsp" id="favorite-list-btn">Danh sách yêu thích</a>
              </li>

              <li class="item">
                <a href="ncn.jsp" id="my-music">Nhạc của tôi</a>
              </li>

              <li class="item upload-item">
                <!-- <form action="">
                  <input type="file" name="" id="music-file">
                  <label id="music-label" for="music-file">Upload nhạc</label>
                </form> -->
                <a href="#" id="upload_link">Upload nhạc</a>
              </li>
            </ul>
          </div>
        </li>

        <li class="item">
          <a href="${pageContext.request.contextPath}/logout">Đăng xuất</a>
        </li>
      </ul>
    </nav>
    <div class="Dashboard-01">
      <!-- Header-01 -->
      <div class="Header--01" id="header">
        <div class="Header__content">
          <div class="search-wrapper">
            <div class="search-form-wrapper">
              <form class="search-form-01">
                <input type="text" id="search" class="input-search-01" autocomplete="off" placeholder="Nhập từ khoá tìm kiếm ...">
                <button class="button-search-01" id="but"></button>
              </form>
            </div>  
            
            <!-- suggest track -->
            <div class="search-result-wrapper" id="search-result-wrapper">
              <ul class="search-result" id="search-result">
                <!-- { listSuggest } -->
              </ul>
            </div>
            
            <!-- listTrack -->
            <div class="listTrack--wrapper" id="listTrack">
              <div class="modify-listTrack-btn" id="toggle-modify-listTrack">
                <span class="toggle-list-grid list-btn" id="list-btn"></span>
                <span class="toggle-list-grid grid-btn" id="grid-btn"></span>
              </div>
              <ul class="listTrack" id="listMusic">
                <!-- search -->
                <p class="load"></p>
              </ul>

              <!-- { eleLoad } -->
            </div>
               <div class="lyric" id="lyric">
              <p class="lyric__name">Unknow</p>
              <span class="lyric__author">Unknow</span>
              <div class="lyric__text" id="lyriec__text">
                Chưa có lời bài hát
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="play-view">
        <!-- images title author -->
        <div class="play-view-infor-wrapper">
          <div class="play-view__image-wrapper">
            <div class="play-view__image">
              <img src="assets/images/playingTrack.jpeg" alt="track" class="image playing" />
            </div>
          </div>

          <div class="textbox-01 play-view__information">
            <p class="textbox__title"> tình đời </p>
            <p class="textbox__subtitle"> bee97 </p>
          </div>
        </div>

        <div class="pagination-01">
          <span class="bullet" id="list-track-bullet"></span>
          <span class="bullet active" id="home-bullet"></span>
          <span class="bullet" id="lyric-bullet"></span>
        </div>

        <div class="play-view__control" id="play-view__control">
          <!-- progress play -->
          <div class="progress-bar">
            <!-- <Progress :duration="trackInfor.duration" :trackid="trackInfor.id" :status="status" :currentTimeTrack="this.$props.currentTimeTrack" :seekTime="seekTimeFunc" :errProgress="errPlayView"/> -->
          </div>

          <div class="control-main-wrapper">
            <div class="like-btn" id="like-btn">
              <span class="icon-like"></span>
            </div>
            <!-- prev, pause/play , next -->
            <div class="control-main control-main-01">
              <div class="control-item">
                <img src="assets/images/prev.png" alt="prev" id="prev_btn"/>
              </div>

              <div class="control-item" >
                <img src="assets/images/play.png" alt="status" id="pause_or_play_btn"/>
              </div>

              <div class="control-item">
                <img src="assets/images/next.png" alt="next" id="next_btn"/>
              </div>
            </div>
            
            <!-- volume control -->
            <div class="speaker-button" id="speaker-button">
              <img src="assets/images/speaker.png" alt="volume">
              <!-- <img src="assets/images/speaker.png" alt="volume"  onclick="volumeFunc"> -->
              
              <!-- <v-touch @tap="tap_volumeFunc" @panmove="panmove"> -->
                <div class="speaker-volume" id="speaker-volume">
                  <div class="speaker__progress" id="speakerProgress"></div>
                  <div class="speaker__progress-ball" id="ballVolume">
                    <span class="speaker__progress-ball-content">
                    </span>
                  </div>
                </div> 
              <!-- </v-touch> -->
            </div>
          </div>
        </div>

        <audio ref="rainRef" id="audioId" class="audioRain" :src="rainAudio" type="audio/mp3">
        </audio>
      </div>

      <!-- background -->
      <canvas id="Background-Canvas" class="bg-01" ref="background"></canvas>

      <!-- setting -->
      <div class="setting-btn" id="settingBtn">
        <img src="assets/images/cog.png" alt="setting">
      </div>

      <div class="modal-01" id="modalSetting">
        <div class="modal-header">
          <p class="modal__title">Setting</p>
          <div class="close-btn"></div>
        </div>
        <div class="modal-body">
          <div class="setting__content">
            <ul class="setting__list">
              <li class="setting__item" data-target="toggleMenu">
                <span class="checkbox"></span>
                <span class="setting__name">hide search</span>
              </li>
              <li class="setting__item" data-target="toggleControl">
                <span class="checkbox"></span>
                <span class="setting__name">hide control</span>
              </li>
              <li class="setting__item setting__alarm" data-target="toggleAlarm">
                <img src="/images/alarm.png" alt="" class="alarm-icon">
                <span>Hen gio tat nhac</span>
                <div class="input-group">
                  <input type="text" placeholder="Nhập số phút" name="alarm-input">
                  <span>phut</span>
                </div>  
                <input type="button" value="OK" name="alarm-submit">

                <div class="result-alarm">
                  
                </div>
              </li>
            </ul>
          </div>
        </div>
      </div>

      <div class="modal-01" id="modalUpload">
        <div class="modal-header">
          <p class="modal__title">Tải nhạc lên website</p>
          <div class="close-btn"></div>
        </div>
        <div class="modal-body">
          <form action="UploadDownloadFileServlet" method="POST" enctype="multipart/form-data" class="upload-form-01">
            <div class="left-content">
              <div class="input-item">
                <label for="file-upload__name" class="desc">
                  Tên bài hát
                </label>
                <span class="err">* Trường này bắt buộc phải nhập</span>
                <input type="text" name="songName" id="file-upload__name" class="input-song-name">
              </div>

              <div class="input-item">
                <span class="desc">Định dạng nhạc</span>
                <select name="extendFile" id="">
                  <option value="mp3" selected>MP3</option>
                  <option value="wav">WAV</option>
                  <option value="flac">FLAC</option>
                  <option value="ape">APE</option>
                </select>
              </div>
              
              <div class="input-item">
                <span class="desc">Chọn file</span>
                <span class="err">* Trường này bắt buộc phải nhập</span>
                <label for="file-upload__file" class="file-upload__file-label">
                  <span class="name">Click me!</span>
                 <input type="file" name="fileName" id="file-upload__file">
                </label>
              </div>
            </div>
            
                <div class="right-content">
              <div class="input-item">
                <span class="desc">Chọn chất lượng nhạc</span>
                <select name="quality" id="">
                  <option value="128" selected>128</option>
                  <option value="164">164</option>
                  <option value="320">320</option>
                </select>
              </div>
              
              <textarea name="content" id="" cols="30" rows="10" placeholder="Nhập lời bài hát ... " class="file-upload__lyric"></textarea>
            </div> 

            <div class="btn-wrapper">
              <input class="file-upload__button" type="submit" id="submit-upload-music" value="Upload">
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</body>
<!-- js -->
<script src="assets/js/background.js"></script>
<script src="https://connect.soundcloud.com/sdk/sdk-3.3.0.js"></script>
<script src="http://code.jquery.com/jquery-1.7.2.js"></script>
<script src="assets/js/main.js"></script>
</html>