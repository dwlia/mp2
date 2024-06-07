<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Perwalian;
use App\Models\Mahasiswa;
use App\Models\Dosen;
use App\Models\ProgramStudi;
use App\Models\Tahun;
use Illuminate\Database\QueryException;
use Illuminate\Support\Facades\Validator;

class PerwalianController extends Controller
{
    public function index()
    {
        $perwalians = Perwalian::all();
        $tahunAkademiks = Tahun::all();
        $programStudis = ProgramStudi::all();
        $perwalian = Perwalian::with('mahasiswa', 'programStudi', 'tahunAkademik')->get();
        return view('pages.admin.perwalian', compact('perwalians', 'tahunAkademiks', 'programStudis', 'perwalian'));
    }

    public function create()
    {
        $mahasiswa = Mahasiswa::all();
        $dosens = Dosen::all();
        $programStudis = ProgramStudi::all();
        $tahunAkademiks = Tahun::all();
        return view('pages.admin.tambahwali', compact('mahasiswa', 'dosens', 'tahunAkademiks', 'programStudis'));
    }

    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'nim' => 'required',
            'nama_mahasiswa' => 'required',
            'program_studi' => 'required',
            'dosen_id' => 'required',
            'tahun_akademik_id' => 'required',
            'tanggal_perwalian' => 'required',
        ]);

        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator)->withInput();
        }

        // Cari mahasiswa berdasarkan NIM
        $mahasiswa = Mahasiswa::where('nim', $request->nim)->first();

        if (!$mahasiswa) {
            return redirect()->back()->with('error', 'Mahasiswa dengan NIM tersebut tidak ditemukan.');
        }

        // Buat data perwalian dengan memasukkan ID mahasiswa
        try {
            Perwalian::create([
                'nim' => $request->nim,
                'nama_mahasiswa' => $request->nama_mahasiswa,
                'program_studi' => $request->program_studi,
                'dosen_id' => $request->dosen_id,
                'tahun_akademik_id' => $request->tahun_akademik_id,
                'tanggal_perwalian' => $request->tanggal_perwalian,
                'mahasiswa_id' => $mahasiswa->id, // Gunakan ID mahasiswa yang ditemukan
            ]);

            return redirect()->route('admin.perwalian')->with('success', 'Data Wali berhasil ditambahkan.');
        } catch (\Exception $e) {
            return redirect()->back()->with('error', 'Gagal menambahkan data wali. Terjadi kesalahan dalam penyimpanan data.');
        }
    }



    public function edit($id)
    {
        $perwalian = Perwalian::findOrFail($id);
        $mahasiswa = Mahasiswa::all();
        $dosens = Dosen::all();
        $tahunAkademiks = Tahun::all();
        return view('pages.admin.editperwalian', compact('perwalian', 'mahasiswa', 'dosens', 'tahunAkademiks'));
    }

    public function update(Request $request, $id)
    {

        $request->validate([
            'nim' => 'required',
            'dosen_id' => 'required',
            'tahun_akademik_id' => 'required',
            'tanggal_perwalian' => 'required',
        ]);

        $perwalian = Perwalian::findOrFail($id);

        try {
            $perwalian->update($request->all());

            return redirect()->route('admin.perwalian')
                ->with('success', 'Data perwalian berhasil diperbarui.');
        } catch (QueryException $e) {
            return redirect()->back()->with('error', 'Gagal memperbarui data perwalian. Terjadi kesalahan dalam penyimpanan data.');
        } catch (\Exception $e) {
            return redirect()->back()->with('error', 'Terjadi kesalahan. Silakan coba lagi.');
        }
    }

    public function destroy($id)
    {
        $perwalian = Perwalian::findOrFail($id);
        $perwalian->delete();

        return redirect()->route('admin.perwalian')
            ->with('success', 'Data perwalian berhasil dihapus.');
    }
}
