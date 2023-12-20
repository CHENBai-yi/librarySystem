//公用对象——一些不高兴的狗 by HOPPIN&HAZZ ~ZQ
var __zqChat = {
    user: null,//当前登录人，取该值为null表示没有获取到或者没登陆
    isDebugger: true,//是否调试模式
    isCookie: true,//是否支持cookie
    isMobile: false,//是否是移动端
    isPdfView: true,//是否支持PDF预览
    isOnLine: true,//是否在线/脱机
    isWebSocket: true,//是否支持webSocket
    isStorage: true,//是否支持Storage
    isIndexedDB: true,//是否支持indexedDB
    isWifi: true,//使用的是否是流量还是wifi
    isWeixin: false,
    //通过json文件配置的页面，json文件的路径

    //全局方法
    /**
     * 调试模式，当配置项的isDebugger为true时将开启调试模式
     * @param sMessage 内部返回调试信息
     * @param bError 调试级别是否是错误
     * @private
     */
    _debug: function (sMessage, bError) {
        if (!this.isDebugger) return;
        if (bError) {
            console.error(sMessage);
            return;
        }
        console.log(sMessage);
    },
    /**
     * 是否是undefined
     * @param {Object} obj
     */
    isUndefined: function (obj) {
        if (typeof (obj) == "undefined") {
            return true;
        } else {
            return false;
        }
    },
    /**
     * 是否是null
     * @param {Object} obj
     */
    isNull: function (obj) {
        if (!obj && typeof (obj) != "undefined" && obj != 0) {
            return true;
        } else {
            return false;
        }
    },
    /**
     * 该方法将返回元素类型
     * @param {Object} obj
     */
    elementType: function (obj) {
        return Object.prototype.toString.call(obj).replace(/^\[object (.+)\]$/, '$1').toLowerCase();
    },
    /**
     * 原生ajax简单封装，get请求==$.get(url,callback)
     * @param url
     * @param callback
     */
    getResource: function (url, callback) {
        let time = 1;
        let xhr = new XMLHttpRequest();
        xhr.open("GET", url);
        xhr.send();
        xhr.onload = xhr.onreadystatechange = function () {
            if (this.status == 200) {
                if (xhr.readyState == 4 && time) {
                    time--;
                    callback(eval("(" + this.response + ")"));
                }
            } else {
                throw new Error("加载资源失败");
            }
        }
    },
    /**
     * 加载图片,并创建图片对象到dom内，请求不到的图片资源使用404图片替换之
     * @param url
     * @param dom
     * @param errorUrl
     */
    loadImageAddDom: function (url, dom, errorUrl) {
        let me = this;
        let image = new Image();
        image.src = url;
        image.onload = function () {
            //在这里用this指向的是image对象
            if (!me.isUndefined(dom)) {
                $(dom).append(this);
            }
        };
        image.onerror = function (e) {
            image.src = errorUrl || me.ipConfig.errorImagePath;
            if (!me.isUndefined(dom)) {
                $(dom).append(image);
            }
        };
    },
    /**
     * 加载图片，请求不到的图片资源使用404图片替换之
     * 会动态创建img标签，创建img标签不会跨域
     * 第一次获取图片会签名并缓存，之后直接获取缓存图片的blob对象转URL对象
     * 获取图片会跨域，需要服务端支持跨域
     * @param url img的路径
     * @param className img的class
     * @param alt img的alt 用于seo
     * @param errorUrl 当img没有获取到时，使用一张其他url或者404的图片替换
     * @param style 自定义样式
     * @returns {string} 会马上返回装配完成的img的html，稍后会自动装配
     */
    loadImage: function (url, className, alt, errorUrl, style) {
        let me = this;
        let id = me.uuid(32, 62);
        let encodeUrl = window.btoa(url);
        localforage.getItem(encodeUrl, function (err, value_) {
            if (value_ != null) {
                url = window.URL.createObjectURL(value_);
            } else {
                let xhr = new XMLHttpRequest();
                let blob;
                xhr.open('GET', url, true);
                xhr.responseType = 'blob';
                xhr.onload = function () {
                    let data = xhr.response;
                    blob = new Blob([data]);
                    localforage.setItem(encodeUrl, blob);
                };
                xhr.send();
            }
        });
        let image = new Image();
        image.src = url;
        // if(url==undefined||url){
        //     image.src = errorUrl;
        // }
        $(image).addClass("image-" + id).addClass(className).attr("alt", alt);
        if (style) {
            for (let cssKey in style) {
                $(image).css(cssKey, style[cssKey]);
            }
        }
        image.onload = function () {
        };
        image.onerror = function (e) {
            $(".image-" + id).attr("src", errorUrl || me.ipConfig.errorImagePath);
        };
        return image.outerHTML;
    },
    /**
     * 定时器,当达到一定条件可以在callback关闭定时器
     * @param {Object} callback 这个回调函数会有一个id，通过clearInterval(id)关闭定时器
     * @param {Object} time
     */
    zinterval: function (callback, time) {
        let id = setInterval(() => callback(id), time);
    },
    /**
     * html模板装配，匹配[]
     * @param {Object} html
     * @param {Object} data
     */
    loadTemplete(html, data) {
        let reg = new RegExp("\\[([^\\[\\]]*?)\\]", 'igm');
        let source = html.replace(reg, function (node, key) {
            console.log("node:" + node + ",key:" + key)
            return data[key];
        });
        $("body").append(source);
    },
    /**
     * 控制方法执行顺序,使之同步执行
     * @param {Object} n
     * 该方法返回promise对象，也可以链式追加then
     */
    timeout: function (n = 0) {
        return new Promise(function (resolve) {
            setTimeout(resolve, n);
        });
    },
    /**
     * js方法代理增强
     * @param originFun 要代理的方法
     * @param before 在方法执行前执行的方法
     * @param after 在方法执行后执行的方法
     * @returns {_class}
     */
    constructorJS: function (originFun, before, after) {
        function _class() {
            before.apply(this, arguments);
            originFun.apply(this, arguments);
            after.apply(this, arguments);
        }

        return _class;
    },
    /**
     * 生成uuid
     * @param len
     * @param radix
     * @returns {string}
     */
    uuid: function (len, radix) {
        let chars = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz'.split('');
        let uuid = [], i;
        radix = radix || chars.length;
        if (len) {
            for (i = 0; i < len; i++) uuid[i] = chars[0 | Math.random() * radix];
        } else {
            let r;
            uuid[8] = uuid[13] = uuid[18] = uuid[23] = '-';
            uuid[14] = '4';
            for (i = 0; i < 36; i++) {
                if (!uuid[i]) {
                    r = 0 | Math.random() * 16;
                    uuid[i] = chars[(i == 19) ? (r & 0x3) | 0x8 : r];
                }
            }
        }
        return uuid.join('');
    },

    /**
     * 解析url
     * @param variable
     * @returns {string|null}
     */
    getWebURLKey: function (variable) {
        let query = window.location.search.substring(1);
        let vars = query.split("&");
        for (let i = 0; i < vars.length; i++) {
            let pair = vars[i].split("=");
            if (pair[0] == variable) {
                return this.reomveJing(pair[1]);
            }
        }
        return null;
    },
    /**
     * 去掉#
     * @param str
     */
    reomveJing: function (str) {
        return str.lastIndexOf("#") == str.length - 1 ? str.substring(0, str.length - 1) : str;
    },
    /**
     * 设置只允许单播放源，一个媒体标签播放则暂停其他媒体标签播放
     */
    soundControl: function () {
        let audios = document.getElementsByTagName("audio");

        // 暂停函数
        function pauseAll() {
            let self = this;
            [].forEach.call(audios, function (i) {
                // 将audios中其他的audio全部暂停
                i !== self && i.pause();
            })
        }

        // 给play事件绑定暂停函数
        [].forEach.call(audios, function (i) {
            i.addEventListener("play", pauseAll.bind(i));
        });
    },
    /**
     * 补零
     * @param {Object} num
     */
    addZero: function (num) {
        if (parseInt(num) < 10) {
            num = '0' + num;
        }
        return num;
    },

    /**
     * 时间戳转日期
     * @param {Object} str
     */
    getRealDate: function (str) {
        let oDate = new Date(str);
        if (str === undefined) {
            oDate = new Date();
        }
        let oYear = oDate.getFullYear(),
            oMonth = oDate.getMonth() + 1,
            oDay = oDate.getDate(),
            oHour = oDate.getHours(),
            oMin = oDate.getMinutes(),
            oSen = oDate.getSeconds(),
            oTime = oYear + '-' + this.addZero(oMonth) + '-' + this.addZero(oDay) + ' ' + this.addZero(oHour) + ':' +
                this.addZero(oMin) + ':' + this.addZero(oSen);
        return oTime;
    },
    /**
     * 开启遮罩 $dom为空开启全局遮罩
     * @param $dom 开启指定遮罩
     */
    startLoading: function ($dom) {
        if ($dom && $dom.length) {
            $dom.fadeIn();
        } else {
            $(".preloader").fadeIn();
        }
    },
    /**
     * 关闭遮罩
     * @param d 延迟/ms关闭
     * @param f 渐隐时间/ms
     */
    stopLoading: function (d = 2000, f = 1000) {
        $(".zq_preloader").delay(d).fadeOut(f);
        $(".preloader").delay(d).fadeOut(f);
    },
    /**
     * 获取文件大小
     * @param size
     * @returns {string}
     */
    fileSizeFormat: function (size) {
        if (size) {
            let units = 'B';
            if (size / 1024 > 1) {
                size = size / 1024;
                units = 'KB';
            }
            if (size / 1024 > 1) {
                size = size / 1024;
                units = 'MB';
            }
            if (size / 1024 > 1) {
                size = size / 1024;
                units = 'GB';
            }
            return size.toFixed(1) + units;
        } else {
            return "未知的文件大小";
        }
    },
    /**
     * 时间差
     * @param str
     * @returns {string}
     */
    getDateCha: function (str) {
        let strSeparator = "-"; //日期分隔符
        let strDateArrayStart = str.split(strSeparator);
        let strDateArrayEnd = __zqChat.getRealDate(new Date()).split(strSeparator);
        let strDateS = new Date(strDateArrayStart[0] + "/" + strDateArrayStart[1] + "/" + strDateArrayStart[2]);
        let strDateE = new Date(strDateArrayEnd[0] + "/" + strDateArrayEnd[1] + "/" + strDateArrayEnd[2]);
        let intDay = (strDateE - strDateS) / (1000 * 3600 * 24);
        return intDay.toFixed(2);
    },
    /**
     * jsonp封装 = $.getJson(url,callback)
     * @param url
     * @param params
     * @param callback
     * @returns {Promise<unknown>}
     */
    jsonp: function ({url, params, callback}) {
        return new Promise((resolve, reject) => {
            // 创建一个临时的 script 标签用于发起请求
            const script = document.createElement('script');
            // 将回调函数临时绑定到 window 对象，回调函数执行完成后，移除 script 标签
            window[callback] = data => {
                resolve(data);
                document.body.removeChild(script);
            };
            // 构造 GET 请求参数，key=value&callback=callback
            const formatParams = {...params, callback};
            const requestParams = Object.keys(formatParams)
                .reduce((acc, cur) => {
                    return acc.concat([`${cur}=${formatParams[cur]}`]);
                }, [])
                .join('&');
            // 构造 GET 请求的 url 地址
            const src = `${url}?${requestParams}`;
            script.setAttribute('src', src);
            document.body.appendChild(script);
        });
    },
    /**
     * 获取cookie，返回”“表示没有
     * @param cname
     * @returns {string}
     */
    getCookie: function (cname) {
        let name = cname + "=";
        let ca = document.cookie.split(';');
        for (let i = 0; i < ca.length; i++) {
            let c = ca[i].trim();
            if (c.indexOf(name) == 0) return c.substring(name.length, c.length);
        }
        return "";
    }
}

