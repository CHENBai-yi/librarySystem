document.addEventListener('DOMContentLoaded', function () {
    var loadingModal = new bootstrap.Modal(document.getElementById('loadingModal'), {
        backdrop: 'static',
        keyboard: false
    });
    loadingModal.show();
});
window.addEventListener('load', function () {
    var loadingModal = document.getElementById('loadingModal');
    var backdrop = document.querySelector('.modal-backdrop');
    loadingModal.parentNode.removeChild(backdrop);
    loadingModal.parentNode.removeChild(loadingModal);

});