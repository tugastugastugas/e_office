@php
use Illuminate\Support\Facades\Session;

$userLevel =session()->get('level'); // Sesuaikan dengan cara Anda menyimpan level user
$userID =session()->get('id');
@endphp
<div class="row">
    <div class="col-sm-12">
        <div class="card">
            <div class="card-header d-flex justify-content-between">
                <div class="header-title">
                    <h4 class="card-title">Cuti</h4>
                    <br>
                    <button type="button" class="btn btn-outline-primary kirim-surat" data-bs-toggle="modal" data-bs-target="#folderModal">
                        Buat Pengajuan Cuti Baru
                    </button>

                </div>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table id="datatable" class="table table-striped" data-toggle="data-table">
                        <thead>
                            <tr>
                                <th>Nama</th>
                                <th>Tanggal Cuti</th>
                                <th>Jumlah Hari</th>
                                <th>Alasan Cuti</th>
                                <th>Status</th>
                                <th>Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($cuti as $sm)
                            <tr>
                                <td>{{ $sm->username }}</td>
                                <td>{{ $sm->tanggal_cuti }}</td>
                                <td>{{ $sm->jumlah_hari }}</td>
                                <td>{{ $sm->alasan_cuti }}</td>
                                <td>{{ $sm->status }}</td>
                                <td>
                                    @if($sm->status === 'Pending')
                                    <!-- Tampilkan tombol Setuju jika status masih Pending -->
                                    @if($userLevel == "Admin")
                                    <form action="{{ route('setuju.cuti', $sm->id_cuti) }}" method="POST" style="display:inline;">
                                        @csrf
                                        <button class="btn btn-outline-primary btn-sm" type="submit">Setuju</button>
                                    </form>
                                    @endif
                                    @elseif($sm->status === 'Setuju')
                                    <!-- Tampilkan tombol Konfirmasi jika status sudah Setuju -->
                                    @if($userLevel == "HRD")
                                    <form action="{{ route('konfirmasi.cuti', $sm->id_cuti) }}" method="POST" style="display:inline;">
                                        @csrf
                                        <button class="btn btn-outline-success btn-sm" type="submit">Konfirmasi</button>
                                    </form>
                                    @endif
                                    @endif
                                    <form action="{{ route('cuti.destroy', $sm->id_cuti) }}" method="POST" style="display:inline;">
                                        @csrf
                                        @method('DELETE')
                                        @if($userID == $sm->id_user) <!-- Pastikan id_user milik pembuat sama dengan id_user yang sedang login -->
                                        <button class="btn btn-outline-danger btn-sm" type="submit" onclick="return confirm('Apakah Anda yakin ingin menghapus data ini?')">Hapus</button>
                                        @endif
                                    </form>
                                    @if($userID == $sm->id_user)
                                    <button type="button" class="btn btn-outline-warning edit-cuti" data-bs-toggle="modal" data-bs-target="#editModal"
                                        data-id="{{ $sm->id_cuti }}"
                                        data-tanggal="{{ $sm->tanggal_cuti }}"
                                        data-jumlah="{{ $sm->jumlah_hari }}"
                                        data-alasan="{{ $sm->alasan_cuti }}">
                                        Edit
                                    </button>
                                    @endif
                                </td>
                            </tr>
                            @endforeach
                        </tbody>
                        <tfoot>
                            <tr>
                                <th>nama</th>
                                <th>Tanggal Cuti</th>
                                <th>Jumlah Cuti</th>
                                <th>Alasan Cuti</th>
                                <th>Status</th>
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
                <h5 class="modal-title" id="folderModalLabel">Buat Pengajuan Cuti</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form action="{{ route('buat_cuti') }}" method="POST">
                    @csrf
                    <div class="mb-3">
                        <label for="nama_folder" class="form-label">Tanggal Cuti</label>
                        <input type="date" class="form-control" id="tanggal_cuti" name="tanggal_cuti" required>
                    </div>
                    <div class="mb-3">
                        <label for="nama_folder" class="form-label">Jumlah Hari</label>
                        <input type="text" class="form-control" id="jumlah_hari" name="jumlah_hari" required>
                    </div>
                    <div class="mb-3">
                        <label for="nama_folder" class="form-label">Alasan Cuti</label>
                        <input type="text" class="form-control" id="alasan_cuti" name="alasan_cuti" required>
                    </div>
                    <button type="submit" class="btn btn-primary">Simpan Pengajuan</button>
                </form>
            </div>
        </div>
    </div>
</div>


<div class="modal fade" id="editModal" tabindex="-1" aria-labelledby="editModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="editModalLabel">Edit Pengajuan Cuti</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form action="" method="POST" id="editForm">
                    @csrf
                    @method('GET')
                    <div class="mb-3">
                        <label for="editTanggalCuti" class="form-label">Tanggal Cuti</label>
                        <input type="date" class="form-control" id="editTanggalCuti" name="tanggal_cuti" required>
                    </div>
                    <div class="mb-3">
                        <label for="editJumlahHari" class="form-label">Jumlah Hari</label>
                        <input type="number" class="form-control" id="editJumlahHari" name="jumlah_hari" required>
                    </div>
                    <div class="mb-3">
                        <label for="editAlasanCuti" class="form-label">Alasan Cuti</label>
                        <input type="text" class="form-control" id="editAlasanCuti" name="alasan_cuti" required>
                    </div>
                    <button type="submit" class="btn btn-primary">Simpan Perubahan</button>
                </form>
            </div>
        </div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<script>
    $(document).on('click', '.edit-cuti', function() {
        // Ambil data dari atribut tombol Edit
        let id = $(this).data('id');
        let tanggal = $(this).data('tanggal');
        let jumlah = $(this).data('jumlah');
        let alasan = $(this).data('alasan');

        // Set nilai form action untuk edit
        $('#editForm').attr('action', '{{ route("cuti.update", ":id") }}'.replace(':id', id));

        // Isi nilai input di modal edit
        $('#editTanggalCuti').val(tanggal);
        $('#editJumlahHari').val(jumlah);
        $('#editAlasanCuti').val(alasan);
    });
</script>