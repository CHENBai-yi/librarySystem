jQuery.noConflict();  //将变量$的控制权让渡给prototype.js

/*
function mycalendar_go(dir) {
  (function ($) {
      var prefix = Drupal.settings.pathPrefix;
      if (!prefix) prefix = '';
       alert('success:' + Drupal.settings.basePath + prefix);

		$.ajax({
		    url: Drupal.settings.basePath + prefix + "ajaxcalendar",
			success:function(data,textStatus,jqXHR){
				//var node_o2os = data.nodes || [];
				//ShowTypesModal(node_o2os,name);
				alert('cusscess callback');
				console.log(data);

				$(".block-calendar").replaceWith(data);
				//ShowListModal(node_o2os);
				//console.log(node_o2os);
				//console.log(textStatus)
				//console.log(jqXHR)
			}
		});

  })(jQuery);
}
*/

(function ($) {
    $(function () {
        var current_day = $("#calendar-day-date").html();
        $(".calendar-content a.calendar-day").filter('[data-day="' + current_day + '"]').addClass('active');
        $(document).on("click", '.calendar-nav .pager li a', function (e) {  //jquery 1.8以上
            //	$('#block1').live("click", function(e) {  jquery 1.7以上
            //$(".calendar-nav .date-prev a").click(function(e){
            //$(".calendar-nav .date-prev a").live("click", function(e){

            //$(".calendar-nav .pager li a").live("click", function(e){

            e.preventDefault();
            //alert($(this).text());
            //alert('success:' + Drupal.settings.basePath);
            var prefix = Drupal.settings.pathPrefix;
            if (!prefix) prefix = '';
            //alert('success:' + Drupal.settings.basePath + prefix);
            var month = $(this).attr('data-month');
            //alert('successmonth:' + month);
            $.ajax({
                url: Drupal.settings.basePath + prefix + "ajaxcalendar/" + month,
                success: function (data, textStatus, jqXHR) {
                    //var node_o2os = data.nodes || [];
                    //ShowTypesModal(node_o2os,name);
                    //alert('cusscess callback');
                    //console.log(data);

                    $(".block-calendar").replaceWith(data);
                    current_day = $("#calendar-day-date").html();
                    $(".calendar-content a.calendar-day").filter('[data-day="' + current_day + '"]').addClass('active');
                    //ShowListModal(node_o2os);
                    //console.log(node_o2os);
                    //console.log(textStatus)
                    //console.log(jqXHR)
                }
            });

            return false;

        });
        $(document).on("click", '.calendar-content a.calendar-day', function (e) {

            //$(".calendar-content a.calendar-day").live("click", function(e){

            e.preventDefault();

            var prefix = Drupal.settings.pathPrefix;
            if (!prefix) prefix = '';
            //alert('success:' + Drupal.settings.basePath + prefix);
            var day = $(this).attr('data-day');
            //alert('successmonth:' + month);
            //var old_a = $(".calendar-content a.calendar-day.acive");
            var new_a = $(this);
            $.ajax({
                url: Drupal.settings.basePath + prefix + "ajaxcalendarday/" + day,
                success: function (data, textStatus, jqXHR) {
                    //console.log(data); removeClass
                    $(".calendar-wrapper .calendar-right .mycalendar-right-wrapper").replaceWith(data);
                    $(".calendar-content a.calendar-day.active").removeClass('active');
                    new_a.addClass('active');

                }
            });
            //$(this).addClass('active');
            return false;

        });

    });
})(jQuery);
