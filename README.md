# ASP.NET TODO APP

## Uso

- Para rodar na máquina: `dotnet run`

- Para rodar em um container: `docker-compose up --build`

---

## Processo

1.  `$ dotnet new mvc --auth Individual`
    > Gera projeto MVC com Autenticação e utilizando SQLite

2.  `$ dotnet new editorconfig` && `$ dotnet new gitignore` && `git init`

3.  Adicionei `Dockerfile`, `.dockerignore` e `docker-compose.yml`

4.  Adicionei `Models/Todo.cs`

5.  `$ dotnet clean` && `$ dotnet build` 
    > Para verificar se está tudo funcionando

6.  `$ dotnet add package Microsoft.VisualStudio.Web.CodeGeneration.Design`
    > Para adicionar NuGet package

    `$ dotnet tool install --global dotnet-aspnet-codegenerator`
    `$ dotnet tool uninstall --global dotnet-aspnet-codegenerator`
    > Passos extras do **.NET Core**

7.  `$ dotnet-aspnet-codegenerator controller -name TodoController -dc ApplicationDbContext -m Todo --useDefaultLayout --useSqlite --referenceScriptLibraries`
    > Esse comando só vai rodar se instalar o pacote anterior, ele cria todas as telas CRUD

    ```text
    Added Controller : '/TodoController.cs'.
    Added View : /Views/Todo/Create.cshtml
    Added View : /Views/Todo/Edit.cshtml
    Added View : /Views/Todo/Details.cshtml
    Added View : /Views/Todo/Delete.cshtml
    Added View : /Views/Todo/Index.cshtml
    ```

8.  Adiciona Entity Framework `$ dotnet tool install --global dotnet-ef`
    > Passos extras do **.NET Core**

9.  `$ dotnet ef migrations add CreateTodoTable`
    > Cria migration

10. `$ dotnet ef database update`
    > Roda Migration
    ```
    CREATE TABLE "Todos" (
      "Id" INTEGER NOT NULL CONSTRAINT "PK_Todos" PRIMARY KEY AUTOINCREMENT,
      "Title" TEXT NOT NULL,
      "Done" INTEGER NOT NULL,
      "CreatedAt" TEXT NOT NULL,
      "LastUpdateDate" TEXT NOT NULL,
      "User" TEXT NOT NULL
    );
    ```

11. Modifiquei o código gerado automaticamente
