#!/bin/sh

clear
#################################################################################################################################
echo -e "\e[92m ############################################################################################################ \e[0m"
echo -e "\e[93m #                                                                                                          # \e[0m"
echo -e "\e[93m # Automatizacion Controller 1.2                                                                            # \e[0m"
echo -e "\e[93m #                                                                                                          # \e[0m"
echo -e "\e[92m ############################################################################################################ \e[0m"
echo -e "\e[93m # Febrero 2020                                                                                             # \e[0m"
echo -e "\e[92m ############################################################################################################ \e[0m"
echo -e "\e[92m ############################################################################################################ \e[0m"
echo -e "\e[93m #                                                                                                          # \e[0m"
echo -e "\e[93m # WixanCL                                                                                                  # \e[0m"
echo -e "\e[93m # wwww.wixan.cl                                                                                            # \e[0m"
echo -e "\e[93m #                                                                                                          # \e[0m"
echo -e "\e[92m ############################################################################################################ \e[0m"

echo -e "\e[92m  \e[0m"
echo -e "\e[96m Escriba el Nombre del Controlador \e[0m"
echo -n " >> "
read nombre

echo -e "\e[92m  \e[0m"
echo -e "\e[92m  \e[0m"


#################################################################################################################################
echo -e "\e[96m Creando lista de Variables \e[0m"
echo -e "\e[92m  \e[0m"
echo -e "\e[92m  \e[0m"

echo -e "\e[32m ""Controlador"" \e[94m variable \e[91m >> \e[93m \$nombre \e[97m= \e[96m $nombre \e[92m OK \e[0m"

s="s"
echo -e "\e[32m ""Sufijo s"" \e[94m variable \e[91m >> \e[93m \$s  \e[97m= \e[96m $s \e[92m OK \e[0m"

sub="$nombre$s"
echo -e "\e[32m ""Nombre + Sufijo"" \e[94m variable \e[91m >> \e[93m \$sub  \e[97m= \e[96m $sub \e[92m OK \e[0m"


Contr="Controller"
echo -e "\e[32m ""Texto Controller"" \e[94m variable \e[91m >> \e[93m \$Contr  \e[97m= \e[96m $Contr \e[92m OK \e[0m"

variable="$nombre"
echo -e "\e[32m ""Variable de Nombre"" \e[94m variable \e[91m >> \e[93m \$variable  \e[97m= \e[96m $variable \e[92m OK \e[0m"

conmayuscula=$(echo -n ${variable:0:1} | tr '[:lower:]' '[:upper:]'; echo ${variable:1} | tr '[:upper:]' '[:lower:]')
echo -e "\e[32m ""Nombre con mayuscula"" \e[94m variable \e[91m >> \e[93m \$conmayuscula  \e[97m= \e[96m $conmayuscula \e[92m OK \e[0m"

Contr2="$conmayuscula$Contr.php"
echo -e "\e[32m ""Nombre archivo controlador"" \e[94m variable \e[91m >> \e[93m \$Contr2 \e[97m= \e[96m $Contr2 \e[92m OK \e[0m"

Contr3="$conmayuscula$Contr"
echo -e "\e[32m ""Nombre variable controlador"" \e[94m variable \e[91m >> \e[93m \$Contr3 \e[97m= \e[96m $Contr3 \e[92m OK \e[0m"

Contr4="$conmayuscula$s"
echo -e "\e[32m ""Mayuscula con S"" \e[94m variable \e[91m >> \e[93m \$Contr4 \e[97m= \e[96m $Contr4 \e[92m OK \e[0m"

tablefinal="_table.php"
echo -e "\e[32m ""Final Migracion"" \e[94m variable \e[91m >> \e[93m \$tablefinal \e[97m= \e[96m $tablefinal \e[92m OK \e[0m"

asterisco="*"
echo -e "\e[32m ""asterisco"" \e[94m variable \e[91m >> \e[93m \$asterisco \e[97m= \e[96m $asterisco \e[92m OK \e[0m"


subfinal="$asterisco$sub$tablefinal"
#echo "----subfinal"
#echo "$subfinal"

Create="Create"
Table="Table"
CreateNombresTable=$Create$Contr4$Table


echo -e "\e[94m Ejecutado \e[92m OK \e[0m"
echo -e "\e[92m  \e[0m"
echo -e "\e[92m  \e[0m"



#################################################################################################################################

#################################################################################################################################
echo -e "\e[96m Ejecutando comnado Artisan \e[0m"
echo -e "\e[91m >> \e[94m php artisan make:model $nombre -m -c -r \e[0m"
php artisan make:model $nombre -m -c -r
echo -e "\e[94m Ejecutado \e[92m OK \e[0m"
echo -e "\e[92m  \e[0m"
echo -e "\e[92m  \e[0m"
#################################################################################################################################
echo -e "\e[96m Creando directorio resources \e[0m"
echo -e "\e[91m >> \e[94m mkdir resources/views/$nombre \e[0m"
mkdir resources/views/$nombre
echo -e "\e[94m Ejecutado \e[92m OK \e[0m"
echo -e "\e[92m  \e[0m"
echo -e "\e[92m  \e[0m"
#################################################################################################################################
echo " " >> resources/views/$nombre/create.blade.php
echo " " >> resources/views/$nombre/destroy.blade.php
echo " " >> resources/views/$nombre/edit.blade.php
echo " " >> resources/views/$nombre/index.blade.php
echo " " >> resources/views/$nombre/show.blade.php
echo " " >> resources/views/$nombre/store.blade.php
echo " " >> resources/views/$nombre/update.blade.php
#################################################################################################################################
echo "// Rutas $nombre " >> routes/web.php
echo "Route::resource('$nombre', '$nombre$Contr');" >> routes/web.php
#################################################################################################################################












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