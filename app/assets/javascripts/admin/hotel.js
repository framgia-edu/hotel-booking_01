$(document).on('turbolinks:load', function () {
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
    ],
    "order": []
  });

  $(".upload-image").on("change", function () {
    var preview = document.querySelector('#preview');
    var files = document.querySelector('input[type=file]').files;
    preview.innerHTML = "";

    function readAndPreview(file) {

      if (/\.(jpe?g|png|gif)$/i.test(file.name)) {
        var reader = new FileReader();

        reader.addEventListener("load", function () {
          var image = new Image();
          image.height = 100;
          image.width = 100;
          image.title = file.name;
          image.src = this.result;
          preview.appendChild(image);
        }, false);

        reader.readAsDataURL(file);
      }
    }

    if (files) {
      [].forEach.call(files, readAndPreview);
    }
  });

  $('.field:not(:first)').remove();
});

$(document).on('turbolinks:before-cache', function () {
  if ($('#dataTables-hotel').DataTable()) {
    $('#dataTables-hotel').DataTable().destroy();
  }
});
