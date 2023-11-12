<?php

namespace App\Http\Controllers;

use App\Models\Usuarios;
use Illuminate\Http\Request;

class UsuariosController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return Usuarios::all();
    }


    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $usuarios = new Usuarios();
        $usuarios->nombre = $request->nombre;
        $usuarios->apellido = $request->apellido;
        $usuarios->email = $request->email;
        $usuarios->fecharegistro = $request->fecharegistro;
        $usuarios->save();
        return "Guardado correctamente";
    }

    /**
     * Display the specified resource.
     */
    public function show($id)
    {
        $usuarios = Usuarios::find($id);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Usuarios $usuarios)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        $usuarios = Usuarios::find($id);
        $usuarios->nombre = $request->nombre;
        $usuarios->apellido = $request->apellido;
        $usuarios->email = $request->email;
        $usuarios->fecharegistro = $request->fecharegistro;
        $usuarios->save();
        return "Usuarios actualizado correctamente";
    }

    /**
     * Remove the specified resource from storage.
     */
    public function delete($id)
    {
        $usuarios = Usuarios::find($id);
        $usuarios->delete();
        return "Usuario se eliminó correctamente";
    }
}
