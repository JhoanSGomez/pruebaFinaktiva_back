# pruebaFinaktiva_back

## Project for the management of the proof finaktiva

## Requisitos Previos

- Node.js instalado versión estable v20.12.1 lts https://nodejs.org/en/blog/release/v20.12.1
- Gestor de bases de datos MYSQL workbench instalado y configurado
- Descargar un editor de codigo, en este caso visual estudio code

## Instalación

* 1. Ingresar a GitHub para proceder a descargar repositorio pruebaFinaktiva_back 

* 2. Clona este repositorio en tu máquina local:

   ```bash
   git clone https://github.com/JhoanSGomez/pruebaFinaktiva_back.git

* 3. Instala las dependencias del proyecto:

   ```bash
   npm install

* 4. Luego buscamos en las carpetas del backend  la carpeta db y copiamos lo que esta en el archivo data.sql, alli se encuentra script de la base de datos con la que se trabajo

* 5. Vamos a el workbench y pegamos este escript y asi mismo lo ejecutamos para crear la bd, o con solo crear una base de datos llamada registration bastaria, ya que cuando se ejecuta el servidor crea las tablas si no existen.

# Uso

* 1. Inicia el servidor:

   ```bash
     npm start

## Endpoints API

## API Eventos

 - La API de Eventos permite gestionar eventos en una base de datos.

### Registrar un Evento

 - POST /event/register
 - Permite registrar un nuevo evento en la base de datos.

#### Parámetros de la Solicitud

- fecha (Date): Fecha y hora del evento (formato ISO).
- descripcion (String): Descripción del evento.
- tipo (String): Tipo de evento (FORM).

### Consultar un Evento

 - GET /event/consult
 - Permite consultar un nuevo evento en la base de datos por filtros de fecha y tipo.

#### Parámetros de la Solicitud

- tipo
- fechaInicio
- fechaFin

## API Usuario

- La API de usuarios permite gestionar usuarios en una base de datos.

### Registrar un usuario

 - POST /user/register
 - Permite registrar un nuevo usuario en la base de datos.

#### Parámetros de la Solicitud

- nombre_completo (String)
- fecha_nacimiento (Date)
- email (String)
- password (String)

### Login usuario

 - POST /user/login
 - Permite iniciar sesion y responde con un token para autorizacion de registro y consulta de eventos.

#### Parámetros de la Solicitud

- email (String)
- password (String)

## Contribuciones

- Crea una nueva rama (git checkout -b feature/nueva-funcionalidad)
- Realiza tus cambios y haz commit de los mismos (git commit -m 'Agrega nueva funcionalidad')
- Haz push a la rama (git push origin feature/nueva-funcionalidad)
- Crea un nuevo Pull Request