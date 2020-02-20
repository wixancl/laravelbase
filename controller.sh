#!/bin/sh

echo 'Escriba el nombre del Controlador'

read nombre
echo "----nombre"
echo "$nombre"

s="s"
echo "----s"
echo "$s"

sub="$nombre$s"
echo "----sub"
echo "$sub"

Contr="Controller"
echo "----Contr"
echo Contr


variable="$nombre"
echo "----variable"
echo "$variable"

conmayuscula=$(echo -n ${variable:0:1} | tr '[:lower:]' '[:upper:]'; echo ${variable:1} | tr '[:upper:]' '[:lower:]')
echo "----conmayuscula"
echo "$conmayuscula"

Contr2="$conmayuscula$Contr.php"
echo "----Contr2"
echo "$Contr2"

Contr3="$conmayuscula$Contr"
echo "----Contr3"
echo "$Contr3"

Contr4="$conmayuscula$s"
echo "----Contr4"
echo "$Contr4"

tablefinal="_table.php"
echo "----tablefinal"
echo "$tablefinal"

asterisco="*"
echo "----*"
echo "$asterisco"

subfinal="$asterisco$sub$tablefinal"
echo "----subfinal"
echo "$subfinal"

Create="Create"
Table="Table"
CreateNombresTable=$Create$Contr4$Table



php artisan make:model $nombre -m -c -r

mkdir resources/views/$nombre
echo " " >> resources/views/$nombre/create.blade.php
echo " " >> resources/views/$nombre/destroy.blade.php
echo " " >> resources/views/$nombre/edit.blade.php
echo " " >> resources/views/$nombre/index.blade.php
echo " " >> resources/views/$nombre/show.blade.php
echo " " >> resources/views/$nombre/store.blade.php
echo " " >> resources/views/$nombre/update.blade.php
echo "// Rutas $nombre " >> routes/web.php
echo "Route::resource('$nombre', '$nombre$Contr');" >> routes/web.php












