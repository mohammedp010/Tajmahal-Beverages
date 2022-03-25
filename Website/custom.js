$(document).ready(function () {
    $('.chatBotIcon').click(function (event) {
        $('.chatBox').toggleClass('active');
    });
    $('.conv-form-wrapper').convform({ selectInputStyle: 'disable' });
})