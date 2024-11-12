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

                                    @php
                                    // Ambil level akses dari sesi dan pastikan menjadi array
                                    $userAccessLevels = session()->get('level', []);
                                    $userLevel = session()->get('level');
                                    if (is_string($userAccessLevels)) {
                                    $userAccessLevels = explode(',', $userAccessLevels); // Mengubah string menjadi array jika perlu
                                    }

                                    // Ambil level akses yang disimpan di folder
                                    $folderAccessLevels = explode(',', $sm->level_access); // Mengubah string menjadi array
                                    @endphp


                                    @if ($userLevel == "Admin")
                                    <button type="button" class="btn btn-outline-secondary atur-akses" data-bs-toggle="modal" data-bs-target="#accessModal" data-folder-id="{{ $sm->id_folder }}">
                                        Atur Akses
                                    </button>
                                    @endif

                                    <!-- Memeriksa apakah pengguna memiliki akses untuk melihat folder -->
                                    @if (!empty($userAccessLevels) && !empty($folderAccessLevels) && array_intersect($userAccessLevels, $folderAccessLevels))
                                    <a href="{{ route('lihat_folder', $sm->id_folder) }}">
                                        <button type="button" class="btn btn-outline-primary kirim-surat">Lihat Folder</button>
                                    </a>

                                    <form action="{{ route('folder.destroy', $sm->id_folder) }}" method="POST" style="display:inline;">
                                        @csrf
                                        @method('DELETE')
                                        <button class="btn btn-outline-danger btn-sm" type="submit">Hapus</button>
                                    </form>

                                    @endif

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

<!-- Modal -->
<div class="modal fade" id="accessModal" tabindex="-1" aria-labelledby="accessModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="accessModalLabel">Atur Akses</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form id="accessForm" action="{{ route('update_access') }}" method="POST">
                    @csrf
                    <div class="mb-3">
                        <label for="admin" class="form-label">Admin</label>
                        <input type="checkbox" id="admin" name="level_access[]" value="Admin"> <!-- Ganti dengan nilai level yang sesuai -->
                    </div>
                    <div class="mb-3">
                        <label for="kesiswaan" class="form-label">Kesiswaan</label>
                        <input type="checkbox" id="kesiswaan" name="level_access[]" value="Kesiswaan"> <!-- Ganti dengan nilai level yang sesuai -->
                    </div>
                    <div class="mb-3">
                        <label for="kepsek" class="form-label">Kepsek</label>
                        <input type="checkbox" id="kepsek" name="level_access[]" value="Kepsek"> <!-- Ganti dengan nilai level yang sesuai -->
                    </div>
                    <div class="mb-3">
                        <label for="guru" class="form-label">Guru</label>
                        <input type="checkbox" id="guru" name="level_access[]" value="Guru"> <!-- Ganti dengan nilai level yang sesuai -->
                    </div>
                    <div class="mb-3">
                        <label for="HRD" class="form-label">HRD</label>
                        <input type="checkbox" id="HRD" name="level_access[]" value="HRD"> <!-- Ganti dengan nilai level yang sesuai -->
                    </div>
                    <input type="hidden" id="folderId" name="folder_id" value="">
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Tutup</button>
                        <button type="submit" class="btn btn-primary" id="saveAccess">Simpan Akses</button>
                    </div>
                </form>
            </div>

        </div>
    </div>
</div>


<script>
    document.addEventListener('DOMContentLoaded', function() {
        // Mengisi ID folder ke dalam modal
        const accessButtons = document.querySelectorAll('.atur-akses');
        accessButtons.forEach(button => {
            button.addEventListener('click', function() {
                const folderId = this.getAttribute('data-folder-id');
                document.getElementById('folderId').value = folderId;
                // Reset checkbox
                const checkboxes = document.querySelectorAll('input[name="level_access[]"]');
                checkboxes.forEach(checkbox => {
                    checkbox.checked = false;
                });
            });
        });
    });
</script>