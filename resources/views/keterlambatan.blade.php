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
                    <h4 class="card-title">Keterlambatan</h4>
                    <br>
                    <button type="button" class="btn btn-outline-primary kirim-surat" data-bs-toggle="modal" data-bs-target="#folderModal">
                        Buat Pengajuan Keterlambatan Baru
                    </button>

                </div>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table id="datatable" class="table table-striped" data-toggle="data-table">
                        <thead>
                            <tr>
                                <th>Nama</th>
                                <th>Tanggal Telat</th>
                                <th>Jam Masuk</th>
                                <th>Total Telat</th>
                                <th>Alasan Telat</th>
                                <th>Status</th>
                                <th>Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($keterlambatan as $sm)
                            <tr>
                                <td>{{ $sm->username }}</td>
                                <td>{{ $sm->tanggal_telat }}</td>
                                <td>{{ $sm->jam_masuk }}</td>
                                <td>{{ $sm->total_telat }}</td>
                                <td>{{ $sm->alasan_telat }}</td>
                                <td>{{ $sm->status }}</td>
                                <td>
                                    @if($sm->status === 'Pending')
                                    <!-- Tampilkan tombol Setuju jika status masih Pending -->
                                    @if($userLevel == "Admin")
                                    <form action="{{ route('setuju.keterlambatan', $sm->id_telat) }}" method="POST" style="display:inline;">
                                        @csrf
                                        <button class="btn btn-outline-primary btn-sm" type="submit">Setuju</button>
                                    </form>
                                    @endif
                                    @elseif($sm->status === 'Setuju')
                                    <!-- Tampilkan tombol Konfirmasi jika status sudah Setuju -->
                                    @if($userLevel == "Admin")
                                    <form action="{{ route('konfirmasi.keterlambatan', $sm->id_telat) }}" method="POST" style="display:inline;">
                                        @csrf
                                        <button class="btn btn-outline-success btn-sm" type="submit">Konfirmasi</button>
                                    </form>
                                    @endif
                                    @endif
                                    <form action="{{ route('keterlambatan.destroy', $sm->id_telat) }}" method="POST" style="display:inline;">
                                        @csrf
                                        @method('DELETE')
                                        @if($userID == $sm->id_user)
                                        <button class="btn btn-outline-danger btn-sm" type="submit" onclick="return confirm('Apakah Anda yakin ingin menghapus data ini?')">Hapus</button>
                                        @endif
                                    </form>
                                    @if($userID == $sm->id_user)
                                    <button type="button" class="btn btn-outline-warning edit-cuti" data-bs-toggle="modal" data-bs-target="#editModal"
                                        data-id="{{ $sm->id_telat }}"
                                        data-tanggal="{{ $sm->tanggal_telat }}"
                                        data-jam="{{ $sm->jam_masuk }}"
                                        data-total="{{ $sm->total_telat }}"
                                        data-alasan="{{ $sm->alasan_telat }}">
                                        Edit
                                    </button>
                                    @endif
                                </td>
                            </tr>
                            @endforeach
                        </tbody>
                        <tfoot>
                            <tr>
                                <th>Nama</th>
                                <th>Tanggal Telat</th>
                                <th>Jam Masuk</th>
                                <th>Total Telat</th>
                                <th>Alasan Telat</th>
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
                <h5 class="modal-title" id="folderModalLabel">Buat Pengajuan Keterlambatan</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form action="{{ route('buat_keterlambatan') }}" method="POST">
                    @csrf
                    <div class="mb-3">
                        <label for="nama_folder" class="form-label">Tanggal Telat</label>
                        <input type="date" class="form-control" id="tanggal_telat" name="tanggal_telat" required>
                    </div>
                    <div class="mb-3">
                        <label for="nama_folder" class="form-label">Jam Masuk</label>
                        <input type="time" class="form-control" id="jam_masuk" name="jam_masuk" required>
                    </div>
                    <div class="mb-3">
                        <label for="nama_folder" class="form-label">Total Telat</label>
                        <input type="text" class="form-control" id="total_telat" name="total_telat" required readonly>
                    </div>
                    <div class="mb-3">
                        <label for="nama_folder" class="form-label">Alasan Telat</label>
                        <input type="text" class="form-control" id="alasan_telat" name="alasan_telat" required>
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
                        <label for="editTanggalCuti" class="form-label">Tanggal Telat</label>
                        <input type="date" class="form-control" id="editTanggalCuti" name="tanggal_telat" required>
                    </div>
                    <div class="mb-3">
                        <label for="editJumlahHari" class="form-label">Jam Masuk</label>
                        <input type="time" class="form-control" id="editJumlahHari" name="jam_masuk" required>
                    </div>
                    <div class="mb-3">
                        <label for="editAlasanCuti" class="form-label">Total Telat</label>
                        <input type="text" class="form-control" readonly id="editTotalTelat" name="total_telat" required>
                    </div>
                    <div class="mb-3">
                        <label for="editAlasanCuti" class="form-label">Alasan Telat</label>
                        <input type="text" class="form-control" id="editAlasanCuti" name="alasan_telat" required>
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
        let jam = $(this).data('jam');
        let total = $(this).data('total');
        let alasan = $(this).data('alasan');

        // Set nilai form action untuk edit
        $('#editForm').attr('action', '{{ route("keterlambatan.update", ":id") }}'.replace(':id', id));

        // Isi nilai input di modal edit
        $('#editTanggalCuti').val(tanggal);
        $('#editJumlahHari').val(jam);
        $('#editTotalTelat').val(total);
        $('#editAlasanCuti').val(alasan);
    });

    // Untuk menghitung total telat di buat
    $(document).on('input', '#jam_masuk', function() {
        // Ambil waktu yang dimasukkan pengguna
        let jamMasuk = $(this).val();

        // Tentukan waktu jam 7:00
        let jamAsli = "07:00";

        // Format waktu ke dalam objek Date untuk perhitungan
        let waktuMasuk = new Date("1970-01-01T" + jamMasuk + "Z");
        let waktuAsli = new Date("1970-01-01T" + jamAsli + "Z");

        // Hitung selisih waktu dalam milidetik
        let selisih = waktuMasuk - waktuAsli;

        // Jika waktu masuk lebih lambat, hitung total keterlambatan dalam menit
        if (selisih > 0) {
            let totalTelat = Math.floor(selisih / 1000 / 60); // Convert ms to minutes
            $('#total_telat').val(totalTelat + " menit");
        } else {
            $('#total_telat').val("0 menit");
        }
    });

    // Untuk modal edit
    $(document).on('input', '#editJumlahHari', function() {
        // Ambil waktu yang dimasukkan pengguna
        let jamMasuk = $(this).val();

        // Tentukan waktu jam 7:00
        let jamAsli = "07:00";

        // Format waktu ke dalam objek Date untuk perhitungan
        let waktuMasuk = new Date("1970-01-01T" + jamMasuk + "Z");
        let waktuAsli = new Date("1970-01-01T" + jamAsli + "Z");

        // Hitung selisih waktu dalam milidetik
        let selisih = waktuMasuk - waktuAsli;

        // Jika waktu masuk lebih lambat, hitung total keterlambatan dalam menit
        if (selisih > 0) {
            let totalTelat = Math.floor(selisih / 1000 / 60); // Convert ms to minutes
            $('#editTotalTelat').val(totalTelat + " menit");
        } else {
            $('#editTotalTelat').val("0 menit");
        }
    });
</script>