var masterGuy = {
    categoryBarScroll: function () {
        var t = !1;
        return function (e, o, n, r) {
            var a = $(".nav"), s = !1;
            t || (t = !0, e && $(window).on("scroll", function () {
                $("body").scrollTop() >= e || document.documentElement.scrollTop >= e ? s || (s = !0, a.addClass("retract").animate({top: 0}, 200), n && n()) : (0 != $("body").scrollTop() && $("body").scrollTop() <= o || 0 != document.documentElement.scrollTop && document.documentElement.scrollTop <= o || 0 == $("body").scrollTop() && 0 == document.documentElement.scrollTop) && s && (s = !1, a.stop().removeAttr("style").removeClass("retract"), r && r())
            }))
        }
    }(), categoryWidth: function () {
        for (var t = $(".nav-main>ul"), e = 0; e < t.length; e++) t.eq(e).find(".nav-sub").last().addClass("nav-lastSub")
    }, setData: function (t, e) {
        var o = $('<img class="none" src="" />'), n = setTimeout(function () {
            r = !1, e()
        }, 500), r = !0;
        o.on("load", function () {
            clearTimeout(n), r && e()
        }).on("error", function () {
            clearTimeout(n), r && e()
        }).attr("src", t), $("body").append(o)
    }, randomStr: function (t) {
        t = t || 36;
        for (var e = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789", o = "", n = 0; t > n; n++) o += e.charAt(Math.floor(Math.random() * e.length));
        return o
    }, assemblyParam: function (t) {
        var e = "https://trace.biyao.com/by.gif", o = e + "?", n = function () {
                return $.cookie("uuid") || masterGuy.randomStr(36)
            }, r = function () {
                return $.cookie("uid") || ""
            }, a = function () {
                return "3-" + (new Date).getTime() + "-" + cipher(s.uu).substring(0, 16)
            }, s = {pf: "pc", uu: n(), u: r(), av: "", d: "", osv: "", dw: window.screen.width, dh: window.screen.height},
            i = {lt: "pc-ub", lv: "1.0", ubid: a(), pclk: "", pclkp: "", pn: "", pnp: ""}, c = "";
        for (var l in s) s.hasOwnProperty(l) && (o += l + "=" + encodeURIComponent(s[l]) + "&");
        for (var u = 0; u < t.length; u++) {
            for (var d in t[u]) t[u].hasOwnProperty(d) && (i[d] = t[u][d]);
            for (var p in i) i.hasOwnProperty(p) && (c += p + "=" + encodeURIComponent(i[p]) + "&");
            c = c.slice(0, -1), c += "||"
        }
        return c = c.slice(0, -2), o += "body=" + encodeURIComponent(c)
    }, getHotWord: function () {
        var t, e = $(".nav-search"), o = this;
        $.ajax({
            url: window.ControllerSite + "/classify/hotWord",
            data: "",
            dataType: "jsonp",
            jsonp: "callback",
            success: function (n) {
                if (n.success) {
                    for (var r = 0; r < n.data.hotwords.length && 10 > r; r++) t = $("<li>" + (n.data.hotwords[r].length <= 10 ? n.data.hotwords[r] : n.data.hotwords[r].slice(0, 10) + "...") + "</li>"), t.click(function (t, n) {
                        return function () {
                            var r = {
                                pclk: "search_req.hotword",
                                pclkp: "pos=" + encodeURIComponent(n) + "&w=" + encodeURIComponent(t),
                                pn: "search_show",
                                pnp: "q=" + encodeURIComponent(t)
                            };
                            e.find("input").val(t), o.search(null, r)
                        }
                    }(n.data.hotwords[r], r)).appendTo(e.find("ul"));
                    e.find("input").attr("placeholder", n.data.defaultWord).on("focus", function () {
                        e.find("ul").show()
                    }).on("blur", function () {
                        setTimeout(function () {
                            e.find("ul").hide()
                        }, 200)
                    })
                }
            }
        })
    }, search: function (t, e) {
        var o, n = $.trim($("#searchInput").val()), r = [];
        n && (r.push({
            pclk: "home.search",
            pclkp: "",
            pn: "search_req",
            pnp: ""
        }), e && r.push(e), o = masterGuy.assemblyParam(r), masterGuy.setData(o, function () {
            window.location.href = window.ControllerSite + "/classify/search.html?query=" + encodeURIComponent(encodeURIComponent(n))
        }))
    }, backBar: function () {
        $(window).on("scroll", function () {
            $("body").scrollTop() > 0 || document.documentElement.scrollTop > 0 ? $(".rightBar-top").fadeIn() : $(".rightBar-top").fadeOut()
        }), $(".rightBar-top").on("click", function () {
            $("body, html").animate({scrollTop: 0}, 500)
        })
    }, rightBarPhone: function (t) {
        $(".rightBar-phone").show().click(function () {
            LT.alertSmall(t, null, {title: "客服电话"})
        })
    }, rightBarServe: function (t) {
        $(".rightBar-serve").show().find("a").attr("href", t)
    }, shareHandle: function (t) {
        $(".rightBar-share").on("click", function () {
            $(".shareCon").show()
        }).show(), $(".shareCon b").click(function () {
            $(".shareCon").fadeOut()
        });
        var e = "顶级制造商，奢侈品质，成本价格，赶快去购买吧 >>", o = "快将必要分享给小伙伴吧", n = window.location.href,
            r = "http://static.biyao.com/pc/common/img/logo.png";
        $(".share-code").attr("src", window.ControllerSite + "/RequestAPI/getQRCode?url=" + encodeURIComponent(t)), $(".share-qq a").attr("href", "http://sns.qzone.qq.com/cgi-bin/qzshare/cgi_qzshare_onekey?url=" + encodeURIComponent(n) + "&title=" + encodeURIComponent(e) + "&site=&pics=" + r), $(".share-sina a").attr("href", "http://v.t.sina.com.cn/share/share.php?title=" + encodeURIComponent(o) + "&url=" + encodeURIComponent(n) + "&source=bookmark&pic=" + r + "&searchPic=false"), $(".share-facebook a").attr("href", "http://www.facebook.com/sharer.php?u=" + encodeURIComponent(n) + "&amp;t=" + encodeURIComponent(e)), $(".share-twitter a").attr("href", "http://twitter.com/intent/tweet?url=" + encodeURIComponent(n) + "&amp;text=" + encodeURIComponent(e))
    }, rightBarPos: function (t) {
        $(".rightBar").css("margin-left", t + "px")
    }, jumpRedirect: function (t, e) {
        e ? window.open(window.ControllerSite + "/account/login.html?returnUrl=" + encodeURIComponent(t)) : window.location.href = window.ControllerSite + "/account/login.html?returnUrl=" + encodeURIComponent(t)
    }, jumpLogin: function () {
        window.location.href = window.ControllerSite + "/account/login.html?returnUrl=" + encodeURIComponent(window.location.href)
    }, jumpRegister: function () {
        window.location.href = window.ControllerSite + "/account/regist.html?returnUrl=" + encodeURIComponent(window.location.href)
    }, jumpSupCenter: function () {
        $.ajax({
            type: "post",
            url: window.ControllerSite + "/SupplierCenter/GetSkipto",
            async: !1,
            data: {},
            dataType: "json",
            success: function (t) {
                window.location.href = t.success ? "http://shop.biyao.com" : "http://www.biyao.com/minisite/sjzx"
            },
            error: function () {
                window.location.href = "http://www.biyao.com/minisite/sjzx"
            }
        })
    }, getLoginData: function () {
        $.ajax({
            url: window.ControllerSite + "/home/getDataForHomePage",
            dataType: "jsonp",
            jsonp: "callback",
            data: "",
            success: function (t) {
                1 == t.success ? ($(".user-out").hide(), $("#userName").html(t.data.nickname + "<span></span>"), $(".user-center").css("display", "inline-block")) : $(".user-out").css("display", "inline-block")
            }
        })
    }, getShopCarData: function () {
        $.ajax({
            dataType: "jsonp",
            type: "post",
            jsonp: "jsonpcallback",
            data: "",
            url: window.ControllerSite + "/RequestAPI/getCartNum",
            contentType: "application/x-www-form-urlencoded;charset=utf-8",
            success: function (t) {
                if (1 == t.success) {
                    var e = t.data.num;
                    $("#shopCar").html(e || 0), $("#subShopCar").html(e || 0)
                }
            }
        })
    }, diffDate: function (t) {
        var e = new Date, t = new Date(t), o = "", n = e.getTime() - t;
        if (864e5 > n) o = t.format("yyyy-MM-dd") !== e.format("yyyy-MM-dd") ? "1天前" : t.format("hh:mm"); else {
            var r = parseInt(n / 864e5);
            o = 1 == r ? "1天前" : parseInt(n / 864e5) + "天前"
        }
        return o
    }, msgCenter: function () {
        window.hasMsgCenterFun = !0;
        var t = this;
        $.ajax({
            dataType: "jsonp",
            type: "post",
            jsonp: "jsonpcallback",
            data: "",
            url: window.ControllerSite + "/RequestAPI/getMsgCenter",
            contentType: "application/x-www-form-urlencoded;charset=utf-8",
            success: function (e) {
                if (1 == e.success) {
                    var o = e.data.messageList, n = "";
                    $("#unread").text(e.data.total), +e.data.total > 0 ? $("#hasMsg").css("visibility", "visible") : $("#hasMsg").css("visibility", "hidden");
                    for (var r = 0; r < o.length; r++) {
                        var a = o[r], s = "msg-num-99";
                        a.messageCount >= 100 && (s = "msg-num-100", a.messageCount = "99+");
                        var i = t.diffDate(+a.sendTime), c = "<a target='_blank' href='" + o[r].live800Url + "'>",
                            l = '<div class="msg-li msg-li-border" data-groupId="' + a.groupId + '" data-count="' + a.messageCount + '">' + c + '<div class="msg-imgbox" style="background-image: url(' + a.logoUrl + ');"><i class="' + s + '">' + a.messageCount + '</i></div><div class="msg-content"><p class="msg-supplier-name">' + a.supplierName + '<span class="msg-time">' + i + '</span></p><p class="msg-txt">' + a.messageContent + "</p></div></a></div>";
                        n += l
                    }
                    $("#msg-scroll").html(n)
                }
            }
        }), $(".user-msg").on("mouseenter", function () {
            +$("#unread").text() > 0 && ($(".msg-center-box").show(), LT.scroll({
                oViweContainer: $("#msg-ul"),
                oPanelContainer: $("#msg-scroll"),
                oScrollContainer: $("#scrollOut"),
                oScrollBtn: $("#scrollIn"),
                height: 320,
                direction: "y"
            }))
        }), $(".user-msg").on("mouseleave", function () {
            $(".msg-center-box").hide()
        });
        var e = !0;
        $(document).on("click", ".msg-li", function () {
            if (e) {
                e = !1;
                var t = $(this).attr("data-groupId"), o = $(this).attr("data-count"), n = parseInt($("#unread").text());
                $(".msg-center-box").hide(), $(this).remove(), n - o > 0 ? $("#hasMsg").css("visibility", "visible") : $("#hasMsg").css("visibility", "hidden"), $("#unread").text(0 > n - o ? 0 : n - o), $("#msg-scroll").css("top", 0), $("#scrollIn").css("top", 0), $.ajax({
                    dataType: "jsonp",
                    type: "post",
                    jsonp: "jsonpcallback",
                    data: {groupId: t},
                    url: window.ControllerSite + "/RequestAPI/setNotify",
                    contentType: "application/x-www-form-urlencoded;charset=utf-8",
                    success: function (t) {
                        1 == t.success && ($(this).remove(), $("#unread").text(n - o), $("#msg-scroll").css("top", 0), $("#scrollIn").css("top", 0), e = !0)
                    }
                })
            }
        })
    }, init: function () {
        var t = this;
        this.categoryWidth(), this.backBar(), $(".rightBar").show(), this.categoryBarScroll(130, 65), !window.MsgCenter && this.msgCenter(), /(account)/.test(location.pathname) || masterGuy.getHotWord(), $("#supCenter,#supEnter").click(t.jumpSupCenter), $("#loginBtn,#subLoginBtn").click(t.jumpLogin), $("#registBtn,#subRegistBtn").click(t.jumpRegister), $("#searchBtn").click(t.search), $("#searchInput").on("keydown", function (e) {
            13 == e.keyCode && t.search()
        }), $.cookie("uid") ? this.getLoginData() : $(".user-out").css("display", "inline-block"), ($.cookie("uid") || $.cookie("DZVISIT")) && this.getShopCarData(), $.cookie("uid") ? $.ajax({
            url: "/service/getClassifyList",
            method: "GET",
            data: {uid: $.cookie("uid")},
            success: function (t) {
                1 === t.success && 0 !== t.data.length && ($(".user-server").css({display: "inline-block"}), $(".vertical-line-hook b").css({display: "inline-block"}))
            }
        }) : ($(".user-server").css({display: "inline-block"}), $(".vertical-line-hook b").css({display: "inline-block"}), $("#customer_server").on("click", function (e) {
            e.preventDefault(), e.stopPropagation();
            var o = $(this).attr("href");
            return t.jumpRedirect(o, !0), !1
        })), $(document).on("click", "a.login-hook", function (e) {
            var o = $(this).attr("href");
            return $.cookie("uid") ? !0 : (-1 == o.indexOf("javascript:void(0);") && t.jumpRedirect(o, !0), e.preventDefault(), e.stopPropagation(), !1)
        })
    }
};
$(function () {
    masterGuy.init()
});