<!doctype html>
<html lang="en">

<head>
    <title>Image Upload</title>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <!-- Bootstrap CSS v5.2.1 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script type="text/javascript">
            $(document).ready(function(){
                setTimeout(function() {
                    $('#successMessage').fadeOut('fast');
                }, 3000); // <-- time in milliseconds
            });
        </script>
</head>

<body>


    <div class="container mt-3 text-center">
        <div class="row">
            <div class="col-12">
                <h2>File Upload</h2>
            </div>
        </div>
        <div class="row">
            <div class="col-6" style="margin-left: 18%;" >
                @if (session('status'))
                    <div class="alert alert-success " id="successMessage">
                        {{ session('status') }}
                    </div>
                    @endsession
            </div>
            <div class="col-6" style="margin-left: 18%;">
                <form method="POST" enctype="multipart/form-data">
                    @csrf
                    <div class="input-group mt-3">
                        <input type="file" class="form-control" id="inputGroupFile02" name="image"
                            accept="image/*">
                    </div>
                    <div class="input-group mt-3">
                        <button type="submit" class="btn btn-success">Submit</button>
                    </div>
                </form>
            </div>
            <div class="row">
                @foreach ($images as $image)
                    <div class="col-3 mt-5">
                        <div class="card" style="width: 18rem;">
                            <a href="{{ asset('/storage/' . $image->file_path) }}" target="_blank">
                            <img src="{{ asset('/storage/' . $image->file_path) }}" alt=""
                                class="img-fluid img-thumbnail card-img-top">
                            </a>

                            <div class="card-body">
                                <form action="{{ route('upload.destroy', $image->id) }}" method="POST">

                                    @csrf
                                    @method('DELETE')
                                    <button type="submit" class="btn btn-danger mt-3 text-right">Delete</button>
                                    <a href="{{ route('upload.edit', $image->id) }}" class="btn btn-primary mt-3 text-right">Update</a>
                                </form>
                                <form action="{{ route('upload.download', $image->id) }}" method="POST">

                                    @csrf
                                    @method('GET')
                                <button type="submit" class="btn btn-dark mt-3 text-right">Download</button>
                                </form>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </div>s
    <!-- Bootstrap JavaScript Libraries -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
        integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous">
    </script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
        integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous">
    </script>

</body>

</html>
