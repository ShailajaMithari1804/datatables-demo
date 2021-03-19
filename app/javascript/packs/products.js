jQuery(document).ready(function() {
  $('#products-datatable').dataTable({
    "processing": true,
    "serverSide": true,
    "ajax": {
      "url": $('#products-datatable').data('source')
    },
    "pagingType": "full_numbers",
    "columns": [
      {"data": "id"},
      {"data": "productName"},
      {"data": "category"},
      {"data": "releaseDate"},
      {"data": "price"}      
    ]
  });
});