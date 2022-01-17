<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fullpage/fullpage.min.css">
   <link href="${pageContext.request.contextPath}/resources/css/index.css" rel="stylesheet"/>
  <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">

 <script type="text/javascript" src="${pageContext.request.contextPath}/resources/fullpage/fullpage.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.6.0.min.js"></script>


</head>
<body>
    <div id="Container">
        <div class="loginView">

            <div class="loginInner">
                <div class="sect01">
                    <div class="line-box">
                      <span class="line-01"></span>
                      <span class="line-02"></span>
                    </div>
                  </div>
                  
                <ul>
                    <li>
                        <h3>LOGIN or CREATE AN ACCOUNT</h3>
                    </li>
                    <li><input type="text" id="id" name="id" placeholder="ID"></li>
                    <li><div class="pwcontainer"><input type="password" id="pw" name="pw" placeholder="PASSWORD"><i class="xi-eye-o"></i></div></li>
                    <li><button id="login" type="submit">LOG IN</button></li>
                    <li><button id="joinus" type="button">JOIN US</button></li>
                    <li>
                        <ul>
                            <li><a href="#">아이디찾기</a></li>
                            <li><a href="#">비밀번호 찾기</a></li>
                            <li><a href="#">주문 확인</a></li>
                        </ul>
                    </li>
                </ul>

            </div>

        </div>
        <nav>
            <ul class="nav_menus">
                <li><a href="#" class="main_logo"><img src="${pageContext.request.contextPath }/resources/images/logo.svg" width="120px" height="28px" alt="로고 없음"></a>
                </li>
                <li><a href="02-about.html">about</a></li>
                <li><a href="03-news.html">news</a></li>
                <li class="dropmenu item1"><a href="/04-store.html">store</a>

                    <ul class="submenu1">
                        <li><a href="#">coffee</a></li>
                        <li><a href="#">home brew</a></li>
                        <li><a href="#">apparel</a></li>
                        <li><a href="#">goods</a></li>

                    </ul>
                </li>
                <li><a href="#">COFFEE</a></li>
                <li><a href="">contact</a></li>
                <li class="dropmenu item2"><a href="#">private</a>
                    <ul class="submenu2">
                        <li><a href="#">개인결제창</a></li>
                    </ul>
                </li>
            </ul>
            <ul class="nav_icons">
                 
                 <c:choose>
                  <c:when test="${sessionScope.account.id !=null}">
                    <li><a class="loginbtn" href="#">${sessionScope.account.name}님<i id="loginout"class="xi-log-out"></i></a></li>
                    
                  </c:when>
                 
                 <c:otherwise>
                   <li><a class="loginbtn" href="#"><i class="xi-log-in"></i></a></li>
                 </c:otherwise>
                 </c:choose>
              
                <li><a href="#"><i class="xi-user-o"></i></a></li>
                <li><a href="#"><i class="xi-briefcase"></i></a></li>
                <li><a href="#"><i class="xi-search"></i></a></li>

            </ul>
        </nav>
        <div id="fullpage">
            <div class="section s0">


            </div>
            <div class="section s1">

            </div>
            <div class="section s2">

            </div>
            <div class="section s3">
                <div class="sections3 textCon"
                    style="position:absolute; top:50%; left:50%; transform:translateX(-50%) translateY(-50%);">
                    <p>"We are what we repeatedly do.</p>
                    <p>Excellence, then, is not an act, but a habit."</p>
                    <p> </p>
                    <p>- Aristoteles -</p>
                    <p> </p>
                    <a href="#"><i style="color:black" class="xi-long-arrow-right"></i></a>
                </div>
            </div>
            <div class="section s4 fp-auto-height">
                <div class="footerinner">
                    <ul class="footer top">
                        <li><a href="#">ABOUT US</a></li>
                        <li><a href="#">CUSTOMER CARE</a></li>
                    </ul>
                    <ul class="footer bottom">
                        <li>Company. 어니언컴퍼니 Owner. 유주형 Tel. 02-1644-1941 E-mail. onion@onionkr.com Address. 04797 서울특별시
                            성동구 아차산로9길 8 (성수동2가) 1,2층</li>
                        <li>Business License. 4788700882 Mail Order License. 제2020-서울성동-00970호</li>
                        <li>Copyright ©Cafe Onion 카페 어니언 All rights reserved.</li>
                    </ul>

                    <a href="https://www.instagram.com/cafe.onion/">INSTARGRAM</a>
                </div>
            </div>
        </div>
    </div>

    <script>
        const logo = $("#Container>nav>.nav_menus li .main_logo>img");
        
             document.getElementById("login").addEventListener("click",function(e){
        	  e.preventDefault();
        	  location.href="${pageContext.request.contextPath}/member/login?id="+$("#id").val()+"&pw="+$("#pw").val();
        	  
        	  
        	  
          });

      
        
          
            /* /*  document.querySelector(".xi-log-out").addEventListener("click",function(e){
        	  e.preventDefault();
        	  let logout = prompt("정말 로그아웃 하시겠습니까?");
        	  
        	  if(logout){
        		  location.href="${pageContext.request.contextPath}/member/logout";
        	  }
        	  else{
        		  return false;
        		  
        	  }
        	  
        	  }); */
        	 
 
        	 
        
        
            document.getElementById("joinus").addEventListener("click",function(){
            
            	location.href="${pageContext.request.contextPath}/member/join";
            });
           
            // const quickbtn=$("#fp-nav ul li").children();

            // for (let i=1; i<=quickbtn.length; i++) {

            //     $("#fp-nav ul li a").eq(i).text("0"+i);

            //     }


            $(function () {
                 
            	
           
                pwChangeToggle();
  
                $("nav").animate({
                    opacity: 1,
                    marginTop: "10px"
                }, 1000, "linear"); 
                
                $(".textCon a>i").hover(function () {
                    $(this).animate({
                        marginLeft: "30px"
                    });
                },
                function () {
                    $(this).animate({
                        marginLeft: "0px"
                    });
                });

            });

          
            $("#Container>nav>.nav_menus li").hover(function () {
                    $(this).children("ul").stop().slideToggle(500);
                },
                function () {
                    $(this).children("ul").css("display", "none");
                });



            // $(".textCon a>i").hover(function () {
            //         $(this).animate({
            //             marginLeft: "30px"
            //         });
            //     },
            //     function () {
            //         $(this).animate({
            //             marginLeft: "0px"
            //         });
            //     });
                $(".loginbtn").on("click",function(e){
                	e.preventDefault();
                	if($(".loginbtn>i").hasClass("xi-log-out")){
                		let loginBool = confirm("정말 로그아웃하시겠습니까?");
                          
                		if(loginBool){
                			
                			  location.href="${pageContext.request.contextPath}/member/logout";	
                		}else{
                			
                			return false;}
             	
       
                	}
                	
                	else{
                    $("#Container >.loginView").addClass("on");
                	}
                });

                $(".sect01").on("click",function(){
                    $("#Container >.loginView").removeClass("on");
                });
          
            // $("nav li a").hover(function(){
            //     $(this).css("color","#9e9e9e");

            // },
            // function(){
            //     $(this).css("color","#f1f1f1");

            // }

            // );

            // $(window).scroll(function(){
            //     if($(this).scrollTop()>100){
            //         $("nav").fadeIn();

            //     }
            //     else{
            //         $("nav").fadeOut();
            //     }
            // })




        
        new fullpage('#fullpage', {
            licenseKey: '',
            navigation: true,
            scrollingSpeed: 1000,

            afterLoad: function (origin, destination, direction) {
                if (destination.index >= 3) {
                    $("#fp-nav ul li a span").css("background-color","black");
                    $("nav ul li a").css("color", "black");
                    $("nav ul li a").hover(function () {
                            $($(this).css("color", "#9e9e9e"));
                        }, function () {
                            $($(this).css("color", "black"));
                        }

                    )
                    logo.addClass("active");

                } else {
                    $("#fp-nav ul li a span").css("background-color","white");
                    $("nav ul li a").css("color", "#f1f1f1");
                    $("nav ul li a").hover(function () {
                            $($(this).css("color", "#9e9e9e"));
                        }, function () {
                            $($(this).css("color", "#f1f1f1"));
                        }

                    )
                    logo.removeClass("active");
                }
            }
        });
         
        function pwChangeToggle(){

        const toggleBtn = $(".pwcontainer i");
       
        toggleBtn.on("click" ,function(){

        $("#pw").toggleClass("on");

        if($("#pw").hasClass("on")){
            toggleBtn.attr("class","xi-eye-off-o");
            $("#pw").attr("type","text");
           
  
        }else{
            toggleBtn.attr("class","xi-eye-o");
            $("#pw").attr("type","password");
            
        }
            
        });

        }
        
      
    </script>
</body>

</html>