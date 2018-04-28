<!DOCTYPE html>
<!-- saved from url=(0029)https://www.mkzhan.com/login/ -->
<%@ page   contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="s"  uri="/struts-tags"%>
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
    <title>登录 - 漫客栈</title>
    <link rel="shortcut icon" href="https://static.mkzcdn.com/common/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/layui.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/mkz.base.css">

    <!-- start Dplus --><script type="text/javascript" async="" charset="utf-8" src="${pageContext.request.contextPath}/css/core.php"></script><script src="${pageContext.request.contextPath}/css/push.js.下载"></script><script type="text/javascript" charset="utf-8" async="" src="${pageContext.request.contextPath}/css/dplus.php"></script><script type="text/javascript">!function(a,b){if(!b.__SV){var c,d,e,f;window.dplus=b,b._i=[],b.init=function(a,c,d){function g(a,b){var c=b.split(".");2==c.length&&(a=a[c[0]],b=c[1]),a[b]=function(){a.push([b].concat(Array.prototype.slice.call(arguments,0)))}}var h=b;for("undefined"!=typeof d?h=b[d]=[]:d="dplus",h.people=h.people||[],h.toString=function(a){var b="dplus";return"dplus"!==d&&(b+="."+d),a||(b+=" (stub)"),b},h.people.toString=function(){return h.toString(1)+".people (stub)"},e="disable track track_links track_forms register unregister get_property identify clear set_config get_config get_distinct_id track_pageview register_once track_with_tag time_event people.set people.unset people.delete_user".split(" "),f=0;f<e.length;f++)g(h,e[f]);b._i.push([a,c,d])},b.__SV=1.1,c=a.createElement("script"),c.type="text/javascript",c.charset="utf-8",c.async=!0,c.src="//w.cnzz.com/dplus.php?id=1262045698",d=a.getElementsByTagName("script")[0],d.parentNode.insertBefore(c,d)}}(document,window.dplus||[]),dplus.init("1262045698");</script><style type="text/css" abt="234"></style><!-- end Dplus -->

    <link id="layuicss-laydate" rel="stylesheet" href="${pageContext.request.contextPath}/css/laydate.css" media="all"><link id="layuicss-layer" rel="stylesheet" href="${pageContext.request.contextPath}/css/layer.css" media="all"><link id="layuicss-skincodecss" rel="stylesheet" href="${pageContext.request.contextPath}/css/code.css" media="all"><script>//console.log('a')
    </script><script>doAdblock();
    function doAdblock(){
        (function() {
            function A() {}
            A.prototype = {
                rules: {
                    'pps_pps': {
                        'find': /^http:\/\/www\.iqiyi\.com\/player\/cupid\/common\/pps_flvplay_s\.swf/,
                        'replace': 'http://swf.adtchrome.com/pps_20140420.swf'
                    },
                    '17173_in':{
                        'find':/http:\/\/f\.v\.17173cdn\.com\/(\d+\/)?flash\/PreloaderFile(Customer)?\.swf/,
                        'replace':"http://swf.adtchrome.com/17173_in_20150522.swf"
                    },
                    '17173_out':{
                        'find':/http:\/\/f\.v\.17173cdn\.com\/(\d+\/)?flash\/PreloaderFileFirstpage\.swf/,
                        'replace':"http://swf.adtchrome.com/17173_out_20150522.swf"
                    },
                    '17173_live':{
                        'find':/http:\/\/f\.v\.17173cdn\.com\/(\d+\/)?flash\/Player_stream(_firstpage)?\.swf/,
                        'replace':"http://swf.adtchrome.com/17173_stream_20150522.swf"
                    },
                    '17173_live_out':{
                        'find':/http:\/\/f\.v\.17173cdn\.com\/(\d+\/)?flash\/Player_stream_(custom)?Out\.swf/,
                        'replace':"http://swf.adtchrome.com/17173.out.Live.swf"
                    }
                },
                _done: null,
                get done() {
                    if(!this._done) {
                        this._done = new Array();
                    }
                    return this._done;
                },
                addAnimations: function() {
                    var style = document.createElement('style');
                    style.type = 'text/css';
                    style.innerHTML = 'object,embed{\
                -webkit-animation-duration:.001s;-webkit-animation-name:playerInserted;\
                -ms-animation-duration:.001s;-ms-animation-name:playerInserted;\
                -o-animation-duration:.001s;-o-animation-name:playerInserted;\
                animation-duration:.001s;animation-name:playerInserted;}\
                @-webkit-keyframes playerInserted{from{opacity:0.99;}to{opacity:1;}}\
                @-ms-keyframes playerInserted{from{opacity:0.99;}to{opacity:1;}}\
                @-o-keyframes playerInserted{from{opacity:0.99;}to{opacity:1;}}\
                @keyframes playerInserted{from{opacity:0.99;}to{opacity:1;}}';
                    document.getElementsByTagName('head')[0].appendChild(style);
                },
                animationsHandler: function(e) {
                    if(e.animationName === 'playerInserted') {
                        this.replace(e.target);
                    }
                },
                replace: function(elem) {
                    if (/http:\/\/v.youku.com\/v_show\/.*/.test(window.location.href)){
                        var tag = document.getElementById("playerBox").getAttribute("player")
                        if (tag == "adt"){
                            console.log("adt adv")
                            return;
                        }
                    }
                    if(this.done.indexOf(elem) != -1) return;
                    this.done.push(elem);
                    var player = elem.data || elem.src;
                    if(!player) return;
                    var i, find, replace = false;
                    for(i in this.rules) {
                        find = this.rules[i]['find'];
                        if(find.test(player)) {
                            replace = this.rules[i]['replace'];
                            if('function' === typeof this.rules[i]['preHandle']) {
                                this.rules[i]['preHandle'].bind(this, elem, find, replace, player)();
                            }else{
                                this.reallyReplace.bind(this, elem, find, replace)();
                            }
                            break;
                        }
                    }
                },
                reallyReplace: function(elem, find, replace) {
                    elem.data && (elem.data = elem.data.replace(find, replace)) || elem.src && ((elem.src = elem.src.replace(find, replace)) && (elem.style.display = 'block'));
                    var b = elem.querySelector("param[name='movie']");
                    this.reloadPlugin(elem);
                },
                reloadPlugin: function(elem) {
                    var nextSibling = elem.nextSibling;
                    var parentNode = elem.parentNode;
                    parentNode.removeChild(elem);
                    var newElem = elem.cloneNode(true);
                    this.done.push(newElem);
                    if(nextSibling) {
                        parentNode.insertBefore(newElem, nextSibling);
                    } else {
                        parentNode.appendChild(newElem);
                    }
                },
                init: function() {
                    var handler = this.animationsHandler.bind(this);
                    document.body.addEventListener('webkitAnimationStart', handler, false);
                    document.body.addEventListener('msAnimationStart', handler, false);
                    document.body.addEventListener('oAnimationStart', handler, false);
                    document.body.addEventListener('animationstart', handler, false);
                    this.addAnimations();
                }
            };
            new A().init();
        })();
    }
    // 20140730
    (function cnbeta() {
        if (document.URL.indexOf('cnbeta.com') >= 0) {
            var elms = document.body.querySelectorAll("p>embed");
            Array.prototype.forEach.call(elms, function(elm) {
                elm.style.marginLeft = "0px";
            });
        }
    })();
    //baidu
    if(document.URL.indexOf('www.baidu.com') >= 0){
        if(document && document.getElementsByTagName && document.getElementById && document.body){
            var aa = function(){
                var all = document.body.querySelectorAll("#content_left div,#content_left table");
                for(var i = 0; i < all.length; i++){
                    if(/display:\s?(table|block)\s!important/.test(all[i].getAttribute("style"))){all[i].style.display= "none";all[i].style.visibility='hidden';}
                }
                all = document.body.querySelectorAll('.result.c-container[id="1"]');
                //if(all.length == 1) return;
                for(var i = 0; i < all.length; i++){
                    if(all[i].innerHTML && all[i].innerHTML.indexOf('广告')>-1){
                        all[i].style.display= "none";all[i].style.visibility='hidden';
                    }
                }
            }
            aa();
            document.getElementById('wrapper_wrapper').addEventListener('DOMSubtreeModified',aa)
        };
    }
    if (document.URL.indexOf("tv.sohu.com") >= 0){
        if (document.cookie.indexOf("fee_status=true")==-1){document.cookie='fee_status=true'};
    }
    if (document.URL.indexOf("56.com") >= 0){
        if (document.cookie.indexOf("fee_status=true")==-1){document.cookie='fee_status=true'};
    }
    if (document.URL.indexOf("iqiyi.com") >= 0){
        if (document.cookie.indexOf("player_forcedType=h5_VOD")==-1){
            document.cookie='player_forcedType=h5_VOD'
            if(localStorage.reloadTime && Date.now() - parseInt(localStorage.reloadTime)<60000){
                console.log('no reload')
            }else{
                location.reload()
                localStorage.reloadTime = Date.now();
            }
        }
    }
    </script><style type="text/css">object,embed{                -webkit-animation-duration:.001s;-webkit-animation-name:playerInserted;                -ms-animation-duration:.001s;-ms-animation-name:playerInserted;                -o-animation-duration:.001s;-o-animation-name:playerInserted;                animation-duration:.001s;animation-name:playerInserted;}                @-webkit-keyframes playerInserted{from{opacity:0.99;}to{opacity:1;}}                @-ms-keyframes playerInserted{from{opacity:0.99;}to{opacity:1;}}                @-o-keyframes playerInserted{from{opacity:0.99;}to{opacity:1;}}                @keyframes playerInserted{from{opacity:0.99;}to{opacity:1;}}</style></head>