######################################################################################################################################
echo "																		" > app/Http/Controllers/$Contr2  
echo "<?php																	" >> app/Http/Controllers/$Contr2
echo "																		" >> app/Http/Controllers/$Contr2
echo "namespace sgd\Http\Controllers;										" >> app/Http/Controllers/$Contr2
echo "																		" >> app/Http/Controllers/$Contr2
echo "use sgd\\$nombre;														" >> app/Http/Controllers/$Contr2						
echo "use Illuminate\Http\Request;											" >> app/Http/Controllers/$Contr2
echo "																		" >> app/Http/Controllers/$Contr2
echo "																		" >> app/Http/Controllers/$Contr2
echo "class $Contr3 extends Controllers 									" >> app/Http/Controllers/$Contr2
echo "{																		" >> app/Http/Controllers/$Contr2
echo "    /**																" >> app/Http/Controllers/$Contr2
echo "     * Display a listing of the resource.								" >> app/Http/Controllers/$Contr2
echo "     *																" >> app/Http/Controllers/$Contr2
echo "     * @return \Illuminate\Http\Response								" >> app/Http/Controllers/$Contr2
echo "     */																" >> app/Http/Controllers/$Contr2
echo "    public function index()											" >> app/Http/Controllers/$Contr2
echo "    {																	" >> app/Http/Controllers/$Contr2
echo "        	//															" >> app/Http/Controllers/$Contr2
echo "    }																	" >> app/Http/Controllers/$Contr2
echo "																		" >> app/Http/Controllers/$Contr2
echo "																		" >> app/Http/Controllers/$Contr2
echo "																		" >> app/Http/Controllers/$Contr2
echo "    /**																" >> app/Http/Controllers/$Contr2
echo "     * Show the form for creating a new resource.						" >> app/Http/Controllers/$Contr2
echo "     *																" >> app/Http/Controllers/$Contr2
echo "     * @return \Illuminate\Http\Response								" >> app/Http/Controllers/$Contr2
echo "     */																" >> app/Http/Controllers/$Contr2
echo "    public function create()											" >> app/Http/Controllers/$Contr2
echo "    {																	" >> app/Http/Controllers/$Contr2
echo "    		//															" >> app/Http/Controllers/$Contr2
echo "    }																	" >> app/Http/Controllers/$Contr2
echo "																		" >> app/Http/Controllers/$Contr2
echo "																		" >> app/Http/Controllers/$Contr2
echo "																		" >> app/Http/Controllers/$Contr2
echo "    /**																" >> app/Http/Controllers/$Contr2
echo "     * Store a newly created resource in storage.						" >> app/Http/Controllers/$Contr2
echo "     *																" >> app/Http/Controllers/$Contr2
echo "     * @param  \Illuminate\Http\Request  ""$""request					" >> app/Http/Controllers/$Contr2
echo "     * @return \Illuminate\Http\Response								" >> app/Http/Controllers/$Contr2
echo "     */																" >> app/Http/Controllers/$Contr2
echo "    public function store(Request ""$""request)						" >> app/Http/Controllers/$Contr2
echo "    {																	" >> app/Http/Controllers/$Contr2
echo "        //															" >> app/Http/Controllers/$Contr2
echo "    }																	" >> app/Http/Controllers/$Contr2
echo "																		" >> app/Http/Controllers/$Contr2
echo "																		" >> app/Http/Controllers/$Contr2
echo "																		" >> app/Http/Controllers/$Contr2
echo "    /**																" >> app/Http/Controllers/$Contr2
echo "     * Display the specified resource.								" >> app/Http/Controllers/$Contr2
echo "     *																" >> app/Http/Controllers/$Contr2
echo "     * @param  \sgd\$nombre  ""$""$nombre								" >> app/Http/Controllers/$Contr2
echo "     * @return \Illuminate\Http\Response								" >> app/Http/Controllers/$Contr2
echo "     */																" >> app/Http/Controllers/$Contr2
echo "    public function show($nombre ""$""$nombre)						" >> app/Http/Controllers/$Contr2
echo "    {																	" >> app/Http/Controllers/$Contr2
echo "        //															" >> app/Http/Controllers/$Contr2
echo "    }																	" >> app/Http/Controllers/$Contr2
echo "																		" >> app/Http/Controllers/$Contr2
echo "																		" >> app/Http/Controllers/$Contr2
echo "																		" >> app/Http/Controllers/$Contr2
echo "    /**																" >> app/Http/Controllers/$Contr2
echo "    * Show the form for editing the specified resource.				" >> app/Http/Controllers/$Contr2
echo "    *																	" >> app/Http/Controllers/$Contr2
echo "    * @param  \sgd\$nombre  ""$""nombre								" >> app/Http/Controllers/$Contr2
echo "    * @return \Illuminate\Http\Response								" >> app/Http/Controllers/$Contr2
echo "    */																" >> app/Http/Controllers/$Contr2
echo "    public function edit($nombre ""$""$nombre)						" >> app/Http/Controllers/$Contr2
echo "    {																	" >> app/Http/Controllers/$Contr2
echo "    	//																" >> app/Http/Controllers/$Contr2
echo "    }																	" >> app/Http/Controllers/$Contr2
echo "																		" >> app/Http/Controllers/$Contr2
echo "																		" >> app/Http/Controllers/$Contr2
echo "																		" >> app/Http/Controllers/$Contr2
echo "	   /**																" >> app/Http/Controllers/$Contr2
echo "     * Update the specified resource in storage.						" >> app/Http/Controllers/$Contr2
echo "     *																" >> app/Http/Controllers/$Contr2
echo "     * @param  \Illuminate\Http\Request  $request 					" >> app/Http/Controllers/$Contr2
echo "     * @param  \sgd\$nombre ""$""$nombre 								" >> app/Http/Controllers/$Contr2
echo "     * @return \Illuminate\Http\Response 								" >> app/Http/Controllers/$Contr2
echo "     */ 																" >> app/Http/Controllers/$Contr2
echo "    public function update(Request $request, $nombre ""$""$nombre) 	" >> app/Http/Controllers/$Contr2
echo "    { 																" >> app/Http/Controllers/$Contr2
echo "        // 															" >> app/Http/Controllers/$Contr2
echo "    } 																" >> app/Http/Controllers/$Contr2
echo "																		" >> app/Http/Controllers/$Contr2
echo "																		" >> app/Http/Controllers/$Contr2
echo "																		" >> app/Http/Controllers/$Contr2
echo "    /**																" >> app/Http/Controllers/$Contr2
echo "     * Remove the specified resource from storage.					" >> app/Http/Controllers/$Contr2
echo "     *																" >> app/Http/Controllers/$Contr2
echo "     * @param  \sgd\$nombre ""$""$nombre								" >> app/Http/Controllers/$Contr2
echo "     * @return \Illuminate\Http\Response								" >> app/Http/Controllers/$Contr2
echo "     */																" >> app/Http/Controllers/$Contr2
echo "    public function destroy($nombre ""$""$nombre)						" >> app/Http/Controllers/$Contr2
echo "    {																	" >> app/Http/Controllers/$Contr2
echo "        //															" >> app/Http/Controllers/$Contr2
echo "    }																	" >> app/Http/Controllers/$Contr2
echo "}																		" >> app/Http/Controllers/$Contr2
######################################################################################################################################