//该js是核心脚本，各个页面公用的js
$(function () {
    "use strict";
    //为window对象原型添加方法用以打印日志
    $.extend(window, {
        _zqLog: console.log.bind(console),
        _zqError: console.error.bind(console),
        _zqDir: console.dir.bind(console),
    });
    //拓展Array原型链,用以判断一个元素是否在集合内
    Array.prototype.contains = function (arr) {
        //this指向真正调用这个方法的对象
        for (let i = 0; i < this.length; i++) {
            if (this[i] == arr) {
                return true;
            }
        }
        return false;
    }
    //删除数组元素
    Array.prototype.remove = function (dx) {
        if (isNaN(dx) || dx > this.length) {
            return false;
        }
        for (let i = 0, n = 0; i < this.length; i++) {
            if (this[i] != this[dx]) {
                this[n++] = this[i]
            }
        }
        this.length -= 1
    }

    //为JQuery拓展append方法，当dom元素填充完毕触发回调
    $.fn.append2 = function (html, callback) {
        let originalHtmlLength = $("body").html().length;
        this.append(html);
        let nums = 1;
        let timer1 = setInterval(function () {
            nums++;
            let clearIntervalfun = function () {
                clearInterval(timer1)
                callback();
            }
            let flag = originalHtmlLength != $("body").html().length || nums > 1000;
            flag && clearIntervalfun()
        }, 1)
    };
    $.fn.after2 = function (html, callback) {
        let originalHtmlLength = $("body").html().length;
        this.after(html);
        let nums = 1;
        let timer1 = setInterval(function () {
            nums++;
            let clearIntervalfun = function () {
                clearInterval(timer1)
                callback();
            }
            let flag = originalHtmlLength != $("body").html().length || nums > 1000;
            flag && clearIntervalfun()
        }, 1)
    };
    //为JQuery拓展prepend方法，当dom元素填充完毕触发回调
    $.fn.prepend2 = function (html, callback) {
        let originalHtmlLength = $("body").html().length;
        this.prepend(html);
        let nums = 1;
        let timer1 = setInterval(function () {
            nums++;
            let clearIntervalfun = function () {
                clearInterval(timer1)
                callback();
            }
            let flag = originalHtmlLength != $("body").html().length || nums > 1000;
            flag && clearIntervalfun()
        }, 1)
    };

    _zqLog("\n %c hoppinzq开源 %c https://gitee.com/hoppin \n\n", "background: #35495e; padding: 1px; border-radius: 3px 0 0 3px; color: #fff", "background: #fadfa3; padding: 1px; border-radius: 0 3px 3px 0; color: #fff");

    if (/Android|webOS|iPhone|iPod|BlackBerry/i.test(navigator.userAgent)) {
        //是否是移动端
        __zqChat.isMobile = true;
        var ua = navigator.userAgent.toLowerCase();
        if (ua.match(/MicroMessenger/i) == "micromessenger") {
            __zqChat.isWeixin = true;
        }
    } else {
        __zqChat.isMobile = false;
    }
    //是否支持cookie
    if (navigator.cookieEnabled) {
        __zqChat.isCookie = true;
    } else {
        __zqChat.isCookie = false;
    }
    //是否联网/脱机
    if (navigator.onLine) {
        __zqChat.isOnLine = true;
    } else {
        __zqChat.isOnLine = false;
    }
    //是否支持pdf在线预览
    if (navigator.pdfViewerEnabled) {
        __zqChat.isPdfView = true;
    } else {
        __zqChat.isPdfView = false;
    }

    //是否支持WebSocket
    if ('WebSocket' in window) {
        __zqChat.isWebSocket = true;
    } else {
        __zqChat.isWebSocket = false;
    }
    //是否支持storage存储或者是否开启了隐私模式之类的
    if (typeof (Storage) !== "undefined") {
        __zqChat.isStorage = true;
    } else {
        __zqChat.isStorage = false;
    }
    //是否支持indexedDB存储
    if (!window.indexedDB) {
        __zqChat.isIndexedDB = true;
    } else {
        __zqChat.isIndexedDB = true;
    }

    //判断当前使用的是否是4G流量
    var connection = navigator.connection || navigator.mozConnection || navigator.webkitConnection || {
        tyep: 'unknown'
    };
    if (connection.effectiveType === '3G' || connection.effectiveType === '4G') {
        __zqChat.isWifi = false;
    } else {
        __zqChat.isWifi = true;
    }


    //缓存
    $(".clear-cache").off("click").on("click", function () {
        localStorage.clear();
        sessionStorage.clear();
        alert("已清空！刷新页面生效")
    })

    //开启调试模式
    $(".openDebugger").off("click").on("click", function () {
        alert("已开启，请注意屏幕上的悬浮按钮，点击进入调试页面。在调试模式下，将允许js打印开发时内部日志。此功能是专门为移动端而设计。")
        eruda.init();
        __zqChat.isDebugger = true;
        $(this).off("click");
    });

    //禁用cookie（仅在当前页禁用，禁用是不可能禁用的，超喜欢用的）
    $(".not-allow-cookie").click(function () {
        __zqChat.isCookie = false;
        alert("已禁用，但是你可能并不知道我是否真的自觉的禁用了:)，毕竟你们对cookie是完全无感知的。")
    });
});