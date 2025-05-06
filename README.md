# personapi-dotnet

Este repositorio corresponde al desarrollo del **Laboratorio 1** de la materia, implementando una API REST con ASP.NET Core y SQL Server.

---

## 🧱 Stack utilizado

- **.NET 7**
- **MS SQL Server 2022**
- **REST API**
- **Swagger 3**

---

## 🔗 Rutas disponibles

Estas son las rutas definidas en el proyecto:

### Vistas MVC (interfaz):

- `/Personas`
- `/Telefonoes`
- `/Estudios`
- `/Profesions`
- `/Swagger` – Documentación de la API

### Endpoints REST:

Anteponiendo `/api` a cada ruta se accede a los endpoints REST. Por ejemplo:

- `/api/Personas`
- `/api/Telefonoes`
- `/api/Estudios`
- `/api/Profesions`

Todos los endpoints están documentados y pueden probarse desde `/swagger`.

---

## 🚀 Instrucciones para ejecución local

1. Clona este repositorio:

   ```bash
   git clone https://github.com/tu_usuario/personapi-dotnet.git
   cd personapi-dotnet
## 🚀 Instrucciones de ejecución local

En Windows, asegúrate de tener instalado **Docker Desktop**. Luego, abre una terminal en la carpeta raíz del proyecto y ejecuta:

```bash
docker-compose up --build
```

Esto levantará el contenedor de **SQL Server** con la base de datos `persona_db` y la aplicación web MVC hecha en .NET.

1. Accede a la aplicación desde tu navegador en:

```text
http://localhost:5180
```

4. Visita la ruta `/swagger` para ver la documentación interactiva de la API REST generada automáticamente.

---

## 🧪 Detalles técnicos

- El proyecto fue generado con la plantilla **Aplicación web ASP.NET Core MVC**.
- El modelo de base de datos fue creado automáticamente mediante el comando `Scaffold-DbContext`, conectando a la base de datos `persona_db`.
- Se utilizó **Entity Framework Core 7** para el acceso a datos y generación de entidades.
- Se integró **Swagger** para documentar automáticamente todos los endpoints REST disponibles.
