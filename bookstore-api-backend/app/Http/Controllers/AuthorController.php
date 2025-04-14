<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\Author;


class AuthorController extends Controller {
    /**
     * Create a new controller instance.
     *
     * @return void
     */

     public function getAuthors() {
         $authors = Author::all();
         return response()->json($authors);
     }
    
}
