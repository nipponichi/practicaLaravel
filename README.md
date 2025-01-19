# Comandos utilizados

1. *sudo apt install composer*
    - Instala **[composer](https://getcomposer.org/)**, un gestor de dependencias de PHP.
2. *composer global require laravel/installer*
    - Instala globalmente el instalador de laravel
3. *laravel new practicaLaravel*
    - Crea un nuevo proyecto de laravel llamado "practicaLaravel"
4. *php artisan make:migration create_students_table*
    - Creamos el archivo en la carpeta migrations, que confecciona la tabla students al hacer la migración
5. *php artisan make:seeder StudentSeeder*
    - Crea la clase que generará estudiantes en base de datos al ejecutar el seed
6. *php artisan make:model Student*
    - Crea el modelo Student, que es una representacion de la tabla students en base de datos y es útil en este ejercicio para el Factory
7. *php artisan make:factory StudentFactory*
    - Se crea la clase que genera segun unos requisitos, unos modelos ficticios a petición, bajo la configuración del seeder correspondiente
8. *php artisan make:controller StudentController --api*
    - Clase donde se gestiona el acceso a base de datos, el comando --api nos crea cinco métodos principales para el CRUD (index, store, update y destroy) de student, ademas del método show, que nos permite seleccionar por ID a un alumno.
9. *php artisan migrate*
    - Permite crear la base de datos si no esta creada y las tablas que tengamos definidas en las clases de la carpeta migrations, ejecutará migraciones cuando tengamos
    una nueva migración pendiente en la carpeta migrations
10. *php artisan db:seed*
    - Comando que ejecuta el metodo run  de DatabaseSeeder, donde debemos instanciar los seeders creados y tiene como misión llenar de valores las tablas de la base de datos.
10. *php artisan optimize:clear*
    - Limpia todas las cachés del proyecto, necesario cuando modificamos las rutas de laravel