######################################################################################################################################
echo "																		" > database/migrations/$subfinal
echo "																		" >> database/migrations/$subfinal
echo "<?php																	" >> database/migrations/$subfinal
echo "																		" >> database/migrations/$subfinal
echo "use Illuminate\Support\Facades\Schema;								" >> database/migrations/$subfinal
echo "use Illuminate\Database\Schema\Blueprint;								" >> database/migrations/$subfinal
echo "use Illuminate\Database\Migrations\Migration;							" >> database/migrations/$subfinal
echo "																		" >> database/migrations/$subfinal																		
echo "class $CreateNombresTable extends Migration 							" >> database/migrations/$subfinal
echo "{																		" >> database/migrations/$subfinal
echo "    /**																" >> database/migrations/$subfinal
echo "     * Run the migrations. 											" >> database/migrations/$subfinal
echo "     *																" >> database/migrations/$subfinal
echo "     * @return void													" >> database/migrations/$subfinal
echo "     */																" >> database/migrations/$subfinal
echo "    public function up() 												" >> database/migrations/$subfinal
echo "    {																	" >> database/migrations/$subfinal
echo "        Schema::create('$nombre$s', function (Blueprint ""$""table) {		" >> database/migrations/$subfinal
echo "            ""$""table->increments('id'); 								" >> database/migrations/$subfinal
echo "            ""$""table->timestamps(); 									" >> database/migrations/$subfinal
echo "        }); 															" >> database/migrations/$subfinal
echo "    } 																" >> database/migrations/$subfinal
echo "																		" >> database/migrations/$subfinal
echo "    /** 																" >> database/migrations/$subfinal
echo "     * Reverse the migrations. 										" >> database/migrations/$subfinal
echo "     * 																" >> database/migrations/$subfinal
echo "     * @return void 													" >> database/migrations/$subfinal
echo "     */ 																" >> database/migrations/$subfinal
echo "    public function down() 											" >> database/migrations/$subfinal
echo "    { 																" >> database/migrations/$subfinal
echo "        Schema::dropIfExists('$nombres'); 								" >> database/migrations/$subfinal
echo "    } 																" >> database/migrations/$subfinal
echo "} 																	" >> database/migrations/$subfinal
######################################################################################################################################




php artisan cache:clear
php artisan auth:clear-resets
php artisan config:cache
php artisan config:clear
php artisan route:clear
php artisan view:clear