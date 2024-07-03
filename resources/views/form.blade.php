<!doctype html>
<html lang="en">

<head>
    <title>Form</title>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <!-- Bootstrap CSS v5.2.1 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
    <style>
        .form_demo {
            margin-top: 15%;
            padding: 20px;
            /* background-color: #f8f9fa; */
            /* border: 1px solid #dee2e6; */
            border-radius: 5px;
            opacity: 1;
        }
        @media (min-width: 768px) {
            .form_demo {
                margin-left: auto;
                margin-right: auto;
                width: 30%;
            }
        }
        body {
            background-color: #d1d1d1;
        }
    </style>
</head>

<body>
    <div class="container form_demo">
        <form method="POST" action="{{ route('form.handle') }}">
            @csrf
            <div class="mb-3 ">
                <label for="exampleInputEmail1" class="form-label">Email address</label>
                <input type="email" class="form-control @error('email') is-invalid @enderror" id="exampleInputEmail1"
                    aria-describedby="emailHelp" name="email" value="{{ old('email') }}">
                @error('email')
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                @enderror
            </div>
            <div class="mb-3">
                <label for="exampleInputPassword1" class="form-label">Password</label>
                <input type="password" class="form-control @error('password') is-invalid @enderror" id="exampleInputPassword1" name="password" value="{{ old('password') }}">
                @error('password')
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                @enderror
            </div>
            <div class="mb-3 ">
                <label for="exampleInputEmail1" class="form-label">Name</label>
                <input type="text" class="form-control @error('name') is-invalid @enderror" id="name" aria-describedby="emailHelp" name="name" value="{{ old('name') }}">
                @error('name')
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                @enderror
            </div>
            <div class="mb-3 ">
                <label for="exampleInputEmail12" class="form-label">Role</label>
                <input type="text" class="form-control @error('role') is-invalid @enderror" id="exampleInputEmail12" aria-describedby="emailHelp"
                    name="role" value="{{ old('role') }}">
                    @error('role')
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                @enderror
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>
    <!-- Bootstrap JavaScript Libraries -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
        integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous">
    </script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
        integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous">
    </script>
</body>

</html>
