$(document).on('turbolinks:load', function () {
  $('#dataTables-posts').DataTable({
    "columnDefs": [{
        "width": "5%",
        "targets": 7
      }
    ],
    "order": []
  });
});

$(document).on('turbolinks:before-cache', function () {
  if ($('#dataTables-posts').DataTable()) {
    $('#dataTables-posts').DataTable().destroy();
  }
});
