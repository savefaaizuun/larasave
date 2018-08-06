<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Fixed Top Navbar Example for Bootstrap</title>

    <!-- Bootstrap core CSS -->
    <link href="assets/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="assets/bootstrap/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="assets/bootstrap/css/navbar-fixed-top.css" rel="stylesheet">

    <!-- <link type="text/css" href="http://cdn.datatables.net/1.10.4/css/jquery.dataTables.min.css" rel="stylesheet" /> -->

    <link href="assets/dataTables/dataTables.bootstrap.min.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="assets/bootstrap/js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

    <!-- Fixed navbar -->
    <nav class="navbar navbar-default navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">Project name</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="#">Home</a></li>
            <li><a href="#about">About</a></li>
            <li><a href="#contact">Contact</a></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="#">Action</a></li>
                <li><a href="#">Another action</a></li>
                <li><a href="#">Something else here</a></li>
                <li role="separator" class="divider"></li>
                <li class="dropdown-header">Nav header</li>
                <li><a href="#">Separated link</a></li>
                <li><a href="#">One more separated link</a></li>
              </ul>
            </li>
          </ul>
          <ul class="nav navbar-nav navbar-right">
            <li><a href="../navbar/">Default</a></li>
            <li><a href="../navbar-static-top/">Static top</a></li>
            <li class="active"><a href="./">Fixed top <span class="sr-only">(current)</span></a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>

    <div class="container">

      <!-- Main component for a primary marketing message or call to action -->
      <div class="row">
        <div class="col-md-12">
          <div class="panel panel-default">
            <div class="panel-heading">
              <h4>Contact List
                <a onclick="addForm()" class="btn btn-primary pull-right" style="margin-top:-8px;">Add Contact</a>
              </h4>
            </div>
            <div class="panel-body">
              <table id="contact-table" class="table table-striped">
                <thead>
                  <tr>
                    <th width="30">No</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Action</th>
                  </tr>
                </thead>
                <tbody></tbody>
              </table>
            </div>
          </div>
        </div>
      </div>

    </div>

    @include('form')
      

    </div> <!-- /container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="{{ asset('assets/js/jquery-2.1.1.js')}}"></script>
    <script src="{{ asset('assets/bootstrap/js/bootstrap.min.js')}} "></script>
    <!-- Datatables -->
    <script src="{{ asset('assets/dataTables/jquery.dataTables.min.js')}} "></script>
    <script src="{{ asset('assets/dataTables/dataTables.bootstrap.min.js')}} "></script>
    <!-- validator -->
    <!-- <script src="{{ asset('assets/js/validator.min.js')}}"></script> -->
    <script src="{{ asset('assets/js/validator.min.js')}}"></script>
    
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="{{ asset('assets/js/ie10-viewport-bug-workaround.js')}}"></script>

    <script type="text/javascript">
    var table = $('#contact-table').DataTable({
                  processing: true,
                  serverSide: true,
                  ajax: "{{ route('api.contact')}}",
                  columns: [
                    {data: 'id', name:'id'},
                    {data: 'name', name:'name'},
                    {data: 'email', name:'email'},
                    {data: 'action', name:'action', orderable:false, searchable: false}
                  ]
                });

    function addForm(){
      save_method = "add";
      $('input[name=_method]').val('POST');
      $('#modal-form').modal('show');
      $('#modal-form form')[0].reset();
      $('.modal-title').text('Add Contact');
    }

    function editForm(id){
      save_method = 'edit';
      console.log(save_method);
      console.log(id);
      $('input[name=_method]').val('PATCH');
      $('#modal-form form')[0].reset();
      $.ajax({
        url: "{{ url('contact') }}" + '/' + id + "/edit",
        type:"GET",
        dataType:"JSON",
        success: function(data){
         $('#modal-form').modal('show');
         $('.modal-title').text('Edit Contact');

         $('#id').val(data.id);
         $('#name').val(data.name);
         $('#email').val(data.email); 
        },
        error : function() {
          alert("Data tidak di temukan");
        }
      });
    }

    $(function(){
      $('#modal-form form').validator().on('submit', function (e) {
        console.log('masuk');
        if (!e.isDefaultPrevented()) {
          var id = $('#id').val();
          if (save_method == 'add') url = "{{ url('contact') }}";
          else url = "{{ url('contact') . '/'}}" + id;

          $.ajax({
            url : url,
            type : "POST",
            data : $('#modal-form form').serialize(),
            success : function(data){
              console.log('sukses');
              $('#modal-form').modal('hide');
              table.ajax.reload();
            },
            error : function(){
             alert('Oops! Something error'); 
            }
          });
          return false;
        } 
      });
    });

    </script>
  </body>
</html>
