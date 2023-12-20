(function (a) {
    a('[data-toggle="tooltip"]').tooltip();
    a(".light-dark-toggle").on("click", function () {
        a(this).toggleClass("active")
    });
    a(".rightbar-link").on("click", function () {
        a(".rightbar").addClass("open")
    });
    a(".close-sidebar").on("click", function () {
        a(".rightbar").removeClass("open")
    });
    a(".chat-body .show-user-detail").on("click", function () {
        a(".main ").toggleClass("open-chat-sidebar")
    });
    a(".close-chat-sidebar").on("click", function () {
        a(".main ").removeClass("open-chat-sidebar")
    });
    a(".chat-body .add-user-btn").on("click", function () {
        a(".main ").toggleClass("open-user-sidebar")
    });
    a(".close-chat-sidebar").on("click", function () {
        a(".main ").removeClass("open-user-sidebar")
    });
    a(".sidebar-toggle-btn").on("click", function () {
        a("body ").toggleClass("open-sidebar-menu")
    });
    a(document).ready(function () {
        a(".choose-skin li").on("click", function () {
            var e = a("#layout");
            var f = a(this);
            var g = a(".choose-skin li.active").data("theme");
            a(".choose-skin li").removeClass("active");
            e.removeClass("theme-" + g);
            f.addClass("active");
            var h = a(".choose-skin li.active").data("theme");
            e.addClass("theme-" + f.data("theme"))
        })
    });
    a(document).ready(function () {
        a(".menu-toggle").on("click", function (i) {
            var h = a(this);
            var f = h.next();
            if (a(h.parents("ul")[0]).hasClass("list")) {
                var g = a(i.target).hasClass("menu-toggle") ? i.target : a(i.target).parents(".menu-toggle");
                a.each(a(".menu-toggle.toggled").not(g).next(), function (e, j) {
                    if (a(j).is(":visible")) {
                        a(j).prev().toggleClass("toggled");
                        a(j).slideUp()
                    }
                })
            }
            h.toggleClass("toggled");
            f.slideToggle(320)
        })
    });
    var d = document.querySelector('.light-dark-toggle input[type="checkbox"]');
    var b = localStorage.getItem("theme");
    if (b) {
        document.documentElement.setAttribute("data-theme", b);
        if (b === "dark") {
            d.checked = true
        }
    }

    function c(f) {
        if (f.target.checked) {
            document.documentElement.setAttribute("data-theme", "dark");
            localStorage.setItem("theme", "dark")
        } else {
            document.documentElement.setAttribute("data-theme", "light");
            localStorage.setItem("theme", "light")
        }
    }

    d.addEventListener("change", c, false)
})(jQuery);