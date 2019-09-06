<!DOCTYPE HTML>

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
    <link rel="icon" href="img/xin.png" type="img/x-ico" />
    <title>Dreamboat</title>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">

    <style type="text/css">

        @font-face {

            font-family: digit;

            src: url('digital-7_mono.ttf') format("truetype");

        }

    </style>

    <link href="css/default.css" type="text/css" rel="stylesheet">

    <script type="text/javascript" src="js/jquery.js"></script>

    <script type="text/javascript" src="js/garden.js"></script>

    <script type="text/javascript" src="js/functions.js"></script>

    <script type="text/javascript" src="js/canvas_bg.js" ></script>

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

</head>



<body>
<audio loop src="http://sc1.111ttt.cn/2015/5/09/04/102041637138.mp3" id="audio" autoplay preload="auto">该浏览器不支持audio属性</audio>
<canvas id="c" style="position: absolute;z-index: -1;text-align: center;"></canvas>
<div id="mainDiv">

    <div id="content">

        <div id="code">


      <#--      <span class="comments">Dear 妞妞</span><br />
            <br />-->
            <span class="comments">I could see the sky sky</span><br />
            <span class="string">我可以看到</span> <br />

          <span class="comments">Sky beautiful tonight night</span><br />
          <span class="string">今天的夜空绚烂多彩</span> <br />

            <span class="comments">When you breathe why can't you see that the clouds are in your head</span><br />
            <span class="string">当你呼吸时 请看看头顶的云彩</span><br />

            <span class="comments">I would stay there there</span><br />
            <span class="string">我一直都在那里</span> <br />

            <span class="comments">There's no need to fear fear</span><br />
            <span class="string">不要害怕</span> <br />
            <span class="comments">And when you need to talk it out with someone you can trust</span><br />
            <span class="string">当你需要和信任的人倾诉时</span><br />

            <span class="comments">Bad memories take your time and you'll find me</span><br />
            <span class="string">不要着急 我很快就会出现的</span><br />

            <span class="comments">Tell me your problems I'll chase them away</span><br />
            <span class="string">让我分担你的忧虑 我会帮你解决的</span><br />

            <span class="comments">I'll be your lighthouse I'll make it okay</span><br />
            <span class="string">我会是你的灯塔 我会让你安然无恙</span> <br />
            <span class="comments">When I see your monsters I'll stand there so brave</span><br />
            <span class="string">我看到你内心的怪兽时 我会勇敢地站出来</span><br />
            <span class="comments">I'll chase them all away</span><br />
            <span class="string">我会将它们全部赶走</span><br />
            <span class="comments">You've got the chance to see the light</span><br />
            <span class="string">你一定能看到光明</span> <br />
            <span class="comments">Even in the darkest night</span><br />
            <span class="string">即使是在最漆黑的夜晚</span><br />

            <span class="comments">And I'll be here like you were for me</span><br />
            <span class="string">我会一直陪着你 就像你曾经守护着我一样</span> <br />
            <span class="comments">So just let me in</span><br />
            <span class="string">所以 让我走进你的心里吧</span><br />

        </div>

        <div id="loveHeart">

            <canvas id="garden"></canvas>

            <div id="words">

                <div id="messages">

                <span> &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;妞妞  I love you three
                    thousand times a day.</span>

                    <div id="elapseClock"></div>

                </div>

                <div id="loveu">

                    Love u forever and ever.<br/>

                    <div class="signature">- 谭卓斌</div>

                </div>

            </div>

        </div>

    </div>



</div>

<script type="text/javascript">

    var offsetX = $("#loveHeart").width() / 2;

    var offsetY = $("#loveHeart").height() / 2 - 55;

    var together = new Date();







    if (!document.createElement('canvas').getContext) {

        var msg = document.createElement("div");

        msg.id = "errorMsg";

        msg.innerHTML = "Your browser doesn't support HTML5!<br/>Recommend use Chrome 14+/IE 9+/Firefox 7+/Safari 4+";

        document.body.appendChild(msg);

        $("#code").css("display", "none")

        $("#copyright").css("position", "absolute");

        $("#copyright").css("bottom", "10px");

        document.execCommand("stop");

    } else {

        setTimeout(function () {

            startHeartAnimation();

        }, 5000); //5000



        timeElapse(together);

        setInterval(function () {

            timeElapse(together);

        }, 500);



        adjustCodePosition();

        $("#code").typewriter();

    }

</script>

</body>

</html>

