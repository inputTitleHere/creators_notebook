<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>창작자의 노트북</title>
<!-- import table -->
  <!-- CSS -->
  <link rel="stylesheet" href="<%=request.getContextPath() %>/css/themes.css">
  <link rel="stylesheet" href="<%=request.getContextPath() %>/css/variables.css">
  <link rel="stylesheet" href="<%=request.getContextPath() %>/css/top-navbar.css">
  <link rel="stylesheet" href="<%=request.getContextPath() %>/css/index.css">
  <script src="<%=request.getContextPath() %>/js/index.js"></script>
</head>
<body class="darktheme">


<div class="navbar-wrapper">
  <div class="pageicon">
    <a href="index.html" class="link-text">
      <table>
        <tr>
          <td rowspan="2">
            <div id="pageicon-initial">
              C.N
            </div>
          </td>
          <td class="float-left pageicon-text">Creator's</td>
        </tr>
        <tr>
          <td class="float-right pageicon-text">Notebook</td>
        </tr>
      </table>
    </a>
    <div class="magic-border-wrapper">
      <div class="magic-position-wrapper">
        <div class="magic-circle"></div>
        <div class="magic-circle-dim"></div>
        <div class="magic-border magic-rotate-clock"></div>
        <div class="magic-border magic-border-rotate magic-rotate-counterclock"></div>
      </div>
    </div>
  </div><!--pageicon-->
    <div class="navigation">
      <div class="navigation-item navigation-left" id="nav-login">로그인</div>
      <div class="navigation-item navigation-right" id="nav-register">회원가입</div>
  </div><!--navigation-wrapper-->
</div><!--navbar-wrapper-->

<div class="main-content-wrapper">
<section id="login">
  <div class="login-button-wrapper">
    <div class="login-magic-wrapper">
      <div class="circle bigger"></div>
      <div class="circle center"></div>
      <div class="circle middle"></div>
      <div class="circle smaller"></div>
      <div class="square not-rotated">
        <div class="square-circle tl"></div>
        <div class="square-circle tr"></div>
        <div class="square-circle bl"></div>
        <div class="square-circle br"></div>
      </div>
      <div class="square rotated">
        <div class="square-circle tl outwards"><div class="core-circle"></div></div>
        <div class="square-circle tr outwards"><div class="core-circle"></div></div>
        <div class="square-circle bl outwards"><div class="core-circle"></div></div>
        <div class="square-circle br outwards"><div class="core-circle"></div></div>
      </div>
      <div class="circle-reverse-text">
        <span class="c-text" style="--i:1">창</span>
        <span class="c-text" style="--i:2">작</span>
        <span class="c-text" style="--i:3">자</span>
        <span class="c-text" style="--i:4">의</span>
        <span class="c-text" style="--i:5">&nbsp;</span>
        <span class="c-text" style="--i:6">노</span>
        <span class="c-text" style="--i:7">트</span>
        <span class="c-text" style="--i:8">북</span>
      </div>
      <div class="circle-text">
        <span class="counter-text" style="--i:1">C</span>
        <span class="counter-text" style="--i:2">R</span>
        <span class="counter-text" style="--i:3">E</span>
        <span class="counter-text" style="--i:4">A</span>
        <span class="counter-text" style="--i:5">T</span>
        <span class="counter-text" style="--i:6">O</span>
        <span class="counter-text" style="--i:7">R</span>
        <span class="counter-text" style="--i:8">'</span>
        <span class="counter-text" style="--i:9">S</span>
        <span class="counter-text" style="--i:10">&nbsp;</span>
        <span class="counter-text" style="--i:11">N</span>
        <span class="counter-text" style="--i:12">O</span>
        <span class="counter-text" style="--i:13">T</span>
        <span class="counter-text" style="--i:14">E</span>
        <span class="counter-text" style="--i:15">B</span>
        <span class="counter-text" style="--i:16">O</span>
        <span class="counter-text" style="--i:17">O</span>
        <span class="counter-text" style="--i:18">K</span>
      </div>
      <div class="login-text-wrapper">
        <p class="login-text login">
          로그인
        </p>
        <p class="login-text register">
          회원가입
        </p>
      </div>
      <div class="dark-magic"></div>
      <div class="login-window-wrapper">
        <div class="login-window">
          <h1> :: 로 그 인 :: </h1>
          <form action="javascript:lph()"><!-- /web/className.do-->
            <table>
              <tr>
                <td>
                  <input class="inputField" type="text" name="id" id="id" required>
                  <span class="login-title">아이디</span>
                </td>
              </tr>
              <tr>
                <td class="warningtext" colspan="2">&nbsp;</td>
              </tr>
              <tr>
                <td>
                  <input class="inputField" type="password" name="pwd" id="pwd" required>
                  <span class="login-title">비밀번호</span>
                </td>
              </tr>
              <tr>
                <td class="warningtext" colspan="2">&nbsp;</td>
              </tr>
              <tr>
                <td>
                  <button class="button-default" id="login-confirm">로그인</button>
                </td>
              </tr>
              <tr class="lower-buttons">
                <td>
                  <div class="button-flexbox">
                    <button class="button-default" type="reset" id="login-cancel" onclick="cancelLoginAction();">취소</button>
                    <button class="button-default" type="button" id="register">회원가입</button>
                  </div>
                </td>
              </tr>
  
  
            </table>
          </form>
        </div><!--login window-->
      </div>
    </div><!--login magic wrapper-->
  </div> <!-- login button wrapper-->
</section><!-- section #login-->
</div> <!-- main content wrapper-->


<div class="skew-wrapper">
  <div class="skew-background-1">
    <div class="line-drawer"></div>
    <div class="line-drawer-dark"></div>
  </div>
  <div class="skew-background-2">
    <div class="line-drawer"></div>
    <div class="line-drawer-dark"></div>
  </div>
  <div class="bottom-cover">
    <div class="to-bottom">
      <div class="line-drawer"></div>
      <div class="line-drawer-dark"></div>
    </div>
  </div>
</div>
<section id="site-purpose">

  <div class="purpose-wrapper"> 
    <h1 class="title">
      <span class="title-text">창작자의 노트북?</span>
    </h1>
    <p class="content">
      혼자 소설을 쓸 때, 세계관을 만들 때, 상상을 할 때, 종이나 메모장을 이용하는 것이 불편했습니다. 
      <br>
      특히나 막상 나중에 기록을 하려하면 그 영감이 날아가버리거나 기억이 나지 않는 적도 많았고, 설정을 고치려하면 이리저리 정보를 뒤져봐야한다는 불편함이 있었습니다.
      <br>
      그래서 설정들을 쓰고, 읽고, 고치고, 지우기 쉽게 온라인상으로 관리할 수 있도록 만들고자 창작자의 노트북이라는 웹 페이지를 제작하게 되었습니다. 
      <br>
      <br>
      크게 [캐릭터]페이지, [세계관]페이지, [조직, 세력]페이지, [스토리]페이지를 기반으로 여러 카테고리를 점차 만들어 나갈것 입니다.
    </p>


  </div> <!-- purpose wrapper-->
</section> <!-- site purpose-->



<div class="footer">

</div>


</body>
</html>