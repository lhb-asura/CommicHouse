!function (e) {
    "use strict";
    "function" == typeof define && define.amd ? define(["jquery"], e) : e("object" == typeof exports ? require("jquery") : jQuery)
}(function (e) {
    "use strict";

    function t(e) {
        return "string" == typeof e ? parseInt(e, 10) : ~~e
    }

    var o = {
        wheelSpeed: 1,
        wheelPropagation: !1,
        swipePropagation: !0,
        minScrollbarLength: null,
        maxScrollbarLength: null,
        useBothWheelAxes: !1,
        useKeyboard: !0,
        suppressScrollX: !1,
        suppressScrollY: !1,
        scrollXMarginOffset: 0,
        scrollYMarginOffset: 0,
        includePadding: !1
    }, i = 0, n = function () {
        var e = i++;
        return function (t) {
            var o = ".perfect-scrollbar-" + e;
            return void 0 === t ? o : t + o
        }
    }, a = "WebkitAppearance" in document.documentElement.style;
    e.fn.perfectScrollbar = function (i, r) {
        return this.each(function () {
            function c(e, o) {
                var i = e + o, n = C - R;
                P = 0 > i ? 0 : i > n ? n : i;
                var a = t(P * (T - C) / (C - R));
                _.scrollTop(a)
            }

            function s(e, o) {
                var i = e + o, n = A - B;
                M = 0 > i ? 0 : i > n ? n : i;
                var a = t(M * (I - A) / (A - B));
                _.scrollLeft(a)
            }

            function l(e) {
                return x.minScrollbarLength && (e = Math.max(e, x.minScrollbarLength)), x.maxScrollbarLength && (e = Math.min(e, x.maxScrollbarLength)), e
            }

            function d() {
                var e = {width: D};
                e.left = O ? _.scrollLeft() + A - I : _.scrollLeft(), q ? e.bottom = Y - _.scrollTop() : e.top = H + _.scrollTop(), j.css(e);
                var t = {top: _.scrollTop(), height: z};
                Z ? t.right = O ? I - _.scrollLeft() - Q - G.outerWidth() : Q - _.scrollLeft() : t.left = O ? _.scrollLeft() + 2 * A - I - K - G.outerWidth() : K + _.scrollLeft(), W.css(t), J.css({
                    left: M,
                    width: B - F
                }), G.css({top: P, height: R - V})
            }

            function u() {
                _.removeClass("ps-active-x"), _.removeClass("ps-active-y"), A = x.includePadding ? _.innerWidth() : _.width(), C = x.includePadding ? _.innerHeight() : _.height(), I = _.prop("scrollWidth"), T = _.prop("scrollHeight"), !x.suppressScrollX && I > A + x.scrollXMarginOffset ? (L = !0, D = A - X, B = l(t(D * A / I)), M = t(_.scrollLeft() * (D - B) / (I - A))) : (L = !1, B = 0, M = 0, _.scrollLeft(0)), !x.suppressScrollY && T > C + x.scrollYMarginOffset ? (E = !0, z = C - ee, R = l(t(z * C / T)), P = t(_.scrollTop() * (z - R) / (T - C))) : (E = !1, R = 0, P = 0, _.scrollTop(0)), M >= D - B && (M = D - B), P >= z - R && (P = z - R), d(), L && _.addClass("ps-active-x"), E && _.addClass("ps-active-y")
            }

            function f() {
                var t, o, i = function (e) {
                    s(t, e.pageX - o), u(), e.stopPropagation(), e.preventDefault()
                }, n = function () {
                    _.removeClass("ps-in-scrolling"), e(N).unbind(U("mousemove"), i)
                };
                J.bind(U("mousedown"), function (a) {
                    o = a.pageX, t = J.position().left, _.addClass("ps-in-scrolling"), e(N).bind(U("mousemove"), i), e(N).one(U("mouseup"), n), a.stopPropagation(), a.preventDefault()
                }), t = o = null
            }

            function p() {
                var t, o, i = function (e) {
                    c(t, e.pageY - o), u(), e.stopPropagation(), e.preventDefault()
                }, n = function () {
                    _.removeClass("ps-in-scrolling"), e(N).unbind(U("mousemove"), i)
                };
                G.bind(U("mousedown"), function (a) {
                    o = a.pageY, t = G.position().top, _.addClass("ps-in-scrolling"), e(N).bind(U("mousemove"), i), e(N).one(U("mouseup"), n), a.stopPropagation(), a.preventDefault()
                }), t = o = null
            }

            function h(e, t) {
                var o = _.scrollTop();
                if (0 === e) {
                    if (!E) return !1;
                    if (0 === o && t > 0 || o >= T - C && 0 > t) return !x.wheelPropagation
                }
                var i = _.scrollLeft();
                if (0 === t) {
                    if (!L) return !1;
                    if (0 === i && 0 > e || i >= I - A && e > 0) return !x.wheelPropagation
                }
                return !0
            }

            function m(e, t) {
                var o = _.scrollTop(), i = _.scrollLeft(), n = Math.abs(e), a = Math.abs(t);
                if (a > n) {
                    if (0 > t && o === T - C || t > 0 && 0 === o) return !x.swipePropagation
                } else if (n > a && (0 > e && i === I - A || e > 0 && 0 === i)) return !x.swipePropagation;
                return !0
            }

            function v() {
                function e(e) {
                    var t = e.originalEvent.deltaX, o = -1 * e.originalEvent.deltaY;
                    return (void 0 === t || void 0 === o) && (t = -1 * e.originalEvent.wheelDeltaX / 6, o = e.originalEvent.wheelDeltaY / 6), e.originalEvent.deltaMode && 1 === e.originalEvent.deltaMode && (t *= 10, o *= 10), t !== t && o !== o && (t = 0, o = e.originalEvent.wheelDelta), [t, o]
                }

                function t(t) {
                    if (a || !(_.find("select:focus").length > 0)) {
                        var i = e(t), n = i[0], r = i[1];
                        o = !1, x.useBothWheelAxes ? E && !L ? (r ? _.scrollTop(_.scrollTop() - r * x.wheelSpeed) : _.scrollTop(_.scrollTop() + n * x.wheelSpeed), o = !0) : L && !E && (n ? _.scrollLeft(_.scrollLeft() + n * x.wheelSpeed) : _.scrollLeft(_.scrollLeft() - r * x.wheelSpeed), o = !0) : (_.scrollTop(_.scrollTop() - r * x.wheelSpeed), _.scrollLeft(_.scrollLeft() + n * x.wheelSpeed)), u(), (o = o || h(n, r)) && (t.stopPropagation(), t.preventDefault())
                    }
                }

                var o = !1;
                void 0 !== window.onwheel ? _.bind(U("wheel"), t) : void 0 !== window.onmousewheel && _.bind(U("mousewheel"), t)
            }

            function g() {
                var t = !1;
                _.bind(U("mouseenter"), function () {
                    t = !0
                }), _.bind(U("mouseleave"), function () {
                    t = !1
                });
                var o = !1;
                e(N).bind(U("keydown"), function (i) {
                    if ((!i.isDefaultPrevented || !i.isDefaultPrevented()) && t) {
                        var n = document.activeElement ? document.activeElement : N.activeElement;
                        if (n) {
                            for (; n.shadowRoot;) n = n.shadowRoot.activeElement;
                            if (e(n).is(":input,[contenteditable]")) return
                        }
                        var a = 0, r = 0;
                        switch (i.which) {
                            case 37:
                                a = -30;
                                break;
                            case 38:
                                r = 30;
                                break;
                            case 39:
                                a = 30;
                                break;
                            case 40:
                                r = -30;
                                break;
                            case 33:
                                r = 90;
                                break;
                            case 32:
                            case 34:
                                r = -90;
                                break;
                            case 35:
                                r = i.ctrlKey ? -T : -C;
                                break;
                            case 36:
                                r = i.ctrlKey ? _.scrollTop() : C;
                                break;
                            default:
                                return
                        }
                        _.scrollTop(_.scrollTop() - r), _.scrollLeft(_.scrollLeft() + a), (o = h(a, r)) && i.preventDefault()
                    }
                })
            }

            function b() {
                function e(e) {
                    e.stopPropagation()
                }

                G.bind(U("click"), e), W.bind(U("click"), function (e) {
                    var o = t(R / 2), i = e.pageY - W.offset().top - o, n = C - R, a = i / n;
                    0 > a ? a = 0 : a > 1 && (a = 1), _.scrollTop((T - C) * a)
                }), J.bind(U("click"), e), j.bind(U("click"), function (e) {
                    var o = t(B / 2), i = e.pageX - j.offset().left - o, n = A - B, a = i / n;
                    0 > a ? a = 0 : a > 1 && (a = 1), _.scrollLeft((I - A) * a)
                })
            }

            function y() {
                function t() {
                    var e = window.getSelection ? window.getSelection() : document.getSlection ? document.getSlection() : {rangeCount: 0};
                    return 0 === e.rangeCount ? null : e.getRangeAt(0).commonAncestorContainer
                }

                function o() {
                    n || (n = setInterval(function () {
                        return S() ? (_.scrollTop(_.scrollTop() + a.top), _.scrollLeft(_.scrollLeft() + a.left), void u()) : void clearInterval(n)
                    }, 50))
                }

                function i() {
                    n && (clearInterval(n), n = null), _.removeClass("ps-in-scrolling"), _.removeClass("ps-in-scrolling")
                }

                var n = null, a = {top: 0, left: 0}, r = !1;
                e(N).bind(U("selectionchange"), function () {
                    e.contains(_[0], t()) ? r = !0 : (r = !1, i())
                }), e(window).bind(U("mouseup"), function () {
                    r && (r = !1, i())
                }), e(window).bind(U("mousemove"), function (e) {
                    if (r) {
                        var t = {x: e.pageX, y: e.pageY}, n = _.offset(), c = {
                            left: n.left,
                            right: n.left + _.outerWidth(),
                            top: n.top,
                            bottom: n.top + _.outerHeight()
                        };
                        t.x < c.left + 3 ? (a.left = -5, _.addClass("ps-in-scrolling")) : t.x > c.right - 3 ? (a.left = 5, _.addClass("ps-in-scrolling")) : a.left = 0, t.y < c.top + 3 ? (a.top = 5 > c.top + 3 - t.y ? -5 : -20, _.addClass("ps-in-scrolling")) : t.y > c.bottom - 3 ? (a.top = 5 > t.y - c.bottom + 3 ? 5 : 20, _.addClass("ps-in-scrolling")) : a.top = 0, 0 === a.top && 0 === a.left ? i() : o()
                    }
                })
            }

            function w(t, o) {
                function i(e, t) {
                    _.scrollTop(_.scrollTop() - t), _.scrollLeft(_.scrollLeft() - e), u()
                }

                function n() {
                    g = !0
                }

                function a() {
                    g = !1
                }

                function r(e) {
                    return e.originalEvent.targetTouches ? e.originalEvent.targetTouches[0] : e.originalEvent
                }

                function c(e) {
                    var t = e.originalEvent;
                    return !(!t.targetTouches || 1 !== t.targetTouches.length) || !(!t.pointerType || "mouse" === t.pointerType || t.pointerType === t.MSPOINTER_TYPE_MOUSE)
                }

                function s(e) {
                    if (c(e)) {
                        b = !0;
                        var t = r(e);
                        f.pageX = t.pageX, f.pageY = t.pageY, p = (new Date).getTime(), null !== v && clearInterval(v), e.stopPropagation()
                    }
                }

                function l(e) {
                    if (!g && b && c(e)) {
                        var t = r(e), o = {pageX: t.pageX, pageY: t.pageY}, n = o.pageX - f.pageX,
                            a = o.pageY - f.pageY;
                        i(n, a), f = o;
                        var s = (new Date).getTime(), l = s - p;
                        l > 0 && (h.x = n / l, h.y = a / l, p = s), m(n, a) && (e.stopPropagation(), e.preventDefault())
                    }
                }

                function d() {
                    !g && b && (b = !1, clearInterval(v), v = setInterval(function () {
                        return S() ? .01 > Math.abs(h.x) && .01 > Math.abs(h.y) ? void clearInterval(v) : (i(30 * h.x, 30 * h.y), h.x *= .8, void(h.y *= .8)) : void clearInterval(v)
                    }, 10))
                }

                var f = {}, p = 0, h = {}, v = null, g = !1, b = !1;
                t && (e(window).bind(U("touchstart"), n), e(window).bind(U("touchend"), a), _.bind(U("touchstart"), s), _.bind(U("touchmove"), l), _.bind(U("touchend"), d)), o && (window.PointerEvent ? (e(window).bind(U("pointerdown"), n), e(window).bind(U("pointerup"), a), _.bind(U("pointerdown"), s), _.bind(U("pointermove"), l), _.bind(U("pointerup"), d)) : window.MSPointerEvent && (e(window).bind(U("MSPointerDown"), n), e(window).bind(U("MSPointerUp"), a), _.bind(U("MSPointerDown"), s), _.bind(U("MSPointerMove"), l), _.bind(U("MSPointerUp"), d)))
            }

            function $() {
                _.bind(U("scroll"), function () {
                    u()
                })
            }

            function k() {
                _.unbind(U()), e(window).unbind(U()), e(N).unbind(U()), _.data("perfect-scrollbar", null), _.data("perfect-scrollbar-update", null), _.data("perfect-scrollbar-destroy", null), J.remove(), G.remove(), j.remove(), W.remove(), _ = j = W = J = G = L = E = A = C = I = T = B = M = Y = q = H = R = P = Q = Z = K = O = U = null
            }

            var x = e.extend(!0, {}, o), _ = e(this), S = function () {
                return !!_
            };
            if ("object" == typeof i ? e.extend(!0, x, i) : r = i, "update" === r) return _.data("perfect-scrollbar-update") && _.data("perfect-scrollbar-update")(), _;
            if ("destroy" === r) return _.data("perfect-scrollbar-destroy") && _.data("perfect-scrollbar-destroy")(), _;
            if (_.data("perfect-scrollbar")) return _.data("perfect-scrollbar");
            _.addClass("ps-container");
            var A, C, I, T, L, B, M, D, E, R, P, z, O = "rtl" === _.css("direction"), U = n(),
                N = this.ownerDocument || document, j = e("<div class='ps-scrollbar-x-rail'>").appendTo(_),
                J = e("<div class='ps-scrollbar-x'>").appendTo(j), Y = t(j.css("bottom")), q = Y === Y,
                H = q ? null : t(j.css("top")), F = t(j.css("borderLeftWidth")) + t(j.css("borderRightWidth")),
                X = t(j.css("marginLeft")) + t(j.css("marginRight")),
                W = e("<div class='ps-scrollbar-y-rail'>").appendTo(_),
                G = e("<div class='ps-scrollbar-y'>").appendTo(W), Q = t(W.css("right")), Z = Q === Q,
                K = Z ? null : t(W.css("left")), V = t(W.css("borderTopWidth")) + t(W.css("borderBottomWidth")),
                ee = t(W.css("marginTop")) + t(W.css("marginBottom")),
                te = "ontouchstart" in window || window.DocumentTouch && document instanceof window.DocumentTouch,
                oe = null !== window.navigator.msMaxTouchPoints;
            return function () {
                u(), $(), f(), p(), b(), y(), v(), (te || oe) && w(te, oe), x.useKeyboard && g(), _.data("perfect-scrollbar", _), _.data("perfect-scrollbar-update", u), _.data("perfect-scrollbar-destroy", k)
            }(), _
        })
    }
}), function (e) {
    "function" == typeof define && define.amd ? define(["jquery"], e) : e("object" == typeof exports ? require("jquery") : jQuery)
}(function (e) {
    function t(e) {
        return c.raw ? e : encodeURIComponent(e)
    }

    function o(e) {
        return c.raw ? e : decodeURIComponent(e)
    }

    function i(e) {
        return t(c.json ? JSON.stringify(e) : String(e))
    }

    function n(e) {
        0 === e.indexOf('"') && (e = e.slice(1, -1).replace(/\\"/g, '"').replace(/\\\\/g, "\\"));
        try {
            return e = decodeURIComponent(e.replace(r, " ")), c.json ? JSON.parse(e) : e
        } catch (e) {
        }
    }

    function a(t, o) {
        var i = c.raw ? t : n(t);
        return e.isFunction(o) ? o(i) : i
    }

    var r = /\+/g, c = e.cookie = function (n, r, s) {
        if (void 0 !== r && !e.isFunction(r)) {
            if (s = e.extend({}, c.defaults, s), "number" == typeof s.expires) {
                var l = s.expires, d = s.expires = new Date;
                d.setTime(+d + 864e5 * l)
            }
            return document.cookie = [t(n), "=", i(r), s.expires ? "; expires=" + s.expires.toUTCString() : "", s.path ? "; path=" + s.path : "", s.domain ? "; domain=" + s.domain : "", s.secure ? "; secure" : ""].join("")
        }
        for (var u = n ? void 0 : {}, f = document.cookie ? document.cookie.split("; ") : [], p = 0, h = f.length; p < h; p++) {
            var m = f[p].split("="), v = o(m.shift()), g = m.join("=");
            if (n && n === v) {
                u = a(g, r);
                break
            }
            n || void 0 === (g = a(g)) || (u[v] = g)
        }
        return u
    };
    c.defaults = {}, e.removeCookie = function (t, o) {
        return void 0 !== e.cookie(t) && (e.cookie(t, "", e.extend({}, o, {expires: -1})), !e.cookie(t))
    }
}), function (e, t, o, i) {
    e.fn.extend({
        goTop: function (o) {
            return this.each(function () {
                var i = {time: 200, offset: 500}, n = e.extend(i, o), a = e(this);
                e(t).scroll(function () {
                    e(t).scrollTop() > n.offset ? a.fadeIn(n.time) : a.fadeOut(n.time)
                }), a.click(function () {
                    return e("html").scrollTop() ? (e("html").animate({scrollTop: 0}, 1e3), !1) : (e("body").animate({scrollTop: 0}, 1e3), !1)
                })
            })
        }, myTab: function (t) {
            return this.each(function () {
                var o, i = {operate: "click", auto: !0, time: 2e3, delay: !0, delayTime: 500}, n = e.extend(i, t),
                    a = e(this), r = a.children("ul.menu").children("li"), c = a.children("div.main"),
                    s = c.children("div.tab"), l = function (e) {
                        r.siblings("li").removeClass("on").end().eq(e).addClass("on"), s.siblings().hide().end().eq(e).show()
                    }, d = function (e) {
                        n.delay ? setTimeout(function () {
                            l(e)
                        }, n.delayTime) : l(e)
                    }, u = function () {
                        n.auto && (o = setInterval(f, n.time))
                    }, f = function () {
                        var e = a.find("li.on"), t = r.eq(0), o = r.length, i = e.index() + 1,
                            n = i === o ? t : e.next("li"), c = i === o ? 0 : i;
                        e.removeClass("on"), n.addClass("on"), s.siblings().hide().end().eq(c).show()
                    };
                r.bind(n.operate, function () {
                    var t = r.index(e(this));
                    d(t)
                }), n.auto && (u(), a.hover(function () {
                    clearInterval(o), o = void 0
                }, function () {
                    u()
                }))
            })
        }, goFloor: function (t) {
            return this.each(function () {
                var o = {floor: ".floor"}, i = e.extend(o, t), n = e(this), a = e(i.floor);
                n.find("li").click(function () {
                    var t = e(this).index(), o = a.eq(t).offset().top;
                    return e("html").scrollTop() ? (e("html").animate({scrollTop: o - 50}, 500), !1) : (e("body").animate({scrollTop: o - 50}, 500), !1)
                }), n.find("#bdshare").click(function (e) {
                    e && e.stopPropagation ? e.stopPropagation() : window.event.cancelBubble = !0
                })
            })
        }, underSlide: function (t) {
            return this.each(function () {
                var o = {
                        css: {
                            position: "absolute",
                            width: 12,
                            height: 4,
                            background: "#ff620e",
                            bottom: "0",
                            borderRadius: 2
                        }, on: 0
                    }, i = e.extend(o, t), n = e(this), a = n.find("li"), r = a.width(),
                    c = e('<div class="underline"></div>'), s = (r - i.css.width) / 2;
                _left = r * i.on + s, n.append(c), c.css(e.extend(i.css, {left: _left})), a.on("mouseover", function () {
                    var t = e(this), o = t.index();
                    c.stop().animate({left: r * o + s + "px"}, 150)
                }), n.on("mouseout", function () {
                    c.stop().animate({left: _left}, 200)
                })
            })
        }
    })
}(jQuery, window, document);
var Analysis = function () {
    var e = {url: "/analysis/recom/"}, t = function (e) {
        for (var t = [], o = {}, i = 0; i < e.length; i++) {
            var n = e[i], a = typeof n + n;
            1 !== o[a] && (t.push(n), o[a] = 1)
        }
        return t
    };
    return e.saveRecoms = function () {
        var e = $.cookie("recoms") || "", o = $("body").data("recoms") || e, i = e ? e + "," + o : o + "",
            n = i.split(","), a = t(n), r = a.join(",");
        $.cookie("recoms", r, {path: "/"})
    }, e.getRecoms = function () {
        var e = $("body").data("recoms"), o = $.cookie("recoms") || "", i = o ? o + "," + e : e + "", n = i.split(",");
        return t(n).join(",")
    }, e.removeRecoms = function () {
        $.removeCookie("recoms", {path: "/"})
    }, e.createGUID = function () {
        var e = function () {
            return (65536 * (1 + Math.random()) | 0).toString(16).substring(1)
        };
        return e() + e() + "-" + e() + "-" + e() + "-" + e() + "-" + e() + e() + e()
    }, e.saveGUID = function () {
        var t = e.createGUID();
        $.cookie("_GUID", t, {path: "/"})
    }, e.init = function () {
        $.cookie("_GUID") ? e.saveRecoms() : e.reset()
    }, e.reset = function () {
        e.removeRecoms(), e.saveGUID(), e.saveRecoms()
    }, e.send = function (t) {
        var o = {recom_ids: $.cookie("recoms"), comic_id: 0, uid: $.cookie("_GUID"), type: 1}, i = $.extend({}, o, t);
        setTimeout(function () {
            $.post(e.url, i)
        }, 500)
    }, e
};
window.analysis = Analysis(), analysis.init();
var Mkzlib = function () {
    function e(e) {
        this.logoutLock = !0, this.hasCollect = !1, this.header = $("#header").length ? $("#header") : $(".j-topbar")
    }

    e.prototype = {
        uaDetect: function () {
            var e = {
                userAgent: navigator.userAgent.toLowerCase(),
                isAndroid: Boolean(navigator.userAgent.match(/android/gi)),
                isIphone: Boolean(navigator.userAgent.match(/iphone|ipod/gi))
            };
            if (e.isAndroid || e.isIphone && 1 != $.cookie("visit_pc")) {
                var t = window.location.href, o = window.location.pathname, i = t.replace(/www/, "m");
                this.getComicId() || /register/.test(o) || /login/.test(o) || /topic/.test(o) ? location.href = i : location.href = "http://m.mkzhan.com/"
            }
        }, lazyLoad: function (e) {
            e = e || {};
            var t = e.time || 500;
            setInterval(function () {
                var t = 0;
                $("img[data-src]:visible").each(function () {
                    var o = $(this), i = $(window).scrollTop(), n = $(window).height(), a = o.offset().top,
                        r = parseInt(o.height(), 10), c = e.loading || "",
                        s = e.space || "data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7",
                        l = e.error || "/img/loading.gif";
                    if (c && o.css("background", "url(" + c + ") center center / 32px 32px no-repeat"), a < i + n && a + r > i) {
                        o.attr("src", o.data("src")).removeAttr("data-src").animate({opacity: 1}, 300);
                        var d = $(new Image);
                        d.attr("src", o.data("src")), d.error(function () {
                            if (new RegExp(l).test(o.attr("style"))) return !1;
                            o.attr("src", s).css({
                                opacity: 0,
                                background: "#eee url(" + l + ") no-repeat center center"
                            }).animate({opacity: 1}, 300)
                        }), o.error(function () {
                            if (new RegExp(l).test(o.attr("style"))) return !1;
                            o.attr("src", s).css({
                                opacity: 0,
                                background: "#fff url(" + l + ") no-repeat center center"
                            }).animate({opacity: 1}, 300)
                        })
                    }
                    t++
                })
            }, t)
        }, lazyLoad2: function (e) {
            e = e || {};
            var t = e.time || 500, o = this.isSupportCss3("background-size");
            setInterval(function () {
                var t = 0;
                $("img[data-src]:visible").each(function () {
                    var i = $(this), n = $(window).scrollTop(), a = $(window).height(), r = i.offset().top,
                        c = parseInt(i.height(), 10), s = e.loading || "",
                        l = e.space || "data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7",
                        d = e.error || "/img/loading.gif";
                    if (s && i.css("background", "url(" + s + ") center center / 32px 32px no-repeat"), r < n + a && r + c > n) {
                        if (o) {
                            i.css({
                                opacity: 0,
                                background: "url(" + i.data("src") + ") no-repeat center center",
                                backgroundSize: "cover"
                            }).removeAttr("data-src").animate({opacity: 1}, 300);
                            var u = $(new Image);
                            u.attr("src", i.data("src")), u.error(function () {
                                if (new RegExp(d).test(i.attr("style"))) return !1;
                                i.attr("src", l).css({
                                    opacity: 0,
                                    background: "#eee url(" + d + ") no-repeat center center"
                                }).animate({opacity: 1}, 300)
                            })
                        } else i.attr("src", i.data("src")).removeAttr("data-src");
                        i.error(function () {
                            if (new RegExp(d).test(i.attr("style"))) return !1;
                            i.attr("src", l).css({
                                opacity: 0,
                                background: "#fff url(" + d + ") no-repeat center center"
                            }).animate({opacity: 1}, 300)
                        })
                    }
                    t++
                })
            }, t)
        }, isSupportCss3: function (e) {
            var t = ["webkit", "Moz", "ms", "o"], o = document.documentElement.style, i = [], n = function (e) {
                return e.replace(/-(\w)/g, function (e, t) {
                    return t.toUpperCase()
                })
            };
            for (var a in t) i.push(n(t[a] + "-" + e));
            i.push(n(e));
            for (var a in i) if (i[a] in o) return !0;
            return !1
        }, getTimeStamp: function () {
            return Math.floor((new Date).getTime() / 1e3)
        }, saveUFund: function () {
            var e = this;
            $.post("/member/user_funds", function (t) {
                if (200 === t.code) {
                    e.userFund(t.data);
                    var o = JSON.stringify(t.data);
                    $.cookie("uFund", o, {path: "/"})
                }
            })
        }, userLogout: function () {
            if (this.logoutLock) {
                this.logoutLock = !1;
                var e = window.localStorage.getItem("uread") || "";
                $.post("/comic/history_sync", {data: e}, function (e) {
                    $.post("/user/logout", function (e) {
                        var t = JSON.parse(window.localStorage.getItem("uread")) || [];
                        if (window.localStorage.removeItem("uread"), window.localStorage.removeItem("comic-count"), t.length > 0) for (var o = 0; o < t.length; o++) window.localStorage.removeItem("comic-" + t[o].comic_id);
                        $.removeCookie("read_sync_stamp", {path: "/"}), $.removeCookie("is_reward", {path: "/"}), window.location.reload()
                    })
                })
            }
        }, layerPay: function (e, t, o) {
            var i, n = $.cookie("uInfo"), a = n ? JSON.parse(n) : {};
            i = 1 != a.is_vip ? o : Math.ceil(.8 * o), layer.open({
                type: 1,
                content: $(".pay-chapter-box"),
                title: "购买章节",
                offset: "200px",
                area: ["680px", "auto"],
                success: function (n) {
                    $(".notice .price").html(i), $(".my-yb-left").html($(".yuanbao .txt").html()), i != o && ($(".notice .yuanjia").html("原价：" + o + "元宝"), $(".notice .yuanjia").show()), $("#payThis").click(function () {
                        var o = 0;
                        $("#autoPay").prop("checked") && (o = 1), $.post("/comic/chapter_buy_add", {
                            comic_id: e,
                            chapter_id: t,
                            order_fee: i,
                            is_auto: o
                        }).done(function (t) {
                            200 == t.code ? (analysis.send({type: 6, comic_id: e}), layer.alert("购买成功", function () {
                                window.location.reload()
                            })) : layer.msg(t.message)
                        })
                    }), $("#payMore").click(function () {
                        window.location.href = "/chapters_buy/" + e
                    })
                },
                end: function () {
                    $(".pay-chapter-box").hide()
                }
            })
        }, layerTicket: function () {
            var e = this, t = function () {
                $(".add").off(), $(".reduce").off(), $(".ticket-btn").off(), $(".result").val(1), $("#ticketBox").hide(), $("#ticketBox .u-has").html($(".yuepiao .txt").html())
            };
            t(), layer.open({
                type: 1,
                title: "投月票",
                content: $("#ticketBox"),
                offset: "200px",
                area: ["520px", "250px"],
                success: function () {
                    parseInt($("#ticketBox .u-has").html());
                    $(".add").click(function () {
                        var e = $(this).prev(), t = parseInt(e.val());
                        e.val(++t)
                    }), $(".reduce").click(function () {
                        var e = $(this).prev(), t = parseInt(e.val());
                        e.val(--t)
                    }), $(".ticket-btn").click(function () {
                        var o = parseInt($(".result").val());
                        $.post("/comic/vote_add", {comic_id: e.getComicId(), amount: o}).done(function (t) {
                            if (200 == t.code) {
                                layer.msg(t.message);
                                var i = parseInt($(".yuepiao .txt").html()) - o;
                                $(".yuepiao .txt").html(i), analysis.send({type: 5, comic_id: e.getComicId()})
                            } else 301 === t.code ? e.layerLogin() : layer.msg(t.message)
                        }).fail(function () {
                            layer.msg("打赏失败")
                        }), t(), layer.closeAll()
                    })
                },
                end: t
            })
        }, layerReword: function () {
            var e = this, t = function () {
                $("#modReword").val("500"), $(".reword-btn").off(), $("#rewordBox li").css("borderColor", "#ccc").off(), $("#rewordBox").hide(), $("#rewordBox .u-has").html($(".yuanbao .txt").html())
            };
            t(), $("#modReword").on("input", function () {
                $(this).val() % 1 != 0 && layer.msg("元宝只能为正整数")
            }), layer.open({
                type: 1,
                title: "打赏",
                content: $("#rewordBox"),
                offset: "200px",
                area: ["520px", "320px"],
                success: function () {
                    if ($("#modReword").val() % 1 == 0) {
                        parseInt($("#rewordBox .u-has").html());
                        $(".reword-btn").click(function () {
                            var o = parseInt($("#modReword").val());
                            $.post("/home/comic/play_add", {comic_id: mkz.getComicId(), amount: o}).done(function (t) {
                                if (200 == t.code) {
                                    layer.msg(t.message);
                                    var i = parseInt($(".yuanbao .txt").html()) - o;
                                    $(".yuanbao .txt").html(i)
                                } else 301 === t.code ? e.layerLogin() : layer.msg(t.message)
                            }).fail(function () {
                                layer.msg("打赏失败")
                            }), t(), layer.closeAll()
                        }), $("#rewordBox li").click(function () {
                            var e = $(this);
                            0 == e.index() ? $("#modReword").val(500) : 1 == e.index() ? $("#modReword").val(5e3) : 2 == e.index() && $("#modReword").val(1e4), e.css("borderColor", "#ff620e").siblings().css("borderColor", "#ccc")
                        })
                    } else layer.msg("元宝只能为正整数")
                },
                end: t
            })
        }, layerLogin: function () {
            layer.open({
                type: 1,
                title: !1,
                content: $(".login-box"),
                offset: "200px",
                area: ["420px", "397px"],
                success: function () {
                    var e = $("#toPhoneLogin"), t = $("#toNumLogin");
                    $(this);
                    e.click(function () {
                        $("#numLogin").hide(), $("#phoneLogin").show()
                    }), t.click(function () {
                        $("#numLogin").show(), $("#phoneLogin").hide()
                    }), $("html, body").addClass("key-lock")
                },
                end: function () {
                    $(".login-box").hide(), $("html, body").removeClass("key-lock")
                }
            })
        }, getComicId: function () {
            var e = location.pathname, t = e.split("/"), o = t[1];
            return parseInt(o) || ""
        }, getChapterId: function () {
            var e = location.pathname, t = e.split("/"), o = t[2];
            return parseInt(o) || ""
        }, getHistoryList: function () {
            var e = this;
            $.post("/member/history_list", {page_num: 1, page_size: 50}).done(function (t) {
                if (200 == t.code) {
                    for (var o = t.data.list, i = o.length, n = 0; n < i; n++) {
                        var a = o[n].comic_id, r = JSON.stringify(o[n]), c = o[n].chapter_id, s = o[n].read_time;
                        e.updateUread(a, c, s), window.localStorage.setItem("comic-" + a, r)
                    }
                    window.localStorage.setItem("comic-count", i)
                }
                e.userHistory()
            })
        }, detectCollect: function (e) {
            1 == $.cookie("is_login") && $.post("/comic/collection_check", {comic_id: e}).done(function (e) {
                if (200 == e.code) {
                    1 === e.data.is_collection && $("#collect").addClass("been-collected").find(".txt").text("已收藏")
                }
            })
        }, updateUread: function (e, t, o) {
            var i = {};
            i.comic_id = e, i.chapter_id = t, i.read_time = Math.floor(o);
            for (var n = window.localStorage.getItem("uread"), a = JSON.parse(n) || [], r = 0; r < a.length; r++) if (a[r].comic_id == e) {
                a.splice(r, 1);
                break
            }
            a.push(i), window.localStorage.setItem("uread", JSON.stringify(a))
        }, syncHistory: function () {
            var e = this, t = window.localStorage.getItem("uread"), o = $.cookie("read_sync_stamp") || 0,
                i = parseInt(o), n = this.getTimeStamp(), a = n - i;
            a > 600 && function () {
                1 == $.cookie("is_login") && $.post("/comic/history_sync", {data: t}).done(function (e) {
                    200 == e.code && $.cookie("read_sync_stamp", n, {path: "/"})
                }).always(function () {
                    e.getHistoryList()
                })
            }()
        }, removeCollect: function (e) {
            var t = this;
            $.post("/comic/collection_delete", {comic_id: e}).done(function (e) {
                200 === e.code && (layer.msg(e.message), $("#collect").removeClass("been-collected").find(".txt").text("收藏")), 301 === e.code && t.layerLogin()
            })
        }, addCollect: function (e) {
            var t = this;
            $.post("/comic/collection_add", {comic_id: e}).done(function (e) {
                200 === e.code && (layer.msg(e.message), $("#collect").addClass("been-collected").find(".txt").text("已收藏")), 199 === e.code && layer.msg(e.message), 301 === e.code && t.layerLogin()
            })
        }, saveSearch: function (e) {
            var t = $.cookie("search_history"), o = [], i = $.trim(e);
            if (t) {
                o = JSON.parse(t);
                for (var n = o.length, a = 0; a < n; a++) if (o[a] === i) {
                    o.splice(a, 1);
                    break
                }
            }
            "" != i && o.push(i), o.length > 3 && o.splice(0, 1), $.cookie("search_history", JSON.stringify(o))
        }, clearSearchHistory: function () {
            layer.confirm("主人，确定清除所有搜索历史么？", {title: "提示"}, function (e) {
                $.removeCookie("search_history"), $(".s-history").hide(), $(".s-h-box ul").html(), layer.close(e)
            })
        }, hotSearch: function () {
            $.post("/comic/hot_search").done(function (e) {
                if (200 == e.code) for (var t = e.data, o = "", i = 0; i < t.length; i++) o = i < 3 ? '<li class="search-layout-item"><span class="num num-top">' + (i + 1) + '</span><a class="wrap" href="/' + t[i].comic_id + '/"><img class="cover" src="' + t[i].cover + '!width-200" alt="" /><div class="detail"><p class="comic-name"><span>' + t[i].title + '</span></p><p class="intro">' + t[i].feature + '</p><p class="author">作者：' + t[i].author_title + '</p><span class="read">开始阅读</span></div></a><p class="comic-name">' + t[i].title + "</p></li>" : '<li class="search-layout-item"><span class="num">' + (i + 1) + '</span><a class="wrap" href="/' + t[i].comic_id + '/"><img class="cover" src="' + t[i].cover + '!width-200" alt="" /><div class="detail"><p class="comic-name"><span>' + t[i].title + '</span></p><p class="intro">' + t[i].feature + '</p><p class="author">作者：' + t[i].author_title + '</p><span class="read">开始阅读</span></div></a><p class="comic-name">' + t[i].title + "</p></li>", $(".s-hot ul").append($(o))
            }).always(function () {
                var e = $(".search-layout-item");
                e.eq(0).addClass("item-hover"), e.on("mouseover", function () {
                    $(this).addClass("item-hover").siblings().removeClass("item-hover").find("wrap").show()
                })
            })
        }, isChinese: function (e) {
            return new RegExp("[\\u4E00-\\u9FFF]+", "g").test(e)
        }, searchBox: function () {
            var e = this;
            e.hotSearch();
            var t = this.header, o = t.find(".search-input"), i = t.find(".search-layout"), n = t.find(".search-btn"),
                a = t.find(".clear-his"), r = function (t) {
                    var n = new RegExp(t, "ig");
                    $.post("/comic/search_like_list", {keyword: t}).done(function (e) {
                        var o = e.data, a = "";
                        if (0 != o.length) {
                            for (var r = 0; r < o.length; r++) a += '<li class="search-layout-item" data-keyword="' + t + '"><a class="wrap" href="/' + o[r].comic_id + '/"><img class="cover" src="' + o[r].cover + '!width-100" alt="" /><div class="detail"><p class="comic-name"><span href="/' + o[r].comic_id + '/">' + o[r].title.replace(n, function (e) {
                                return '<span style="color:red">' + e + "</span>"
                            }) + '</span></p><p class="intro">' + o[r].feature + '</p><p class="author">作者：' + o[r].author_title.replace(n, function (e) {
                                return '<span style="color:red">' + e + "</span>"
                            }) + '</p><span class="read" href="/' + o[r].comic_id + '/">开始阅读</span></div></a><p class="comic-name">' + o[r].title.replace(n, function (e) {
                                return '<span style="color:red">' + e + "</span>"
                            }) + "</p></li>";
                            $(".is-find .input-s-ul").html(a), i.show()
                        } else $(".is-find .input-s-ul").empty(), i.hide();
                        $(".is-find").fadeIn().siblings().hide()
                    }).always(function () {
                        var t = $(".search-layout-item");
                        t.eq(0).addClass("item-hover"), t.on("mouseover", function () {
                            $(this).addClass("item-hover").siblings().removeClass("item-hover").find("wrap").show(), e.saveSearch(o.val())
                        }), t.on("click", function () {
                            var t = $(this).data("keyword");
                            e.keywordCount(t)
                        })
                    })
                };
            o.on("focus", function () {
                var e = $(this).val();
                if (e) r(e); else {
                    var t = $.cookie("search_history") || "[]", o = JSON.parse(t), n = o.length, a = "";
                    if (n > 0) {
                        for (var c = n - 1; c >= 0; c--) a += '<li class="comic-name"><a href="/search?keyword=' + o[c] + '">' + o[c] + "</a></li>";
                        $(".s-h-box ul").html(a)
                    } else $(".layout-his-tit").hide();
                    i.show()
                }
            }).on("blur", function () {
                i.fadeOut()
            }), n.click(function () {
                var t = o.val() || o.data("holder");
                o.val(""), e.saveSearch(t), location.href = "/search?keyword=" + t
            }), o.keydown(function (e) {
                var e = e || window.event;
                13 === e.which && (e.preventDefault(), n.click())
            }), o.on("input", function () {
                var e = $(this).val();
                e ? r(e) : $(".is-find").hide().siblings().show()
            }), a.click(this.clearSearchHistory)
        }, keywordCount: function (e) {
            return $.post("/comic/keyword_count/", {keyword: e})
        }, userHeader: function () {
            var e = this.header.find(".user-head");
            $(".logged").show(), $(".nolog").hide(), e.hover(function () {
                $(".head-box").show()
            }, function () {
                $(".head-box").hide()
            })
        }, userInfo: function (e) {
            "" != e.avatar ? $(".head>img").attr("src", e.avatar + "!width-100") : $(".head>img").attr("src", "/Static/home/img/pic_default_headimg_100.png"), 0 == e.is_vip ? ($(".head-box .vip-tag").remove(), $(".head-box .get-vip").html("开通VIP")) : ($(".head-box .vip-tag").show(), $(".head-box .get-vip").html("续费VIP")), $(".head-box .user-name").html(e.nickname), e.unread_message_count > 0 && $("#unread_mark").show()
        }, userFund: function (e) {
            $(".yuanbao .txt").html(e.gold), $(".yuepiao .txt").html(e.ticket), $(".my-fund .txt").html(e.gold)
        }, updateUInfoByLocal: function (e, t) {
            var o = $.cookie("uInfo") || "";
            if (o) {
                var i = JSON.parse(o);
                i[e] = t
            }
            $.cookie("uInfo", JSON.stringify(i))
        }, userCollect: function (e) {
            var t = e.list, o = t.length, i = "";
            0 == o && ($(".coll-box .user-list-box").hide(), $(".coll-box .foot").hide()), o > 0 && ($(".coll-box .user-list-box").show(), $(".coll-box .no-con").hide());
            for (var n = 0; n < o; n++) i += '<li class="user-item clearfix"><a href="/' + t[n].comic_id + '/" target="_blank"><img src="' + t[n].cover + '!width-100" alt="" class="cover fl"></a>', 0 === t[n].is_update ? i += '<a href="/' + t[n].comic_id + '/" target="_blank" class="comic-name">' + t[n].title + "</a>" : i += '<a href="/' + t[n].comic_id + '/" target="_blank" class="comic-name">' + t[n].title + '<i class="icon-new"></i></a>', t[n].read_chapter_id ? i += '<a href="/' + t[n].comic_id + "/" + t[n].read_chapter_id + '.html" target="_blank" class="read-at">阅至 <span>' + t[n].read_chapter_title + '</span></a><a href="/' + t[n].comic_id + "/" + t[n].chapter_id + '.html" target="_blank" class="update-at">更至 <span>' + t[n].chapter_title + '</span></a><a href="/' + t[n].comic_id + "/" + t[n].read_chapter_id + '.html" target="_blank" class="continue">续看></a></li>' : i += '<span>您未阅读过该漫画,<a href="/' + t[n].comic_id + "/" + t[n].read_chapter_id + '.html" target="_blank" class="read-at">查看详情</a></span><a href="/' + t[n].comic_id + "/" + t[n].chapter_id + '.html" target="_blank" class="update-at">更至<span>' + t[n].chapter_title + '</span></a><a href="/' + t[n].comic_id + '/" target="_blank" class="continue">续看></a></li>';
            $(".coll-box .coll-ul").html(i)
        }, getUserCollect: function () {
            var e = this;
            return $.post("/member/collection_list", {page_num: 1, page_size: 20}).done(function (t) {
                if (200 === t.code) {
                    var o = t.data;
                    e.userCollect(o)
                } else $(".coll-box .user-list-box").hide(), $(".coll-box .foot").hide()
            }).always(function () {
                e.hasCollect = !0
            })
        }, bindUserCollect: function () {
            var e = this;
            mkz.header.find(".user-collect").hover(function () {
                e.hasCollect ? ($(".coll-box").stop(!0, !0).slideDown(), $(".coll-box .user-list-box").perfectScrollbar()) : e.getUserCollect().then(function () {
                    $(".coll-box").stop(!0, !0).slideDown(), $(".coll-box .user-list-box").perfectScrollbar()
                })
            }, function () {
                $(".coll-box").hide()
            })
        }, userHistory: function () {
            $(".his-box .his-ul").empty();
            var e = JSON.parse(window.localStorage.getItem("uread")) || [];
            if (e.length > 0) {
                $(".his-box .no-con").hide(), $(".his-box .user-list-box").show(), $(".his-box .foot").show();
                for (var t, o, i = "", n = 0; n < e.length; n++) t = e[n].comic_id, o = JSON.parse(window.localStorage.getItem("comic-" + t)), o ? (i += '<li class="user-item clearfix"><a href="/' + o.comic_id + '/" target="_blank"><img src="' + o.comic_cover + '!width-100" alt="" class="cover fl"></a>', 0 === o.is_update ? i += '<a href="/' + o.comic_id + '/" target="_blank" class="comic-name">' + o.comic_title + "</a>" : i += '<a href="/' + o.comic_id + '/" target="_blank" class="comic-name">' + o.comic_title + '<i class="icon-new"></i></a>', i += '<a href="/' + o.comic_id + "/" + o.latest_chapter_id + '.html" target="_blank" class="read-at">更至 <span>' + o.latest_chapter_title + '</span></a><a href="/' + o.comic_id + "/" + o.chapter_id + '.html" target="_blank" class="update-at">阅至 <span>' + o.chapter_title + '</span></a><a href="/' + o.comic_id + "/" + o.chapter_id + '.html" target="_blank" class="continue">续看></a></li>') : $.removeCookie("read_sync_stamp");
                $(".his-box .his-ul").html(i)
            } else $(".his-box .foot").hide(), $(".his-box .user-list-box").hide(), $(".his-box .no-con").show();
            $(".user-history").hover(function () {
                $(".his-box").stop(!0, !0).slideDown(), $(".his-box .user-list-box").perfectScrollbar()
            }, function () {
                $(".his-box").hide()
            })
        }
    };
    var t;
    return {
        name: "Mkzlib", getInstance: function (o) {
            return void 0 === t && (t = new e(o)), t
        }
    }
}();
$(function () {
    function e(e) {
        var e = parseInt(1e3 * e);
        return new Date(e).Format("yyyy-MM-dd hh:mm")
    }

    function t(t, o, i) {
        var n = $.cookie("feed_ids") || "[]", a = JSON.parse(n).join();
        $.post("/member/feedback_list", {ids: a, page_num: t, page_size: o}).done(function (t) {
            if (200 == t.code) {
                if (t.data.length > 0) {
                    for (var o = "", n = 0; n < t.data.length; n++) t.data[n].reply_content ? o += '<div class="freeback-list">                <div class="your-freeback">                  <div class="freeback-text">您的反馈：' + t.data[n].content + '</div>                  <div class="freeback-time">' + e(t.data[n].create_time) + '</div>                </div>                <div class="editer-freeback">                  <div class="freeback-text">                    <font color="#FF620E">编辑回复：</font>' + t.data[n].reply_content + '</div>                  <div class="freeback-time">' + e(t.data[n].update_time) + "</div>                </div>              </div>" : o += '<div class="freeback-list">                <div class="your-freeback">                  <div class="freeback-text">您的反馈：' + t.data[n].content + '</div>                  <div class="freeback-time">' + e(t.data[n].create_time) + '</div>                </div>                <div class="editer-freeback">                  <div class="no-reply">未回复</div>                </div>              </div>';
                    i ? $(".freeback-list-box").html(o) : $(".freeback-list-box").append(o)
                }
            } else layer.msg(t.message)
        })
    }

    1 === $("#header").length ? (window.mkz = Mkzlib.getInstance(), mkz.searchBox()) : window.mkz = Mkzlib.getInstance(), mkz.lazyLoad(), mkz.syncHistory(), mkz.uaDetect(), mkz.userHistory(), mkz.bindUserCollect(), $.post("/member/user_info").done(function (e) {
        if (200 === e.code) {
            var t = e.data;
            $.cookie("uid", t.uid), $.cookie("uInfo", JSON.stringify(t), {path: "/"}), mkz.userInfo(t), mkz.userFund(t), mkz.userHeader()
        }
    }), Date.prototype.Format = function (e) {
        var t = {
            "M+": this.getMonth() + 1,
            "d+": this.getDate(),
            "h+": this.getHours(),
            "m+": this.getMinutes(),
            "s+": this.getSeconds(),
            "q+": Math.floor((this.getMonth() + 3) / 3),
            S: this.getMilliseconds()
        };
        /(y+)/.test(e) && (e = e.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length)));
        for (var o in t) new RegExp("(" + o + ")").test(e) && (e = e.replace(RegExp.$1, 1 == RegExp.$1.length ? t[o] : ("00" + t[o]).substr(("" + t[o]).length)));
        return e
    }, $(".feedback").on("click", function () {
        layer.open({
            type: 1, title: !1, content: $("#freebackBox"), area: ["750px", "420px"], success: function () {
                $("html, body").addClass("key-lock")
            }, end: function () {
                $("#freebackBox").hide(), $("#freebackBox .title-nav a").eq(0).addClass("on").siblings().removeClass("on"), $("#freebackBox .freeback-list-box").hide(), $("#freebackBox .input-box").show(), $("#freebackBox textarea").val(""), $("#freebackBox input").val("@qq.com")
            }
        })
    }), $("#freebackBox .title-nav .itm").on("click", function () {
        var e = $(this).index();
        $(this).addClass("on").siblings().removeClass("on"), e ? ($("#freebackBox .input-box").hide(), t(1, 10, !0), $("#freebackBox .freeback-list-box").show()) : ($("#freebackBox .freeback-list-box").hide(), $("#freebackBox .input-box").show())
    }), $("#freebackBox .title-choose dt").on("click", function () {
        $(this).addClass("selected-dt").siblings().removeClass("selected-dt")
    });
    var o = function (e) {
        var t = $.cookie("feed_ids") || "[]", o = JSON.parse(t);
        o.push(e), $.cookie("feed_ids", JSON.stringify(o), {path: "/", expires: 7})
    };
    $("#freebackBox #submit-feedback").on("click", function () {
        var e = $("#freebackBox .selected-dt").attr("data-id"), t = $("#freebackBox textarea").val(),
            i = $("#freebackBox input").val(), n = $("body").data("page_id"), a = mkz.getComicId(),
            r = mkz.getChapterId(), c = $(".p-read").length > 0 ? $(".comic-i").html() : "";
        if (t) if (t.length >= 4 && t.length <= 200) {
            var s = "";
            if (i) {
                var l = /^[a-z|A-Z|0-9]+([\.|\-|_][a-z|A-Z|0-9]+)*@[a-z|A-Z|0-9]+([\.|\-][a-z|A-Z|0-9]+)*(\.[a-z|A-Z]+)+$/i;
                if (!l.test(i)) return layer.msg("邮箱格式不正确"), !1;
                s = i
            }
            $.post("/member/feedback_add", {
                content: t,
                type: e,
                contact: s,
                from: n,
                from_detail: {comic_id: a, chapter_id: r, page_num: c}
            }, function (e) {
                var t = e.data.id;
                layer.msg(e.message), 200 == e.code && (o(t), layer.closeAll())
            })
        } else layer.msg("反馈内容必须在4-200个字符之间"); else layer.msg("反馈的内容不能为空")
    }), $("#logout, .logout").click(function () {
        mkz.userLogout()
    })
});