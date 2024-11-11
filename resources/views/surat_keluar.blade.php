<div class="row">
    <div class="col-sm-12">
        <div class="card">
            <div class="card-header d-flex justify-content-between">
                <div class="header-title">
                    <h4 class="card-title">Surat Keluar</h4>
                </div>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table id="datatable" class="table table-striped" data-toggle="data-table">
                        <thead>
                            <tr>
                                <th>Nomor Surat</th>
                                <th>Topik Surat</th>
                                <th>Isi Surat</th>
                                <th>Penerima</th>
                                <th>Tanggal Buat</th>
                                <th>Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($surat_keluar as $sk)
                            <tr>
                                <td>{{ $sk->nomor_surat }}</td>
                                <td>{{ $sk->topik_surat }}</td>
                                <td>{{ $sk->isi_surat }}</td>
                                <td>{{ $sk->penerima }}</td>
                                <td>{{ $sk->created_at }}</td>
                                <td>
                                    <button type="button" class="btn btn-outline-primary kirim-surat" data-id="{{ $sk->id_surat }}" data-action="{{ url('/kirim-surat/'.$sk->id_surat) }}">Kirim Surat</button>
                                </td>
                            </tr>
                            @endforeach
                        </tbody>
                        <tfoot>
                            <tr>
                                <th>Nomor Surat</th>
                                <th>Topik Surat</th>
                                <th>Isi Surat</th>
                                <th>Penerima</th>
                                <th>Tanggal Buat</th>
                                <th>Aksi</th>
                            </tr>
                        </tfoot>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    document.querySelectorAll('.kirim-surat').forEach(button => {
        button.addEventListener('click', function() {
            let url = this.getAttribute('data-action');
            fetch(url, {
                    method: 'POST',
                    headers: {
                        'X-CSRF-TOKEN': '{{ csrf_token() }}',
                        'Content-Type': 'application/json'
                    }
                })
                .then(response => response.json())
                .then(data => {
                    if (data.success) {
                        alert('Surat berhasil dikirim');
                    } else {
                        alert('Gagal mengirim surat');
                    }
                })
                .catch(error => console.error('Error:', error));
        });
    });
</script>