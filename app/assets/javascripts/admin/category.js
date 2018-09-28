$(document).on('turbolinks:load', function () {
  $('#dataTables-categories').DataTable({
    "columnDefs": [{
        "width": "9%",
        "targets": 6
      }
    ],
    "order": []
  });
});

$(document).on('turbolinks:before-cache', function () {
  if ($('#dataTables-categories').DataTable()) {
    $('#dataTables-categories').DataTable().destroy();
  }
});
