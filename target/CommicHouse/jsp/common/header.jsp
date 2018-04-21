<%--
  Created by IntelliJ IDEA.
  User: lhb
  Date: 2018/3/11
  Time: 9:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="header-wrap clearfix">
    <div class="logo fl">
        <a href="https://www.mkzhan.com/">
            <img src="${pageContext.request.contextPath}/css/pic_head_logo_newyear.png" alt="漫客栈">
        </a>
    </div>

    <!-- 搜索 -->
    <div class="search-box fl">
        <!-- 搜索框 -->
        <div class="input-box">
            <i class="icon-search"></i>
            <input type="text" style="position:absolute;top:-99999px">
            <input class="search-input" type="text" name="search" placeholder="斗破苍穹" data-holder="斗破苍穹" value=""
                   autocomplete="off"> <span class="search-btn">搜索</span>
        </div>
        <!-- 搜索弹框 -->
        <div class="search-layout fl">
            <!--  你是不是要找 -->
            <div class="is-find hide">
                <ul class="input-s-ul"></ul>
            </div>

            <!-- 搜索历史 -->
            <div class="s-history">
                <!-- 有历史，历史现实最近3条 -->
                <div class="layout-his-tit">
                    <p class="layout-title">搜索历史</p>
                    <div class="clear-his">
                        <i class="ift-trash"></i>
                        <span>清除记录</span>
                    </div>
                </div>
                <div class="s-h-box">
                    <ul class="clearfix"></ul>
                </div>
            </div>

            <!-- 热门搜索 -->
            <div class="s-hot">
                <p class="layout-title">热门搜索</p>
                <ul>
                    <li class="search-layout-item item-hover"><span class="num num-top">1</span><a class="wrap"
                                                                                                   href="https://www.mkzhan.com/209516/"><img
                            class="cover"
                            src="${pageContext.request.contextPath}/css/5a94c07c290f7-1800x2400.jpg!width-200"
                            alt="">
                        <div class="detail"><p class="comic-name"><span>纣王何弃疗</span></p>
                            <p class="intro">弃疗暴君，被坑成王！</p>
                            <p class="author">作者：羽苍绘制</p><span class="read">开始阅读</span></div>
                    </a>
                        <p class="comic-name">纣王何弃疗</p></li>
                    <li class="search-layout-item"><span class="num num-top">2</span><a class="wrap"
                                                                                        href="https://www.mkzhan.com/208340/"><img
                            class="cover"
                            src="${pageContext.request.contextPath}/css/59296cd3da4d1-2480x3508.jpg!width-200"
                            alt="">
                        <div class="detail"><p class="comic-name"><span>封妖笔录</span></p>
                            <p class="intro">封妖师的复兴</p>
                            <p class="author">作者：封妖蜡笔</p><span class="read">开始阅读</span></div>
                    </a>
                        <p class="comic-name">封妖笔录</p></li>
                    <li class="search-layout-item"><span class="num num-top">3</span><a class="wrap"
                                                                                        href="https://www.mkzhan.com/208602/"><img
                            class="cover"
                            src="${pageContext.request.contextPath}/css/594729e23591a-600x800.jpg!width-200" alt="">
                        <div class="detail"><p class="comic-name"><span>手办王子2</span></p>
                            <p class="intro">女上男下，王子被玩弄</p>
                            <p class="author">作者：寒羽_</p><span class="read">开始阅读</span></div>
                    </a>
                        <p class="comic-name">手办王子2</p></li>
                    <li class="search-layout-item"><span class="num">4</span><a class="wrap"
                                                                                href="https://www.mkzhan.com/208535/"><img
                            class="cover"
                            src="${pageContext.request.contextPath}/css/5930c2557e745-600x800.jpg!width-200" alt="">
                        <div class="detail"><p class="comic-name"><span>赤练当空</span></p>
                            <p class="intro">冰山萝莉与倒霉男主</p>
                            <p class="author">作者：墨泉哗哗哗</p><span class="read">开始阅读</span></div>
                    </a>
                        <p class="comic-name">赤练当空</p></li>
                    <li class="search-layout-item"><span class="num">5</span><a class="wrap"
                                                                                href="https://www.mkzhan.com/208217/"><img
                            class="cover"
                            src="${pageContext.request.contextPath}/css/5a7d07c0c2773-597x796.jpg!width-200" alt="">
                        <div class="detail"><p class="comic-name"><span>灵异事件簿</span></p>
                            <p class="intro">与老板一起捉鬼的浪漫</p>
                            <p class="author">作者：歪歪狐动漫工作室</p><span class="read">开始阅读</span></div>
                    </a>
                        <p class="comic-name">灵异事件簿</p></li>
                    <li class="search-layout-item"><span class="num">6</span><a class="wrap"
                                                                                href="https://www.mkzhan.com/209641/"><img
                            class="cover"
                            src="${pageContext.request.contextPath}/css/598aad65a318b-2480x3306.jpg!width-200"
                            alt="">
                        <div class="detail"><p class="comic-name"><span>时之旅</span></p>
                            <p class="intro">力量的代价是生命？还是...</p>
                            <p class="author">作者：SadlyJoker</p><span class="read">开始阅读</span></div>
                    </a>
                        <p class="comic-name">时之旅</p></li>
                    <li class="search-layout-item"><span class="num">7</span><a class="wrap"
                                                                                href="https://www.mkzhan.com/209556/"><img
                            class="cover"
                            src="${pageContext.request.contextPath}/css/5a30f144b9e4a-1798x2398.jpg!width-200"
                            alt="">
                        <div class="detail"><p class="comic-name"><span>魂之诗</span></p>
                            <p class="intro">命运之链开始转动</p>
                            <p class="author">作者：娃娃猫</p><span class="read">开始阅读</span></div>
                    </a>
                        <p class="comic-name">魂之诗</p></li>
                    <li class="search-layout-item"><span class="num">8</span><a class="wrap"
                                                                                href="https://www.mkzhan.com/209378/"><img
                            class="cover"
                            src="${pageContext.request.contextPath}/css/5a1b82da7771e-625x833.jpg!width-200" alt="">
                        <div class="detail"><p class="comic-name"><span>听星星唱歌</span></p>
                            <p class="intro">菜鸟漫画家的异世旅行</p>
                            <p class="author">作者：星星畅</p><span class="read">开始阅读</span></div>
                    </a>
                        <p class="comic-name">听星星唱歌</p></li>
                    <li class="search-layout-item"><span class="num">9</span><a class="wrap"
                                                                                href="https://www.mkzhan.com/209444/"><img
                            class="cover"
                            src="${pageContext.request.contextPath}/css/5a79a9720b6c2-1500x2000.jpg!width-200"
                            alt="">
                        <div class="detail"><p class="comic-name"><span>人鱼诡话</span></p>
                            <p class="intro">神秘人鱼的爱恋</p>
                            <p class="author">作者：歪歪狐动漫工作室</p><span class="read">开始阅读</span></div>
                    </a>
                        <p class="comic-name">人鱼诡话</p></li>
                    <li class="search-layout-item"><span class="num">10</span><a class="wrap"
                                                                                 href="https://www.mkzhan.com/209446/"><img
                            class="cover"
                            src="${pageContext.request.contextPath}/css/59a5175d9bd13-600x800.jpg!width-200" alt="">
                        <div class="detail"><p class="comic-name"><span>镇妖师</span></p>
                            <p class="intro">男女搭配，镇妖不累</p>
                            <p class="author">作者：时之轩动漫工作室</p><span class="read">开始阅读</span></div>
                    </a>
                        <p class="comic-name">镇妖师</p></li>
                </ul>
            </div>
        </div>
    </div>
    <!-- user -->
    <div class="user-box fr">
        <div class="user-head fl">
            <div class="logged hide">
                <a rel="nofollow" href="https://www.mkzhan.com/user/" class="head">
                    <img src="${pageContext.request.contextPath}/css/pic_default_headimg_100.png"
                         alt="">
                </a>
                <div class="head-box hide">
                    <div class="col-1">
                        <a rel="nofollow" href="https://www.mkzhan.com/user/" class="head">
                            <img src="${pageContext.request.contextPath}/css/pic_default_headimg_100.png"
                                 alt="">
                        </a>
                        <div class="name-box">
                            <a rel="nofollow" href="https://www.mkzhan.com/user/" class="user-name"></a>
                            <a class="vip-tag">vip</a>
                        </div>

                    </div>
                    <div class="col-2 clearfix">

                        <div class="yuanbao fl">
                            <span class="txt">0</span>
                            <br>
                            <span>元宝</span>
                        </div>
                        <div class="line"></div>
                        <div class="yuepiao fr">
                            <span class="txt">0</span>
                            <br>
                            <span>月票</span>
                        </div>
                    </div>
                    <div class="foot">
                        <a class="get-vip" href="https://www.mkzhan.com/order/pay?order_type=102" target="_blank"
                           rel="nofollow">开通vip</a>
                        <a id="logout" href="javascript:void(0);" class="quit">退出登录</a>
                    </div>
                </div>
            </div>
            <div class="nolog">
                <a class="login" href="https://www.mkzhan.com/login/" rel="nofollow">登录</a>
                <a class="register" href="/register" rel="nofollow">注册</a>
            </div>
        </div>
        <div class="user-msg fl">
            <a href="javascript:void(0);"><i class="ift-msg"></i><span class="red-point" style="display: none"
                                                                       id="unread_mark"></span></a>
        </div>
        <div class="user-collect fl">
            <a target="_blank" href="https://www.mkzhan.com/user/collection/"><i class="ift-star"></i></a>
            <i class="sj-down"></i>
            <div class="coll-box hide">
                <div class="no-login nolog">
                    <a href="javascript:void(0);" class="login-btn">登录</a>
                    <span>同步各端数据</span>
                </div>
                <div class="layer-con">
                    <div class="no-con">
                        <span class="star"></span>
                        <p>你暂时还没有收藏漫画呦～</p>
                        <a href="https://www.mkzhan.com/category/" style="color: #ff620e;">开始追个漫画吧</a>
                    </div>
                    <div class="user-list-box">
                        <ul class="coll-ul"></ul>
                    </div>
                    <div class="foot"><a rel="nofollow" href="https://www.mkzhan.com/user/collection/"
                                         target="_blank">查看更多收藏历史</a></div>
                </div>
            </div>
        </div>
        <div class="user-history fl">
            <a target="_blank" href="https://www.mkzhan.com/user/history/"><i class="ift-clock2"></i></a>
            <i class="sj-down"></i>
            <div class="his-box hide">
                <div class="no-login nolog">
                    <a href="javascript:void(0);" class="login-btn">登录</a>
                    <span>同步各端数据</span>
                </div>
                <div class="layer-con">
                    <div class="no-con">
                        <span class="clock"></span>
                        <p>你暂时还没有阅读漫画呦～</p>
                        <a href="https://www.mkzhan.com/category/" style="color: #ff620e;">开始追个漫画吧</a>
                    </div>
                    <div class="user-list-box" style="display: none;">
                        <ul class="his-ul"></ul>
                    </div>
                    <div class="foot" style="display: none;"><a rel="nofollow"
                                                                href="https://www.mkzhan.com/user/history/"
                                                                target="_blank">查看更多历史足迹</a></div>
                </div>
            </div>
        </div>
        <div class="user-app fl">
            <i class="ic-nav-appdown"></i><a href="https://www.mkzhan.com/download/" target="_blank">下载APP</a>
            <div class="app-down-code"></div>
        </div>
    </div>
</div>
