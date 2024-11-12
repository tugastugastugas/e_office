<div class="row">
    <div class="col-sm-12">
        <div class="card">
            <div class="card-header d-flex justify-content-between">
                <div class="header-title">
                    <h4 class="card-title">Surat Masuk</h4>
                </div>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table id="datatable" class="table table-striped" data-toggle="data-table">
                        <thead>
                            <tr>
                                <th>Pembuat Surat</th>
                                <th>Level Pembuat</th>
                                <th>Nomor Surat</th>
                                <th>Topik Surat</th>
                                <th>Isi Surat</th>
                                <th>Penerima</th>
                                <th>Tanggal Buat</th>
                                <th>Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($surat_masuk as $sm)
                            <tr>
                                <td>{{ $sm->username }}</td>
                                <td>{{ $sm->level }}</td>
                                <td>{{ $sm->nomor_surat }}</td>
                                <td>{{ $sm->topik_surat }}</td>
                                <td>{{ $sm->isi_surat }}</td>
                                <td>{{ $sm->penerima }}</td>
                                <td>{{ $sm->created_at }}</td>
                                <td>

                                    <a href="{{ route('download.surat', $sm->id_surat) }}"
                                        class="btn btn-primary btn-sm"
                                        title="Download Surat">
                                        Download
                                    </a>

                                </td>
                            </tr>
                            @endforeach
                        </tbody>
                        <tfoot>
                            <tr>
                                <th>Pembuat Surat</th>
                                <th>Level Pembuat</th>
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