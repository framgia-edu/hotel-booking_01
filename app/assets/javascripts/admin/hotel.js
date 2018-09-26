$(document).ready(function () {
  $('#dataTables-hotel').DataTable({
    "columnDefs": [{
        "width": "10%",
        "targets": 2
      },
      {
        "width": "20%",
        "targets": 3
      },
      {
        "width": "10%",
        "targets": 4
      },
      {
        "width": "12%",
        "targets": 6
      }
    ]
  });
});
