<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html lang="en" class=""><head><script src="//static.codepen.io/assets/editor/live/console_runner-ce3034e6bde3912cc25f83cccb7caa2b0f976196f2f2d52303a462c826d54a73.js"></script><script src="//static.codepen.io/assets/editor/live/css_reload-2a5c7ad0fe826f66e054c6020c99c1e1c63210256b6ba07eb41d7a4cb0d0adab.js"></script><meta charset="UTF-8"><meta name="robots" content="noindex"><link rel="shortcut icon" type="image/x-icon" href="//static.codepen.io/assets/favicon/favicon-8ea04875e70c4b0bb41da869e81236e54394d63638a1ef12fa558a4a835f1164.ico"><link rel="mask-icon" type="" href="//static.codepen.io/assets/favicon/logo-pin-f2d2b6d2c61838f7e76325261b7195c27224080bc099486ddd6dccb469b8e8e6.svg" color="#111"><link rel="canonical" href="https://codepen.io/anon/pen/gQNBgG">


<style class="cp-pen-styles">/**/
:root {
  --main-color: #eaeaea;
  --stroke-color: black;
  
}
/**/
body {
  background: var(--main-color);
}
h1 {
  margin: 100px auto 0 auto;
  color: var(--stroke-color);
  font-family: 'Encode Sans Semi Condensed', Verdana, sans-serif;
  font-size: 10rem; line-height: 10rem;
  font-weight: 200;
  text-align: center;
}
h2 {
  margin: 20px auto 30px auto;
  font-family: 'Encode Sans Semi Condensed', Verdana, sans-serif;
  font-size: 1.5rem;
  font-weight: 200;
  text-align: center;
}
h1, h2 {
  -webkit-transition: opacity 0.5s linear, margin-top 0.5s linear; /* Safari */
  transition: opacity 0.5s linear, margin-top 0.5s linear;
}
.loading h1, .loading h2 {
  margin-top: 0px;
  opacity: 0;  
}
.gears {
  position: relative;
  margin: 0 auto;
  width: auto; height: 0;
}
.gear {
  position: relative;
  z-index: 0;
  width: 120px; height: 120px;
  margin: 0 auto;
  border-radius: 50%;
  background: var(--stroke-color);
}
.gear:before{
  position: absolute; left: 5px; top: 5px; right: 5px; bottom: 5px;
  z-index: 2;
  content: "";
  border-radius: 50%;
  background: var(--main-color);
}
.gear:after {
  position: absolute; left: 25px; top: 25px;
  z-index: 3;
  content: "";
  width: 70px; height: 70px;
  border-radius: 50%;
  border: 5px solid var(--stroke-color);
  box-sizing: border-box;
  background: var(--main-color);
}
.gear.one {
  left: -130px;
}
.gear.two {
  top: -75px;
}
.gear.three {
  top: -235px;
  left: 130px;
}
.gear .bar {
  position: absolute; left: -15px; top: 50%;
  z-index: 0;
  width: 150px; height: 30px;
  margin-top: -15px;
  border-radius: 5px;
  background: var(--stroke-color);
}
.gear .bar:before {
  position: absolute; left: 5px; top: 5px; right: 5px; bottom: 5px;
  z-index: 1;
  content: "";
  border-radius: 2px;
  background: var(--main-color);
}
.gear .bar:nth-child(2) {
  transform: rotate(60deg);
  -webkit-transform: rotate(60deg);
}
.gear .bar:nth-child(3) {
  transform: rotate(120deg);
  -webkit-transform: rotate(120deg);
}
@-webkit-keyframes clockwise {
  0% { -webkit-transform: rotate(0deg);}
  100% { -webkit-transform: rotate(360deg);}
}
@-webkit-keyframes anticlockwise {
  0% { -webkit-transform: rotate(360deg);}
  100% { -webkit-transform: rotate(0deg);}
}
@-webkit-keyframes clockwiseError {
  0% { -webkit-transform: rotate(0deg);}
  20% { -webkit-transform: rotate(30deg);}
  40% { -webkit-transform: rotate(25deg);}
  60% { -webkit-transform: rotate(30deg);}
  100% { -webkit-transform: rotate(0deg);}
}
@-webkit-keyframes anticlockwiseErrorStop {
  0% { -webkit-transform: rotate(0deg);}
  20% { -webkit-transform: rotate(-30deg);}
  60% { -webkit-transform: rotate(-30deg);}
  100% { -webkit-transform: rotate(0deg);}
}
@-webkit-keyframes anticlockwiseError {
  0% { -webkit-transform: rotate(0deg);}
  20% { -webkit-transform: rotate(-30deg);}
  40% { -webkit-transform: rotate(-25deg);}
  60% { -webkit-transform: rotate(-30deg);}
  100% { -webkit-transform: rotate(0deg);}
}
.gear.one {
  -webkit-animation: anticlockwiseErrorStop 2s linear infinite;
}
.gear.two {
  -webkit-animation: anticlockwiseError 2s linear infinite;
}
.gear.three {
  -webkit-animation: clockwiseError 2s linear infinite;
}
.loading .gear.one, .loading .gear.three {
  -webkit-animation: clockwise 3s linear infinite;
}
.loading .gear.two {
  -webkit-animation: anticlockwise 3s linear infinite;
}</style></head><body class="" style="">
<link href="https://fonts.googleapis.com/css?family=Encode+Sans+Semi+Condensed:100,200,300,400" rel="stylesheet">

  <h1>에러입니다</h1>
  <h2>1분뒤 시도해주세요 <b>:(</b></h2>
  <div class="gears">
    <div class="gear one">
      <div class="bar"></div>
      <div class="bar"></div>
      <div class="bar"></div>
    </div>
    <div class="gear two">
      <div class="bar"></div>
      <div class="bar"></div>
      <div class="bar"></div>
    </div>
    <div class="gear three">
      <div class="bar"></div>
      <div class="bar"></div>
      <div class="bar"></div>
    </div>
  </div>
  <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
  <script src="js/main.js" type="text/javascript"></script>

<script src="//static.codepen.io/assets/common/stopExecutionOnTimeout-41c52890748cd7143004e05d3c5f786c66b19939c4500ce446314d1748483e13.js"></script>
<script>$(function () {
  setTimeout(function () {
    $('body').removeClass('loading');
  }, 1000);
});
//# sourceURL=pen.js
</script>
</body></html>