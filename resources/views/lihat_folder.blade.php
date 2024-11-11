<div class="row">
    <div class="col-sm-12">
        <div class="card">
            <div class="card-header d-flex justify-content-between">
                <div class="header-title">
                    <h4 class="card-title">Folder</h4>
                    <br>
                    <!-- Tombol untuk membuka modal upload file -->
                    <button type="button" class="btn btn-outline-primary kirim-surat" data-bs-toggle="modal" data-bs-target="#uploadFileModal">
                        Upload File
                    </button>
                </div>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table id="datatable" class="table table-striped" data-toggle="data-table">
                        <thead>
                            <tr>
                                <th>Nama File</th>
                                <th>Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($folder as $sm)
                            <tr>
                                <td>{{ $sm->nama_file }}</td>
                                <td>
                                    <form action="{{ route('file.destroy', $sm->id_file) }}" method="POST" style="display:inline;">
                                        @csrf
                                        @method('DELETE')
                                        <button class="btn btn-outline-danger btn-sm" type="submit" onclick="return confirm('Apakah Anda yakin ingin menghapus data ini?')">Hapus</button>
                                    </form>
                                    <a href="{{ route('file.download', $sm->id_file) }}" class="btn btn-outline-success btn-sm">Download</a>
                                </td>
                            </tr>
                            @endforeach
                        </tbody>
                        <tfoot>
                            <tr>
                                <th>Nama File</th>
                                <th>Aksi</th>
                            </tr>
                        </tfoot>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Modal untuk upload file -->
<div class="modal fade" id="uploadFileModal" tabindex="-1" aria-labelledby="uploadFileModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="uploadFileModalLabel">Upload File</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form action="{{ route('file.store', ['id_folder' => $id]) }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    <div class="mb-3">
                        <label for="nama_file" class="form-label">Nama File</label>
                        <input type="text" class="form-control" id="nama_file" name="nama_file" required>
                    </div>
                    <div class="mb-3">
                        <label for="file_upload" class="form-label">Pilih File</label>
                        <input type="file" class="form-control" id="file_upload" name="file_upload" required>
                    </div>
                    <button type="submit" class="btn btn-primary">Upload</button>
                </form>
            </div>
        </div>
    </div>
</div>