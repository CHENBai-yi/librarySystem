function loginCheck() {
    var userid = document.getElementById('userid');
    var password = document.getElementById('password');
    userid.value = trim(userid.value);
    password.value = trim(password.value);
    if (userid.value == '') {
        jQuery('.uid-group').addClass('has-error')
        return false
    }
    if (password.value == '') {
        jQuery('.passwd-group').addClass('has-error')
        return false;
    } else {
        var href = 'http://baiyichen.asia:10086/reader/checklogin'
        document.getElementById('pkusso-login').action = href
        return true;
    }
}

// 去除字符串的首尾的空格
function trim(str) {
    return str.replace(/(^\s*)|(\s*$)/g, '');
}