<body>
<div class="about-header">
    <dl class="header-login">
        <dt>
            <a href="https://www.mkzhan.com/"><img src="${pageContext.request.contextPath}/css/pic_head_logo_newyear.png" alt="漫客栈"></a>
        </dt>
        <dd>
            <a href="https://www.mkzhan.com/">首页</a>
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
        <div class="login-img" ></div>
        <form class="box-login" method="post" action="${pageContext.request.contextPath}/userloginCheck" name="login-form">
            <h3>登录漫客栈  <span>没有账号？<a rel="nofollow" href="${pageContext.request.contextPath}/userregPage">5秒注册&gt;</a></span></h3>
            <ul class="login-tab">
                <li>账号登录</li>
            </ul>

            <!-- 账号登录表单 -->
            <div class="user-info">
                <div class="input-info">
                    <i class="user-bg"></i>
                    <input type="text" name="email" value="" placeholder="注册邮箱" id="username">
                </div>
                <font color="red"><s:actionerror></s:actionerror></font>
                <div class="input-info">
                    <i class="psword-bg"></i>
                    <input type="password" name="password" value="" placeholder="登录密码" id="password">
                </div>

            <!--    <p class="psword-box">
                    <i></i>
                    <span class="remember-psword">记住我</span>
                    <a href="https://www.mkzhan.com/forgot/">忘记密码？</a>
                </p>-->
            </div>
            <input type="submit" id="login-btn" value="登录">
            <div class="three-ways">
                <span>其它方式:</span>
                <a href="https://www.mkzhan.com/login/oauth/?oauth_id=101" rel="nofollow"><img src="${pageContext.request.contextPath}/css/ic_login_qq.png" alt="QQ"></a>
                <a href="https://www.mkzhan.com/login/oauth/?oauth_id=201" rel="nofollow"><img src="${pageContext.request.contextPath}/css/ic_login_wx.png" alt="微信"></a>
                <a href="https://www.mkzhan.com/login/oauth/?oauth_id=301" rel="nofollow"><img src="${pageContext.request.contextPath}/css/ic_login_xl.png" alt="微博"></a>
            </div>
        </form>
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
                        <a class="icon-wx"><div class="mkz-wx-100"></div></a>
                        <a class="icon-wb" target="_blank" href="http://weibo.com/mankezhan"><div class="mkz-wb-100"></div></a>
                    </div>
                    <p class="tip-title">在线客服：</p>
                    <a class="contact-us icon-kf" href="tencent://message/?uin=276690507&amp;Site=www.mkzhan.com&amp;Menu=yes" target="_blank" rel="nofollow"></a>
                    <p class="tip-title qq-text">QQ群：</p>
                    <a target="_blank" href="https://shang.qq.com/wpa/qunwpa?idkey=a34447c7f6028298534b61c9295d12b1a273156b9674475e48ee15697f61c6d4" class="qq-qun" rel="nofollow"><img border="0" src="${pageContext.request.contextPath}/css/ic_foot_qq.png" alt="漫客栈" title="漫客栈"></a>
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
                <p>联系电话：027-82881816&nbsp;&nbsp;&nbsp;&nbsp;投稿邮箱：service@mkzhan.com&nbsp;&nbsp;&nbsp;&nbsp;联系QQ：<a href="tencent://message/?uin=1643308557&amp;Site=www.mkzhan.com&amp;Menu=yes" target="_blank" rel="nofollow">1643308557</a></p>
                <p>联系地址：湖北省武汉市江岸区武汉天地写字楼中信泰富大厦7层</p>
                <p>鄂ICP备16020642号-7&nbsp;&nbsp;&nbsp;&nbsp;鄂公网安备 42010602000208号&nbsp;&nbsp;&nbsp;&nbsp;网络文化经营许可证：鄂网文（2016）6601-161号</p>
                <p class="p_aqlm">Copyright ©2010-2018&nbsp;<a href="https://www.mkzhan.com/">漫客栈</a> &nbsp;&nbsp;<a href="http://www.xiaomingtaiji.com/" target="_blank">小明太极（湖北）国漫文化有限公司</a>&nbsp;&nbsp;版权所有<span class="aqlm"></span></p>
            </div>

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
                <div class="login-other">
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
                <textarea name="desc" placeholder="您可以在这里给本站编辑留言、提意见、报错、告诉编辑本站缺少的资源，向编辑表示感谢或支持，您的每一条留言我们都会认真对待，谢谢！" class="layui-textarea"></textarea>
            </div>
            <input type="text" name="title" required="" lay-verify="required" autocomplete="off" class="layui-input mt-20" placeholder="@qq.com">
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
        <div class="user-info">
            <span class="name nick"></span>
            <span class="yuepiao"><i class="ift-ticket"></i> <span class="txt">0</span></span>
            <span class="yuanbao"><i class="ift-yuanbao"></i> <span class="txt">0</span></span>
        </div>
        <div class="dialog-mn">
            <div class="ticket-goods-con row clearfix">
                <span class="title">购买套餐：</span>
                <div class="ticket-good-itm" data-id="6" data-price="1">
                    <p class="itm-name">1张月票</p>
                    <p class="itm-price">￥1.00</p>
                </div>
                <div class="ticket-good-itm" data-id="5" data-price="5">
                    <p class="itm-name">5张月票</p>
                    <p class="itm-price">￥5.00</p>
                </div>
                <div class="ticket-good-itm" data-id="4" data-price="10">
                    <p class="itm-name">10张月票</p>
                    <p class="itm-price">￥10.00</p>
                </div>
            </div>

            <div class="pay-func-con row clearfix">
                <span class="title">购买方式：</span>
                <div class="func-itm yb">元宝支付</div>
                <div class="func-itm alipay" data-url="/goods/payment?pay_type=201&amp;order_type=103&amp;order_num=1">支付宝支付</div>
                <div class="func-itm wx" data-url="/goods/payment2?pay_type=101&amp;order_type=103&amp;order_num=1">微信支付</div>
                <div class="func-itm qq" data-url="/goods/payment2?pay_type=301&amp;order_type=103&amp;order_num=1">QQ钱包</div>
            </div>

            <div class="total-pay row">
                <span class="title">应付金额：</span>
                <span class="count"><b class="num">0</b> 元</span>
            </div>
        </div>

        <div class="confirm">立即购买</div>
    </div>


    <script type="text/javascript" src="${pageContext.request.contextPath}/css/jquery.qrcode.js.下载"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/css/layui.all.js.下载"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/css/mkz.base.js.下载"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/css/charge.js.下载"></script>

    <script>
