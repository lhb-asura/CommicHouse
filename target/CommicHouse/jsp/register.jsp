<!DOCTYPE html>
<!-- saved from url=(0032)https://www.mkzhan.com/register/ -->
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="s"  uri="/struts-tags"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
    <title>注册 - 漫客栈</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/layui.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css">

    <!-- start Dplus -->
    <script type="text/javascript" async="" charset="utf-8"
            src="${pageContext.request.contextPath}/css/core.php"></script>
    <script src="${pageContext.request.contextPath}/css/push.js.下载"></script>
    <script type="text/javascript" charset="utf-8" async=""
            src="${pageContext.request.contextPath}/css/dplus.php"></script>
    <script type="text/javascript">!function (a, b) {
        if (!b.__SV) {
            var c, d, e, f;
            window.dplus = b, b._i = [], b.init = function (a, c, d) {
                function g(a, b) {
                    var c = b.split(".");
                    2 == c.length && (a = a[c[0]], b = c[1]), a[b] = function () {
                        a.push([b].concat(Array.prototype.slice.call(arguments, 0)))
                    }
                }

                var h = b;
                for ("undefined" != typeof d ? h = b[d] = [] : d = "dplus", h.people = h.people || [], h.toString = function (a) {
                    var b = "dplus";
                    return "dplus" !== d && (b += "." + d), a || (b += " (stub)"), b
                }, h.people.toString = function () {
                    return h.toString(1) + ".people (stub)"
                }, e = "disable track track_links track_forms register unregister get_property identify clear set_config get_config get_distinct_id track_pageview register_once track_with_tag time_event people.set people.unset people.delete_user".split(" "), f = 0; f < e.length; f++) g(h, e[f]);
                b._i.push([a, c, d])
            }, b.__SV = 1.1, c = a.createElement("script"), c.type = "text/javascript", c.charset = "utf-8", c.async = !0, c.src = "//w.cnzz.com/dplus.php?id=1262045698", d = a.getElementsByTagName("script")[0], d.parentNode.insertBefore(c, d)
        }
    }(document, window.dplus || []), dplus.init("1262045698");</script>
    <style type="text/css" abt="234"></style><!-- end Dplus -->

    <link id="layuicss-laydate" rel="stylesheet" href="${pageContext.request.contextPath}/css/laydate.css" media="all">
    <link id="layuicss-layer" rel="stylesheet" href="${pageContext.request.contextPath}/css/layer.css" media="all">
    <link id="layuicss-skincodecss" rel="stylesheet" href="${pageContext.request.contextPath}/css/code.css" media="all">
    <script>//console.log('a')
    </script>
    <style type="text/css">object, embed {
        -webkit-animation-duration: .001s;
        -webkit-animation-name: playerInserted;
        -ms-animation-duration: .001s;
        -ms-animation-name: playerInserted;
        -o-animation-duration: .001s;
        -o-animation-name: playerInserted;
        animation-duration: .001s;
        animation-name: playerInserted;
    }

    @-webkit-keyframes playerInserted {
        from {
            opacity: 0.99;
        }
        to {
            opacity: 1;
        }
    }

    @-ms-keyframes playerInserted {
        from {
            opacity: 0.99;
        }
        to {
            opacity: 1;
        }
    }

    @-o-keyframes playerInserted {
        from {
            opacity: 0.99;
        }
        to {
            opacity: 1;
        }
    }

    @keyframes playerInserted {
        from {
            opacity: 0.99;
        }
        to {
            opacity: 1;
        }
    }</style>
</head>

<body>
<div class="about-header">
    <dl class="header-login">
        <dt>
            <a href="https://www.mkzhan.com/"><img
                    src="${pageContext.request.contextPath}/css/pic_head_logo_newyear.png" alt="漫客栈"></a>
        </dt>
        <dd>
            <a href="/">首页</a>
        </dd>
        <dd>
            <a href="https://www.mkzhan.com/update/">更新</a>
        </dd>
        <dd>
            <a href="https://www.mkzhan.com/top/">排行</a>
        </dd>
        <dd>
            <a href="https://www.mkzhan.com/category/">分类</a>
        </dd>
        <dd>
            <a href="https://www.mkzhan.com/category/?finish=1">连载</a>
        </dd>
        <dd>
            <a href="https://www.mkzhan.com/category/?finish=2">完结</a>
        </dd>
        <dd>
            <a href="https://www.mkzhan.com/topic/?order=nearest">专题</a>
        </dd>

        <div class="user-app fr">
            <i class="ic-nav-appdown"></i><a href="https://www.mkzhan.com/download/" target="_blank">下载APP</a>
            <div class="app-down-code"></div>
        </div>
        <!-- <dd>
          <a href="/download/">APP</a>
        </dd> -->
    </dl>
