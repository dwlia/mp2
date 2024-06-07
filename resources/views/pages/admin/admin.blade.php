@extends('layouts.content')
@section('title')
  Admin Dashboard
@endsection

@section('content')

<div class="container-dashboard p-5 py-5 ">
    <div class="row">
        <div class="col-8 col-md-4 text-start ms-5">
           <h3 class="fw-bold"><i class="lni lni-grid-alt"></i>
            Dashboard
             </h3> 
        </div>
        <div class="col-12 col-md-4  ms-auto">
            <form class="d-flex ms-auto" role="search">
                <input class="form-control me-2"  type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success" style="width: 3em;" type="submit">
                  <i class="bi bi-search"></i>
                </button>
              </form>
        </div>
    </div>
    <hr>
    <main>
      <div class="container-fluid px-4">
          <h1 class="mt-4"></h1>
          <ol class="breadcrumb mb-4">
              <li class="breadcrumb-item active"></li>
          </ol>
          <div class="row">
              <div class="col-xl-3 col-md-6">
                  <div class="card bg-primary text-white mb-4"  style="width:80%;">
                      <div class="card-body">Jumlah Mahasiswa</div>
                      <div class="card-footer d-flex align-items-center justify-content-between">
                          <a class="small text-white stretched-link" href="#">View Details</a>
                          <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                      </div>
                  </div>
              </div>
              <div class="col-xl-3 col-md-6">
                  <div class="card bg-warning text-white mb-4" style="width:80%;">
                      <div class="card-body">Jumlah Dosen</div>
                      <div class="card-footer d-flex align-items-center justify-content-between">
                          <a class="small text-white stretched-link" href="#">View Details</a>
                          <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                      </div>
                  </div>
              </div>
              <div class="col-xl-3 col-md-6">
                  <div class="card bg-success text-white mb-4" style="width:80%;">
                      <div class="card-body">Success Card</div>
                      <div class="card-footer d-flex align-items-center justify-content-between">
                          <a class="small text-white stretched-link" href="#">View Details</a>
                          <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                      </div>
                  </div>
              </div>
              <div class="col-xl-3 col-md-6">
                  <div class="card bg-danger text-white mb-4" style="width:80%;">
                      <div class="card-body">Danger Card</div>
                      <div class="card-footer d-flex align-items-center justify-content-between">
                          <a class="small text-white stretched-link" href="#">View Details</a>
                          <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                      </div>
                  </div>
              </div>
          </div>
          </div>
          </div>
      </div>
  </main>
    
</div>

 
  @endsection

  