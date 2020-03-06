#!/bin/sh

#clear
################################################################################################################################################################
#Pantalla de Presentacion                                                                                                                                      #
################################################################################################################################################################
echo -e "\e[92m ################################################# \e[0m"
echo -e "\e[93m #                                               # \e[0m"
echo -e "\e[93m # Automatizacion Controller 1.6                 # \e[0m"
echo -e "\e[93m #                                               # \e[0m"
echo -e "\e[92m ################################################# \e[0m"
echo -e "\e[93m # Febrero 2020                                  # \e[0m"
echo -e "\e[92m ################################################# \e[0m"
echo -e "\e[92m ################################################# \e[0m"
echo -e "\e[93m #                                               # \e[0m"
echo -e "\e[93m # WixanCL                                       # \e[0m"
echo -e "\e[93m # wwww.wixan.cl                                 # \e[0m"
echo -e "\e[93m #                                               # \e[0m"
echo -e "\e[92m ################################################# \e[0m"
echo -e "\e[92m  \e[0m"
echo -e "\e[96m Escriba el Nombre del Controlador \e[0m"
echo -n " >> "
read nombre

echo -e "\e[92m  \e[0m"
echo -e "\e[96m Escriba el Nombre del namespace \e[0m"
echo -n " >> "
read namespace



echo -e "\e[92m  \e[0m"
echo -e "\e[92m  \e[0m"
################################################################################################################################################################


################################################################################################################################################################
#Crear Entorno de seguridad	                                                                                                                                   #
################################################################################################################################################################
mkdir -p wixan/log
################################################################################################################################################################



################################################################################################################################################################
#Crear Varianles                                                                                                                                               #
################################################################################################################################################################
echo -e "\e[42m Creando lista de Variables \e[0m"
echo -e "\e[92m  \e[0m"
echo -e "\e[92m  \e[0m"

echo -e "\e[32m ""Controlador"" \e[94m variable \e[91m >> \e[93m \$nombre \e[97m= \e[96m $nombre \e[92m OK \e[0m"

echo -e "\e[32m ""NameEspace"" \e[94m variable \e[91m >> \e[93m \$namespace \e[97m= \e[96m $namespace \e[92m OK \e[0m"

fecha=`date "+%Y_%m_%d_%H%M%S"`
echo -e "\e[32m ""Fecha"" \e[94m variable \e[91m >> \e[93m \$fecha \e[97m= \e[96m $fecha \e[92m OK \e[0m"

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
echo -e "\e[32m ""asterisco + Final"" \e[94m variable \e[91m >> \e[93m \$asterisco$sub$tablefinal \e[97m= \e[96m $asterisco$sub$tablefinal \e[92m OK \e[0m"

Create="Create"
echo -e "\e[32m ""Texto Create"" \e[94m variable \e[91m >> \e[93m \$Create \e[97m= \e[96m $Create \e[92m OK \e[0m"

Table="Table"
echo -e "\e[32m ""Table"" \e[94m variable \e[91m >> \e[93m \$Table \e[97m= \e[96m $Table \e[92m OK \e[0m"

CreateNombresTable=$Create$Contr4$Table
echo -e "\e[32m ""Create nombre de la Tabla"" \e[94m variable \e[91m >> \e[93m \$CreateNombresTable \e[97m= \e[96m $CreateNombresTable \e[92m OK \e[0m"

extencionmigracion="_table.php"
echo -e "\e[32m ""Extencion nombre migracion"" \e[94m variable \e[91m >> \e[93m \$extencionmigracion  \e[97m= \e[96m $extencionmigracion \e[92m OK \e[0m"

createmigracion="_create_"
echo -e "\e[32m ""Create migracion"" \e[94m variable \e[91m >> \e[93m \$createmigracion  \e[97m= \e[96m $createmigracion\e[92m OK \e[0m"

fechamigracion="$fecha"
echo -e "\e[32m ""Fecha migracion"" \e[94m variable \e[91m >> \e[93m \$fechamigracion  \e[97m= \e[96m $fechamigracion \e[92m OK \e[0m"

archivomigracion=$fechamigracion$createmigracion$sub$extencionmigracion
echo -e "\e[32m ""Archivo migracion"" \e[94m variable \e[91m >> \e[93m \$archivomigracion  \e[97m= \e[96m $archivomigracion \e[92m OK \e[0m"