/*
        $('.login-tab li').on('click',function(){
            if($(this).hasClass('login-way')){
                return false;
            }else{
                $(this).addClass('login-way').siblings().removeClass('login-way');
                var _index = $(this).index();
                if(_index===0){
                    $('.login-mobile').css('display','none');
                    $('.user-info').css('display','block');
                }else{
                    $('.user-info').css('display','none');
                    $('.login-mobile').css('display','block');
                }
            }
        });
        //监控用户名输入
        var open_tips;
        //  点击登录按钮
        var loginFlag = true;
        $('.box-login').submit(function () {
            if(loginFlag){
                loginFlag = false;
                var _username = $('#username').val();
                var _password = $('#password').val();
                var isSign = 0;
                if($('.psword-box i').hasClass('remember-bg')){
                    isSign = 1;
                }
                $.post('/login/account',{'account':_username,'password':_password,"is_sign":isSign},function(res){
                    if (res.code===200){
                        layer.msg("登录成功");
                        window.location.replace(res.data.redirect_url);
                        loginFlag = true;
                    } else {
                        layer.close(open_tips);
                        open_tips = layer.tips(res.message,'#username');
                        loginFlag = true;
                    }
                });
            }

            return false;
        });

        // 是否记住密码
        $('.psword-box i').on('click',function(){
            if($(this).hasClass('remember-bg')){
                $(this).removeClass('remember-bg');
            }else {
                $(this).addClass('remember-bg');
            }
        })*/
    </script>

    <script>
        (function(){
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



</div><iframe src="${pageContext.request.contextPath}/css/globalstorage.html" style="position: absolute; width: 1px; height: 1px; left: -9999px;"></iframe></body></html>