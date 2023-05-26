document.addEventListener('DOMContentLoaded', a);
window.addEventListener('load', () => setTimeout(b, 1000));

function a() {
    var loadingModal = new bootstrap.Modal(document.getElementById('loadingModal'), {
        backdrop: 'static',
        keyboard: false
    });
    loadingModal.show();
}

function b() {

    var loadingModal = document.getElementById('loadingModal');
    var backdrop = document.querySelector('.modal-backdrop');
    loadingModal.parentNode.removeChild(backdrop);
    loadingModal.parentNode.removeChild(loadingModal);
}