echo -e "\e[94m Ejecutado \e[92m OK \e[0m"
echo -e "\e[92m  \e[0m"
echo -e "\e[92m  \e[0m"
################################################################################################################################################################

################################################################################################################################################################
#Ejecucion de comando artisan para crear el modelo y controladores                                                                                             #
################################################################################################################################################################

echo -e "\e[96m Ejecutando comnado Artisan \e[0m"
echo -e "\e[91m >> \e[94m php artisan make:model $nombre -m -c -r \e[0m"
php artisan make:model $nombre -m -c -r
echo -e "\e[94m Ejecutado \e[92m OK \e[0m"
echo -e "\e[92m  \e[0m"
echo -e "\e[92m  \e[0m"

################################################################################################################################################################


################################################################################################################################################################
# Crear directorio en resources                                                                                                                                #
################################################################################################################################################################
echo -e "\e[96m Creando directorio resources \e[0m"
echo -e "\e[91m >> \e[94m mkdir resources/views/$nombre \e[0m"
mkdir resources/views/$nombre
echo -e "\e[94m Ejecutado \e[92m OK \e[0m"
echo -e "\e[92m  \e[0m"
echo -e "\e[92m  \e[0m"
################################################################################################################################################################

################################################################################################################################################################
# Crear archivos views                                                                                                                                         #
################################################################################################################################################################
echo -e "\e[44m Creando archivos views \e[0m"
echo -e "\e[92m  \e[0m"
echo -e "\e[92m  \e[0m"

echo " " >> resources/views/$nombre/create.blade.php
echo -e "\e[94m Creado resources/views/$nombre/create.blade.php \e[92m OK \e[0m"

echo " " >> resources/views/$nombre/destroy.blade.php
echo -e "\e[94m Creado resources/views/$nombre/destroy.blade.php \e[92m OK \e[0m"

echo " " >> resources/views/$nombre/edit.blade.php
echo -e "\e[94m Creado resources/views/$nombre/edit.blade.php \e[92m OK \e[0m"

echo " " >> resources/views/$nombre/index.blade.php
echo -e "\e[94m Creado resources/views/$nombre/index.blade.php \e[92m OK \e[0m"

echo " " >> resources/views/$nombre/show.blade.php
echo -e "\e[94m Creado resources/views/$nombre/show.blade.php \e[92m OK \e[0m"

echo " " >> resources/views/$nombre/store.blade.php
echo -e "\e[94m Creado resources/views/$nombre/store.blade.php \e[92m OK \e[0m"

echo " " >> resources/views/$nombre/update.blade.php
echo -e "\e[94m Creado resources/views/$nombre/update.blade.php \e[92m OK \e[0m"
echo -e "\e[92m  \e[0m"
echo -e "\e[92m  \e[0m"
################################################################################################################################################################

################################################################################################################################################################
# Creando rutas en archivo web                                                                                                                                 #
################################################################################################################################################################
echo -e "\e[96m Creando Rutas \e[0m"
echo -e "\e[92m  \e[0m"
echo -e "\e[92m  \e[0m"
echo "// Rutas $nombre " >> routes/web.php
echo "Route::resource('$nombre', '$conmayuscula$Contr');" >> routes/web.php
echo -e "\e[94m Agregando Ruta a routes/web.php \e[92m OK \e[0m"
echo -e "\e[92m  \e[0m"
echo -e "\e[92m  \e[0m"
################################################################################################################################################################



################################################################################################################################################################
# Creando informacion del modelo                                                                                                                               #
################################################################################################################################################################
echo -e "\e[44m Creando Modelo \e[0m"
echo -e "\e[92m  \e[0m"
echo -e "\e[92m  \e[0m"
echo -e "\e[94m Creando informacion dentro de  app/$nombre.php  \e[0m"

