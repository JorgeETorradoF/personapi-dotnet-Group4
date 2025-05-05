# Etapa 1: Build
FROM mcr.microsoft.com/dotnet/sdk:7.0 AS build
WORKDIR /src
COPY ["personapi-dotnet.csproj", "./"]
RUN dotnet restore "./personapi-dotnet.csproj"
COPY . .
RUN dotnet publish "personapi-dotnet.csproj" -c Release -o /app/publish

# Etapa 2: Runtime
FROM mcr.microsoft.com/dotnet/aspnet:7.0
WORKDIR /app
COPY --from=build /app/publish .
EXPOSE 80
ENTRYPOINT ["dotnet", "personapi-dotnet.dll"]
