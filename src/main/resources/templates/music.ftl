<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>canvas</title>
    <style type="text/css">


    </style>

</head>
<script type="text/javascript" src="js/jquery.js"></script>
<body>
aaaaaaaaaaaaaaaaaaaaaaaaaa
<audio loop src="http://sc1.111ttt.cn/2015/5/09/04/102041637138.mp3" id="audio" autoplay preload="auto">该浏览器不支持audio属性</audio>
<script type="text/javascript">
    //--创建页面监听，等待微信端页面加载完毕 触发音频播放
    document.addEventListener('DOMContentLoaded', function () {
        function audioAutoPlay() {
            var audio = document.getElementById('audio');
            audio.play();
            document.addEventListener("WeixinJSBridgeReady", function () {
                audio.play();
            }, false);
        }
        audioAutoPlay();
    });
    //--创建触摸监听，当浏览器打开页面时，触摸屏幕触发事件，进行音频播放
    document.addEventListener('touchstart', function () {
        function audioAutoPlay() {
            var audio = document.getElementById('audio');
            audio.play();
        }
        audioAutoPlay();
    });
</script>

</body>
</html>