echo "																		" > app/$nombre.php  
echo "<?php																	" >> app/$nombre.php
echo "																		" >> app/$nombre.php
echo "	namespace App;														" >> app/$nombre.php
echo "																		" >> app/$nombre.php
echo "use Illuminate\Database\Eloquent\Model;								" >> app/$nombre.php
echo "																		" >> app/$nombre.php
echo "class $conmayuscula extends model                                     " >> app/$nombre.php
echo "{																		" >> app/$nombre.php
echo "    // A que tabla hace referencia el modelo $nombre 					" >> app/$nombre.php
echo "    //																" >> app/$nombre.php
echo "    // Los campos que son asignables masivamente						" >> app/$nombre.php
echo "    //																" >> app/$nombre.php
echo "    // 																" >> app/$nombre.php
echo "    //																" >> app/$nombre.php
echo "    //																" >> app/$nombre.php
echo "}																		" >> app/$nombre.php


echo -e "\e[94m Modelo Creado \e[92m OK \e[0m"
echo -e "\e[92m  \e[0m"
echo -e "\e[92m  \e[0m"
################################################################################################################################################################



















################################################################################################################################################################
# Creando informacion de achivo controlador                                                                                                                    #
################################################################################################################################################################
echo -e "\e[44m Creando Controller \e[0m"
echo -e "\e[92m  \e[0m"
echo -e "\e[92m  \e[0m"
echo -e "\e[94m Creando informacion dentro de  app/Http/Controllers/$Contr2  \e[0m"

echo "																		" > app/Http/Controllers/$Contr2  
echo "<?php																	" >> app/Http/Controllers/$Contr2
echo "																		" >> app/Http/Controllers/$Contr2
echo "namespace $namespace\Http\Controllers;										" >> app/Http/Controllers/$Contr2
echo "																		" >> app/Http/Controllers/$Contr2
echo "use $namespace\\$nombre;														" >> app/Http/Controllers/$Contr2
echo "use Auth;																" >> app/Http/Controllers/$Contr2						
echo "use Illuminate\Http\Request;											" >> app/Http/Controllers/$Contr2
echo "																		" >> app/Http/Controllers/$Contr2
echo "																		" >> app/Http/Controllers/$Contr2
echo "class $Contr3 extends Controller  									" >> app/Http/Controllers/$Contr2
echo "{																		" >> app/Http/Controllers/$Contr2
echo "    /**																" >> app/Http/Controllers/$Contr2
echo "     * Display a listing of the resource.								" >> app/Http/Controllers/$Contr2
echo "     *																" >> app/Http/Controllers/$Contr2
echo "     * @return \Illuminate\Http\Response								" >> app/Http/Controllers/$Contr2
echo "     */																" >> app/Http/Controllers/$Contr2
echo "    public function index()											" >> app/Http/Controllers/$Contr2
echo "    {																	" >> app/Http/Controllers/$Contr2
echo "        	//															" >> app/Http/Controllers/$Contr2
echo "																					" >> app/Http/Controllers/$Contr2
echo "																		" >> app/Http/Controllers/$Contr2
echo "																		" >> app/Http/Controllers/$Contr2
echo "																		" >> app/Http/Controllers/$Contr2
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
echo "    		return views('$nombre.create');								" >> app/Http/Controllers/$Contr2
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
echo "        //Validacion													" >> app/Http/Controllers/$Contr2
echo "        ""$""this->validate(""$""request, [							" >> app/Http/Controllers/$Contr2
echo "        	'name' => 'required|string',								" >> app/Http/Controllers/$Contr2
echo "        	'description' => 'required|string'							" >> app/Http/Controllers/$Contr2
echo "        ]);															" >> app/Http/Controllers/$Contr2
echo "																		" >> app/Http/Controllers/$Contr2
echo "        //Almacenamiento												" >> app/Http/Controllers/$Contr2
echo "			""$""task = new $conmayuscula;								" >> app/Http/Controllers/$Contr2
echo "			""$""task->name = ""$""request->name;						" >> app/Http/Controllers/$Contr2
echo "			""$""task->name = ""$""request->description;				" >> app/Http/Controllers/$Contr2
echo "			""$""task->user_id = Auth::user()->id;						" >> app/Http/Controllers/$Contr2
echo "			""$""task->save();											" >> app/Http/Controllers/$Contr2
echo "																		" >> app/Http/Controllers/$Contr2
echo "        //Redireccion													" >> app/Http/Controllers/$Contr2
echo "																		" >> app/Http/Controllers/$Contr2
echo "																		" >> app/Http/Controllers/$Contr2
echo "																		" >> app/Http/Controllers/$Contr2
echo "																		" >> app/Http/Controllers/$Contr2
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
echo "			return view('$nombre.show', compact('$nombre'));				" >> app/Http/Controllers/$Contr2
echo "																		" >> app/Http/Controllers/$Contr2
echo "																		" >> app/Http/Controllers/$Contr2
echo "																		" >> app/Http/Controllers/$Contr2
echo "																		" >> app/Http/Controllers/$Contr2
echo "																		" >> app/Http/Controllers/$Contr2
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
echo "    public function update(Request ""$""request, $nombre ""$""$nombre) 	" >> app/Http/Controllers/$Contr2
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
echo -e "\e[92m  \e[0m"
echo -e "\e[92m  \e[0m"


