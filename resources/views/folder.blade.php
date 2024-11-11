<div class="row">
    <div class="col-sm-12">
        <div class="card">
            <div class="card-header d-flex justify-content-between">
                <div class="header-title">
                    <h4 class="card-title">Folder</h4>
                    <br>
                    <button type="button" class="btn btn-outline-primary kirim-surat" data-bs-toggle="modal" data-bs-target="#folderModal">
                        Buat Folder Baru
                    </button>

                </div>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table id="datatable" class="table table-striped" data-toggle="data-table">
                        <thead>
                            <tr>
                                <th>Nama Folder</th>
                                <th>Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($folder as $sm)
                            <tr>
                                <td>{{ $sm->nama_folder }}</td>
                                <td>
                                    <a href="{{ route('lihat_folder', $sm->id_folder) }}">
                                        <button type="button" class="btn btn-outline-primary kirim-surat">Lihat Folder</button>
                                    </a>
                                    <button type="button" class="btn btn-outline-secondary atur-akses" data-bs-toggle="modal" data-bs-target="#accessModal" data-folder-id="{{ $sm->id_folder }}">
                                        Atur Akses
                                    </button>
                                </td>
                            </tr>
                            @endforeach
                        </tbody>
                        <tfoot>
                            <tr>
                                <th>Nama Folder</th>
                                <th>Aksi</th>
                            </tr>
                        </tfoot>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="folderModal" tabindex="-1" aria-labelledby="folderModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="folderModalLabel">Buat Folder Baru</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form action="{{ route('buat_folder') }}" method="POST">
                    @csrf
                    <div class="mb-3">
                        <label for="nama_folder" class="form-label">Nama Folder</label>
                        <input type="text" class="form-control" id="nama_folder" name="nama_folder" required>
                    </div>
                    <button type="submit" class="btn btn-primary">Simpan Folder</button>
                </form>
            </div>
        </div>
    </div>
</div>