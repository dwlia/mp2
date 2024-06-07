@extends('layouts.content')

@section('content')
<div class="container-dashboard py-5 p-5">
  <div class="row">
    <div class="col-8 col-md-4 text-start ms-5">
      <h3 class="fw-bold"><i class="bi bi-people-fill"></i> Pencatatan Perwalian</h3>
    </div>
  </div>

  @if(session('success'))
    <div class="alert alert-success">
      {{ session('success') }}
    </div>
  @endif

  <hr>

  <!-- Formulir Catatan Perwalian -->
  <div class="row">
    <div class="card w-100 bg-body">
      <h5 class="fw-bold ms-1">Catatan Perwalian</h5>
      <div class="card-body">
        <form action="{{ route('mhs.catatan') }}" method="POST">
            @csrf
            <div class="mb-3">
                <textarea class="form-control" id="editor" name="catatan"></textarea>
            </div>
            <button type="submit" class="btn btn-primary">Simpan</button>
        </form>
      </div>
    </div>
  </div>
</div>

<script src="https://cdn.ckeditor.com/ckeditor5/41.3.1/classic/ckeditor.js"></script>
<script>
    ClassicEditor
            .create( document.querySelector( '#editor' ) )
            .then( editor => {
                    console.log( editor );
            } )
            .catch( error => {
                    console.error( error );
            } );
</script>
@endsection