echo -e "\e[94m Controlador Creado \e[92m OK \e[0m"
echo -e "\e[92m  \e[0m"
echo -e "\e[92m  \e[0m"
################################################################################################################################################################


################################################################################################################################################################
# Creando informacion de archivo migraciones                                                                                                                   #
################################################################################################################################################################
echo -e "\e[44m Creando Migracion \e[0m"
echo -e "\e[92m  \e[0m"
echo -e "\e[92m  \e[0m"
echo -e "\e[94m Creando informacion dentro de  database/migrations/$subfinal  \e[0m"

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
echo "            ""$""table->string('name'); 								" >> database/migrations/$subfinal
echo "            ""$""table->text('description'); 							" >> database/migrations/$subfinal
echo "            ""$""table->integer('user_id')->unsigned(); 				" >> database/migrations/$subfinal
echo "            ""$""table->foreign('user_id')->references('id')->on('users')->onDelete('cascade')->onUpdate('cascade');" >> database/migrations/$subfinal
echo "            ""$""table->timestamps(); 								" >> database/migrations/$subfinal
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
echo -e "\e[92m  \e[0m"
echo -e "\e[92m  \e[0m"

echo -e "\e[94m Migracion Creada \e[92m OK \e[0m"
echo -e "\e[92m  \e[0m"
echo -e "\e[92m  \e[0m"

################################################################################################################################################################

################################################################################################################################################################
# Limpiar informacion de artisan y composer                                                                                                                    #
################################################################################################################################################################

echo -e "\e[44m Limpiar Cache \e[0m"
echo -e "\e[92m  \e[0m"
echo -e "\e[92m  \e[0m"
php artisan cache:clear
php artisan auth:clear-resets
php artisan config:cache
php artisan config:clear
php artisan route:clear
php artisan view:clear
composer clearcache
composer dump-autoload
################################################################################################################################################################


################################################################################################################################################################
# Crear Archivos de Eliminacion                                                                                                                                #
################################################################################################################################################################

archivosh=".sh"
echo "####################### Archivo para borrar ####################### " >> wixan/$nombre$archivosh
echo "read -rp ""$""'Desea Borrar los Archvos Generados (Y/n):' -ei ""$""'Y' key;  " >> wixan/$nombre$archivosh
echo " echo ""$""key" >> wixan/$nombre$archivosh
#echo "cd .." >> wixan/$nombre$archivosh
echo "rm ../app/$nombre$archivo.php" >> wixan/$nombre$archivosh
echo "rm ../app/Http/Controllers/$Contr2" >> wixan/$nombre$archivosh
echo "rm ../database/migrations/$archivomigracion" >> wixan/$nombre$archivosh
echo "rm -rf ../resources/views/$nombre" >> wixan/$nombre$archivosh
echo " echo \"Borrado de Entorno ""$""nombre  > ""$""(date +%y%m%d)_""$""(date +%H%M) \" >> log/log.txt " >> wixan/$nombre$archivosh


echo " sed -i 's/\/\/ Rutas prueba/ /g' """../routes/web.php""" ">> wixan/$nombre$archivosh


echo "rm $nombre$archivosh" >> wixan/$nombre$archivosh

################################################################################################################################################################


################################################################################################################################################################
# Documentacion                                                                                                                                                #
################################################################################################################################################################
echo "Creacion de Entorno $nombre  > $(date +%y%m%d)_$(date +%H%M) " >> wixan/log/log.txt

read -rp $'Desea continuar (Y/n):' -ei $'Y' key; 
echo "$key" 
. controller.sh