</div>

<div class="login-container">
    <div class="login-content">
        <div class="login-img">
        </div>
        <div class="box-login">
            <form action="${pageContext.request.contextPath}/regcheck" method="post">
                <h3>注册漫客栈 <span>已有账号？<a rel="nofollow" href="https://www.mkzhan.com/login/">马上登录&gt;</a></span></h3>
                <div class="login-mobile register-box">
                    <div class="mobile-box">
                        <input type="email" name="email" value="" placeholder="注册邮箱" id="register-email"
                               class="email">

                    </div>
                    <s:fielderror fieldName="email"></s:fielderror>
                    <div class="mobile-box mobile-noborder ">
                        <input type="text" name="code" value="" placeholder="邮箱验证码" id="register-code"
                               class="psword">
                        <b class="b-selected" id="get_code"  onclick="getcode()">发送邮箱验证码</b>
                        <script>
                            var se=60;
                            var get_code=document.getElementById('get_code');
                            var xmlhttp=null;
                            var int;
                            function intaval() {
                                if(se<1)
                                {
                                    se=60;
                                    get_code.innerText="发送邮箱验证码"
                                    get_code.onclick=function () {
                                        getcode();
                                    };
                                    clearInterval(int);
                                }
                                else {
                                    se--;
                                    get_code.innerText="再过"+se+"秒可操作";
                                }
                            }

                            function state_Change()
                            {
                                if (xmlhttp.readyState==4)
                                {// 4 = "loaded"
                                    if (xmlhttp.status==200)
                                    {// 200 = OK
                                   //     alert('sucess');

                                    }
                                    else
                                    {
                                        alert("Problem retrieving XML data");
                                    }
                                }
                            }
                            function getcode() {
                                var email=document.getElementById("register-email").value;
                                var url="${pageContext.request.contextPath}/gencode?"+"email="+email;

                                get_code.innerText="再过"+se+"秒可操作";
                                get_code.onclick = function(){};
                                // ...our code here...
                                int=setInterval('intaval()',1000);
                                if (window.XMLHttpRequest)
                                {// code for all new browsers
                                    xmlhttp=new XMLHttpRequest();
                                }
                                else if (window.ActiveXObject)
                                {// code for IE5 and IE6
                                    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
                                }
                                if (xmlhttp!=null)
                                {
                                    xmlhttp.onreadystatechange=state_Change;
                                    xmlhttp.open("GET",url,true);
                                    xmlhttp.send(null);
                                }
                                else
                                {
                                    alert("Your browser does not support XMLHTTP.");
                                }
                            }
                        </script>
                    </div>
                   <s:fielderror fieldName="code"></s:fielderror>
                    <div class="input-info">
                        <i class="set-psword-bg"></i>
                        <input type="password" name="password" value="" placeholder="设置密码" class="username"
                               id="setpsword">
                    </div>
                    <s:fielderror fieldName="password"></s:fielderror>
                </div>

                <input type="submit" value="立即注册" id="login-btn"></input>
            </form>
        </div>
    </div>


    <div id="footer">
        <div class="foot-wrap clearfix">
            <div class="f-row-2">
                <div class="upload-tips clearfix">
                    <a href="https://www.mkzhan.com/author/" class="ic-upload" rel="nofollow"></a>
                    <p class="tip-title">投稿指南：</p>
                    <ul class="list">
                        <li>
                            <a href="https://www.mkzhan.com/help/10013.html" target="_blank" rel="nofollow">作品要求</a>
                        </li>
                        <li>
                            <a href="https://www.mkzhan.com/help/10016.html" target="_blank" rel="nofollow">漫画签约</a>
                        </li>
                        <li>
                            <a href="https://www.mkzhan.com/help/10015.html" target="_blank" rel="nofollow">审核机制</a>
                        </li>
                        <li>
                            <a href="https://www.mkzhan.com/help/10017.html" target="_blank" rel="nofollow">福利体系</a>
                        </li>
                    </ul>
                </div>
                <div class="about-us clearfix">
                    <p class="tip-title">关于我们：</p>
                    <div class="about-icons">
                        <a class="icon-wx">
                            <div class="mkz-wx-100"></div>
                        </a>
                        <a class="icon-wb" target="_blank" href="http://weibo.com/mankezhan">
                            <div class="mkz-wb-100"></div>
                        </a>
                    </div>
                    <p class="tip-title">在线客服：</p>
                    <a class="contact-us icon-kf"
                       href="tencent://message/?uin=276690507&amp;Site=www.mkzhan.com&amp;Menu=yes" target="_blank"
                       rel="nofollow"></a>
                    <p class="tip-title qq-text">QQ群：</p>
                    <a target="_blank"
                       href="https://shang.qq.com/wpa/qunwpa?idkey=a34447c7f6028298534b61c9295d12b1a273156b9674475e48ee15697f61c6d4"
                       class="qq-qun" rel="nofollow"><img border="0"
                                                          src="${pageContext.request.contextPath}/css/ic_foot_qq.png"
                                                          alt="漫客栈" title="漫客栈"></a>
                </div>
            </div>
        </div>
        <div class="f-row-3">
            <div class="law-box">
                <ul class="clearfix">
                    <li>
                        <a href="https://www.mkzhan.com/help/10001.html" target="_blank" rel="nofollow">帮助中心</a>
                    </li>
                    <li>
                        <a href="https://www.mkzhan.com/about/" target="_blank" rel="nofollow">关于我们</a>
                    </li>
                    <li>
                        <a href="https://www.mkzhan.com/contact/" target="_blank" rel="nofollow">联系我们</a>
                    </li>
                    <li>
                        <a href="javascript:void(0);" rel="nofollow">网站地图</a>
                    </li>
                    <li>
                        <a href="https://www.mkzhan.com/legal_notice/" target="_blank" rel="nofollow">法律声明</a>
                    </li>
                    <li class="noborder">
                        <a style="cursor:pointer;" id="feedback" class="feedback" rel="nofollow">意见反馈</a>
                    </li>
                </ul>

                <p class="mid">鄂ICP备16020642号-7&nbsp;&nbsp;&nbsp;&nbsp;鄂公网安备 42010602000208号&nbsp;&nbsp;&nbsp;&nbsp;网络文化经营许可证：鄂网文（2016）6601-161号</p>
                <p>Copyright ©2010-2018 <a href="https://www.mkzhan.com/">漫客栈</a> 版权所有</p>
            </div>
            <div class="aqlm"></div>
        </div>
    </div>

    <div class="login-box hide">
        <div class="login-main" id="numLogin">
            <div class="login-text">账号登录</div>
            <div class="login-con">
                <div class="login-error">
                    <div class="error-tip" style="display:none;">
                        <i class="ift-delete"></i>
                        <span class="tip">账号或密码错误</span>
                    </div>
                </div>
                <div class="login-input">
                    <i class="ift-user"></i>
                    <input class="login-num" type="text" name="username" placeholder="手机号码/漫客栈账号">
                </div>
                <div class="psword-input">
                    <i class="ift-psword"></i>
                    <!-- IE8以及以下版本 -->
                    <!--[if lte IE 8]>
                    <input class="login-pw" type="password" name="password" placeholder="">
                    <![endif]-->
                    <!-- 除了IE以外的版本 -->
                    <!--[if !IE]-->
                    <input class="login-pw" type="password" name="password" placeholder="请输入密码">

                    <!--[endif]-->
                </div>

                <div class="remember-box">
                    <input type="checkbox" id="remember"><label for="remember">记住我</label>
                    <a class="forget" href="https://www.mkzhan.com/forgot/">忘记密码?</a>
                </div>
                <input type="button" value="登录" class="login-botton">
                <div class="lmgin-other">
                    <span class="login-other-text">其他方式：</span>
                    <a rel="nofollow" href="https://www.mkzhan.com/login/oauth/?oauth_id=101" class="login-qq"></a>
                    <a rel="nofollow" href="https://www.mkzhan.com/login/oauth/?oauth_id=201" class="login-wx"></a>
                    <a rel="nofollow" href="https://www.mkzhan.com/login/oauth/?oauth_id=301" class="login-wb"></a>
                    <span class="go-reg"><a rel="nofollow" href="https://www.mkzhan.com/register">去注册 &gt;</a></span>
                </div>
            </div>
        </div>
        <!--手机快捷登录-->
        <div class="login-main" id="phoneLogin">
            <div class="login-text">手机快捷登录
                <a id="toNumLogin">账号登录&gt;
                </a>
            </div>

            <div class="login-con">
                <div class="login-error">
                    <div class="error-tip" style="display:none;">
                        <i class="ift-delete"></i>
                        <span class="tip">请输入正确的手机号</span>
                    </div>
                </div>
                <div class="login-phone-box">
                    <span class="login-phone-title">+86</span>
                    <input class="login-phone" type="text" placeholder="手机号码">
                </div>
                <div class="login-phonecode-box">
                    <input class="login-phonecode" type="text" placeholder="动态密码">
                    <!--获取密码前-->
                    <span class="get-code">获取动态密码</span>
                    <!--获取密码中-->、
                </div>
                <input type="button" value="登录" class="login-botton">
                <div class="login-other">
                    <span class="login-other-text">其他方式：</span>
                    <a rel="nofollow" href="https://www.mkzhan.com/login/oauth/?oauth_id=101" class="login-qq"></a>
                    <a rel="nofollow" href="https://www.mkzhan.com/login/oauth/?oauth_id=201" class="login-wx"></a>
                    <a rel="nofollow" href="https://www.mkzhan.com/login/oauth/?oauth_id=301" class="login-wb"></a>
                    <span class="go-reg"><a rel="nofollow" href="https://www.mkzhan.com/register">去注册 &gt;</a></span>
                </div>
            </div>
        </div>
    </div>

    <!-- 月票框 -->
    <div id="ticketBox" class="hide">
        <div class="calc">
            <i class="ift-ticket-circle"></i>
            <span class="reduce" style="cursor: pointer;">-</span>
            <input class="result" value="1">
            <span class="add" style="cursor: pointer;">+</span>
            <span>月票</span>
        </div>
        <div class="ticket-btn">立即投票</div>
        <p>您的月票 <span class="u-has">10</span></p>
    </div>

    <!--用户反馈 需保留 -->
    <div id="freebackBox" class="hide">
        <div class="title-nav">
            <span class="on itm" style="cursor:pointer;">在线反馈</span>
            <span class="itm" style="cursor:pointer;">我的反馈</span>
        </div>
        <!-- 留言反馈 -->
        <div class="input-box">
            <div class="text-wrap">
                <dl class="title-choose">
                    <dt data-id="1" class="selected-dt">图片问题</dt>
                    <dt data-id="2">会员付费</dt>
                    <dt data-id="3">作品不全</dt>
                    <dt data-id="4">功能问题</dt>
                    <dt data-id="6">其他问题</dt>
                    <dd>(反馈类型*为必选)</dd>
                </dl>
                <textarea name="desc" placeholder="您可以在这里给本站编辑留言、提意见、报错、告诉编辑本站缺少的资源，向编辑表示感谢或支持，您的每一条留言我们都会认真对待，谢谢！"
                          class="layui-textarea"></textarea>
            </div>
            <input type="text" name="title" required="" lay-verify="required" autocomplete="off"
                   class="layui-input mt-20" placeholder="@qq.com">
            <button class="layui-btn mt-20" lay-submit="" lay-filter="formDemo" id="submit-feedback">提交</button>
            <span style="float: right;color: #999;margin-top: 30px;">主人，提供有效的反馈有机会获得神秘礼品哟~</span>
        </div>

        <div class="freeback-list-box" style="display:none;">
            <p style="text-align:center;height: 250px;line-height: 250px;font-size: 18px;">您还未提交反馈，感谢您对漫客栈的支持！</p>
        </div>

    </div>

    <!--付费章节弹窗-->
    <div class="pay-chapter-box hide">
        <div class="box-title pay-dialog-1">
            <h4>当前章节为付费章节</h4>
            <!--登录时显示-->
            <div class="my-yb">
                我的账户：
                <font color="#FF620E"><span class="my-yb-left">XXXX</span> 元宝 </font>
            </div>
            <!--登录时显示end-->
        </div>
        <div class="pay-chapter pay-dialog-1">
            <div class="pay-l">
                <div class="pay-type">
                    <h5><span class="icon"></span>购买此章节</h5>
                    <div class="notice">
                        <span color="#FF620E">需要 <span class="price"></span> 元宝</span>
                        &nbsp;&nbsp;<span class="yuanjia hide">原价：元宝</span>
                    </div>
                </div>
                <div class="pay-btn">
                    <span id="payThis">购买此章节</span>
                    <div class="auto-pay"><input id="autoPay" type="checkbox">自动购买下一章节</div>
                </div>
            </div>
            <div class="pay-r">
                <div class="pay-type">
                    <h5><span class="icon"></span>多章节购买</h5>
                    <div class="notice">一次购买多章节或整本完结漫画</div>
                </div>
                <div class="pay-btn">
                    <span id="payMore">多章节购买</span>
                </div>
            </div>
        </div>
        <div class="pay-vip">
            <p class="txt1">开通漫客栈VIP</p>
            <p class="txt2">付费章节<span style="color: #ff620e;">8折</span>优惠，超多特权等你发现</p>
            <a class="btn" href="https://www.mkzhan.com/order/pay?order_type=102" target="_blank">马上开通</a>
        </div>
    </div>
    <!--付费章节end-->

    <div class="buy-ticket-dialog hide">
        <div class="title">
            <span class="name nick"></span>
            <span class="yuepiao"><i class="ift-ticket"></i> <span class="txt">0</span></span>
            <span class="yuanbao"><i class="ift-yuanbao"></i> <span class="txt">0</span></span>
        </div>
        <div class="dialog-mn">
            <div class="func-1">
                <div class="sub-title clearfix">
                    <span class="num">1</span>
                    <span class="txt">元宝购买月票</span>
                </div>
                <div class="good-box clearfix">
                    <div class="good-itm selected" data-goods_id="6">
                        <p class="name">1张月票</p>
                        <p class="price">100元宝</p>
                    </div>
                    <div class="good-itm" data-goods_id="5">
                        <p class="name">5张月票</p>
                        <p class="price">500元宝</p>
                    </div>
                    <div class="good-itm mr0" data-goods_id="4">
                        <p class="name">10张月票</p>
                        <p class="price">1000元宝</p>
                    </div>
                </div>
                <div class="confirm-btn">确认购买</div>
            </div>

            <div class="sub-title clearfix">
                <span class="num">2</span>
                <span>开通VIP获取更多月票，<a href="https://www.mkzhan.com/order/pay?order_type=102" target="_blank">去开通&gt;</a> </span>
            </div>

            <div class="sub-title clearfix">
                <span class="num">3</span>
                <span>单次打赏1000元宝即可获取月票，<a href="https://www.mkzhan.com/order/pay?order_type=101"
                                          target="_blank">去充值&gt;</a> </span>
            </div>
        </div>
    </div>


    <script type="text/javascript" src="${pageContext.request.contextPath}/css/jquery.min.js.下载"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/css/jquery.qrcode.js.下载"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/css/charge.js.下载"></script>

    <script type="text/javascript">
        //填写手机号，获取验证码的按钮变亮
        //  $('#register-mobile').keyup(function(){
        //    var _val = $(this).val();
        //    if(/^(13[0-9]|14[0-9]|15[0-9]|18[0-9])\d{8}$/i.test(_val)){
        //      if($('.mobile-box b').html() == "获取验证码"){
        //        $('.mobile-box b').addClass('b-selected');
        //      }
        //    }else{
        //      $('.mobile-box b').removeClass('b-selected');
        //    }
        //  });
        //监控用户名输入
        var check_mobile;
        var check_mobile_status = 0;
        var open_tips;
        var open_tips_msg;

        //监控用户名输入
        var check_username;
        var check_name_status = 0;
        var open_msg;
        $('input[name=username]').blur(function () {
            var nowcheck_username = $('input[name=username]').val();
            if (check_username != nowcheck_username) {
                check_username = nowcheck_username;
                docheck_username(check_username);
            }
        });

        //检查用户名是否可用
        function docheck_username(check_username) {
            $.post("/register/check_username", {'username': check_username}, function (res) {
                if (res.code != 200) {
                    check_name_status = 0;
                    $('input[name=username]').focus();
                    layer.close(open_msg);
                    open_msg = layer.msg(res.message);
                    $('input[name=username]').html('');
                } else {
                    layer.close(open_msg);
                    check_name_status = 1;
                }
            });
        }

        //监控用户名输入
        var check_email;
        var check_email_status = 0;
        var open_msg2;
        $('input[name=registerEmail]').blur(function () {
            var nowcheck_email = $('input[name=registerEmail]').val();
            if (check_email != nowcheck_email) {
                check_email = nowcheck_email;
                docheck_email(check_email);
            }
        });

        //检查用户名是否可用
        function docheck_email(check_email) {
            $.post("/register/check_email", {'email': check_email}, function (res) {
                if (res.code != 200) {
                    check_email_status = 0;
                    $('input[name=registerEmail]').focus();
                    layer.close(open_msg2);
                    open_msg2 = layer.msg(res.message);
                    $('input[name=registerEmail]').html('');
                } else {
                    layer.close(open_msg2);
                    check_email_status = 1;
                }
            });
        }

        function docheck_mobile(check_mobile) {
            $.ajax({
                url: "/register/check_mobile",
                async: false,
                data: {'mobile': check_mobile},
                type: 'POST',
                success: function (res) {
                    if (res.code != 200) {
                        check_mobile_status = 0;
                        $('#register-mobile').focus();
                        layer.close(open_tips);
                        open_tips = layer.tips(res.message, '#register-mobile');
                        open_tips_msg = res.message;
                        $('#register-mobile').html('');
                    } else {
                        layer.close(open_tips);
                        check_mobile_status = 1;
                    }
                }
            });
        }

        //获取动态密码
        var _timer = null;
        var codeFlag = true;
        $('.mobile-box b').on('click', function () {
            if (codeFlag) {
                var phone = $('#register-mobile').val();
                if (!/^(13[0-9]|14[0-9]|15[0-9]|17[0-9]|18[0-9])\d{8}$/i.test(phone)) {
                    layer.tips('请输入正确的手机号', '#register-mobile');
                    return false;
                }
                docheck_mobile(phone);
                if (check_mobile_status != 1) {
                    return false;
                }
                var _this = this;
                $.post('/register/account_code', {'mobile': phone}, function (res) {
                    console.log(res);
                    var _expire = res.data.expire;
                    if (res.code === 200) {
                        codeFlag = false;
                        check_mobile_status = 1;
                        layer.msg(res.message, {icon: 6});
                        $(_this).removeClass('b-selected');
                        $(_this).html("重新获取（" + _expire + ")");
                        _timer = setInterval(function () {
                            if (_expire > 1) {
                                _expire = _expire - 1;
                                $(_this).html("重新获取（" + _expire + ")");
                            } else {
                                $(_this).addClass('b-selected');
                                $(_this).html("获取验证码");
                                clearInterval(_timer);
                                codeFlag = true;
                            }
                        }, 1000);
                    } else {
                        layer.tips(res.message, '#register-mobile');
                    }
                });
            } else {
                layer.tips('已发送验证码，请查看手机！！', '#get_mobile_code');
            }

        });

        // 注册按钮
        var registerFlag = true;
        $('#login-btn').on('click', function () {
            if (registerFlag) {
                registerFlag = false;
                var _phone = $('#register-mobile').val();
                var _code = $('#register-code').val();
                var _setpsword = $('#setpsword').val();
                if (check_mobile_status == 0) {
                    layer.msg(open_tips_msg);
                    return false;
                }
                $.post('/register/account', {'mobile': _phone, 'code': _code, 'password': _setpsword}, function (res) {
                    if (res.code === 200) {
                        layer.msg("注册成功，前往登录");
                        window.location.href = "/";
                        registerFlag = true;
                    } else {
                        layer.alert(res.message, {
                            title: "获取验证码",
                            skin: "#FF620E",
                            closeBtn: 0,
                        }, function () {
                            layer.close(layer.index);
                            registerFlag = true;
                        });
                    }

                });
            }

        });
        //注册回车事件
        $('#setpsword').keypress(function (e) {
            if (e.keyCode == 13) {
                if (registerFlag) {
                    registerFlag = false;
                    var _phone = $('#register-mobile').val();
                    var _code = $('#register-code').val();
                    var _setpsword = $('#setpsword').val();
                    $.post('/register/account', {
                        'mobile': _phone,
                        'code': _code,
                        'password': _setpsword
                    }, function (res) {
                        if (res.code === 200) {
                            layer.msg("注册成功，前往登录");
                            window.location.href = "/";
                            registerFlag = true;
                        } else {
                            layer.alert(res.message, {
                                title: "获取验证码",
                                skin: "#FF620E",
                                closeBtn: 0
                            }, function () {
                                layer.close(layer.index);
                                registerFlag = true;
                            });
                        }
                    });
                }
            }

        });
    </script>

    <script>
        (function () {
            var bp = document.createElement('script');
            var curProtocol = window.location.protocol.split(':')[0];
            if (curProtocol === 'https') {
                bp.src = 'https://zz.bdstatic.com/linksubmit/push.js';
            }
            else {
                bp.src = 'http://push.zhanzhang.baidu.com/push.js';
            }
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(bp, s);
        })();
    </script>


</div>
<iframe src="${pageContext.request.contextPath}/css/globalstorage.html"
        style="position: absolute; width: 1px; height: 1px; left: -9999px;"></iframe>
</body>
</html>