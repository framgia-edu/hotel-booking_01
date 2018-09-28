$(document).ready(function () {
  $('#demo').html($('#myRange').val());
});
$(document).on('input', '#myRange', function () {
  $('#demo').html($(this).val());
});
