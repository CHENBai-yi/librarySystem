jQuery.noConflict();
(function ($) {
    $(function () {
        //搜索按钮点击
        $("#custom-front-top-site-search").click(function (e) {
            if ($("#custom-front-top-right-menu ul.top-right-menu-consult-detail").is(':visible')) {
                $("#custom-front-top-right-menu ul.top-right-menu-consult-detail").slideToggle();
                $("#custom-front-top-right-menu ul.top-right-menu-consult-detail").css('display', 'none');
            }
            ;
            $("#block-views-exp-site-search2-page").slideToggle();
            e.stopPropagation();
        });

        //咨询菜单点击展开子菜单
        $("#custom-front-top-right-menu .top-right-menu-consult").click(function (e) {
            if ($("#block-views-exp-site-search2-page").is(':visible')) {
                $("#block-views-exp-site-search2-page").slideToggle();
                $("#block-views-exp-site-search2-page").css('display', 'none');
            }
            ;
            $("#custom-front-top-right-menu ul.top-right-menu-consult-detail").slideToggle();
            e.stopPropagation();
        });

        $('.juicebox-container').css('height', $(window).height());
        //console.log('height:'+ $(document).height());
        //console.log('height1:'+ $(window).height());
        $(window).resize(function () {
            //$( "#log" ).append( "<div>Handler for .resize() called.</div>" );
            $('.juicebox-container').css('height', $(window).height());
        });
        $('.front #block-tb-megamenu-menu-menu2018 li.level-1').hover(function () {
            if ($('#custom-global-top-search-switch').is(":visible") && (getCookie('hideSearchBlock') == 1)) {
                $('#custom-global-top-search-switch').addClass('search-tab-open')
                $(".front #block-quicktabs-search-quicktab").css({"display": 'none'})
            }
        })
    })
})(jQuery);
