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
</head>

<body>
    <div class="container mt-3 text-center">
        <div class="row">
            <div class="col-12">
                <h2>File Update</h2>
            </div>
        </div>
        <div class="row">
            <div class="col-6" style="margin-left: 18%;">
                <form method="POST" enctype="multipart/form-data" action="{{ route('upload.update', $image->id) }}">
                    @csrf
                    @method('PUT')
                    <div class="input-group mt-3">
                        <input type="file" onchange="document.querySelector('#latestImage').src=window.URL.createObjectURL(this.files[0])" class="form-control" value="{{ $image->file_path }}" name="image"
                            accept="image/*" >
                    </div>
                    <div class="input-group mt-3">
                        <button type="submit" value="update" class="btn btn-success">Submit</button>
                    </div>
                </form>
            </div>
            <div class="row">
                {{-- @foreach ($images as $image) --}}
                    <div class="col-3 mt-5">
                        <div class="card" style="width: 18rem;margin-left: 150%;">
                            <img id="latestImage" src="{{ asset('/storage/' . $image->file_path) }}" alt=""
                                class="img-fluid img-thumbnail card-img-top">
                        </div>
                    </div>
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
