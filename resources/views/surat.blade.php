<div class="card">
    <div class="card-header d-flex justify-content-between">
        <div class="header-title">
            <h4 class="card-title">Input</h4>
        </div>
    </div>
    <div class="card-body">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vulputate, ex ac venenatis mollis, diam nibh finibus leo</p>
        <form action="{{ route('buat_surat') }}" method="POST" enctype="multipart/form-data">
            @csrf
            <div class="form-group">
                <label class="form-label" for="exampleInputText1">Nomor Surat </label>
                <input type="text" class="form-control" id="exampleInputText1" name="nomor_surat" placeholder="">
            </div>
            <div class="form-group">
                <label class="form-label" for="exampleInputText1">Topik Surat </label>
                <input type="text" class="form-control" id="exampleInputText1" name="topik_surat" placeholder="">
            </div>
            <div class="form-group">
                <label class="form-label" for="exampleFormControlTextarea1">Isi Surat</label>
                <textarea class="form-control" name="isi_surat" id="exampleFormControlTextarea1" rows="8"
                    placeholder="Tuliskan isi surat di sini. Gunakan paragraf dengan menekan Enter dua kali."></textarea>
            </div>

            <div class="form-group">
                <label class="form-label">Penerima</label>
                <select class="form-select mb-3 shadow-none" name="penerima">
                    <option selected="">Open this select menu</option>
                    <option value="Admin">Admin</option>
                    <option value="Kepsek">Kepsek</option>
                    <option value="Kesiswaan">Kesiswaan</option>
                    <option value="Guru">Guru</option>
                </select>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
            <button type="submit" class="btn btn-danger">cancel</button>
        </form>
    </div>
</div>