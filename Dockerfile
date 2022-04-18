FROM mcr.microsoft.com/dotnet/aspnet:6.0 AS base
WORKDIR /app
EXPOSE 80
EXPOSE 443

FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build
WORKDIR /src
COPY ["aspnet-todo-app.csproj", "aspnet-todo-app/"]
RUN dotnet restore "aspnet-todo-app/aspnet-todo-app.csproj"

WORKDIR "/src/aspnet-todo-app"
COPY . .
RUN dotnet build "aspnet-todo-app.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "aspnet-todo-app.csproj" -c Release -o /app/publish

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "aspnet-todo-app.dll"]
