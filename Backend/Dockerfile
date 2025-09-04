# FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS base
# WORKDIR /app
# EXPOSE 8080

# FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
# WORKDIR /src
# # COPY ["MongoVerse.csproj", "./"]
# COPY Backend/MongoVerse.csproj ./Backend
# WORKDIR /Backend
# RUN dotnet restore "MongoVerse.csproj"
# COPY . .
# RUN dotnet build "MongoVerse.csproj" -c Release -o /app/build

# FROM build AS publish
# RUN dotnet publish "MongoVerse.csproj" -c Release -o /app/publish /p:UseAppHost=false

# FROM base AS final
# WORKDIR /app
# COPY --from=publish /app/publish .
# ENTRYPOINT ["dotnet", "MongoVerse.dll"]

# CHANGES
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /src

COPY Backend/MongoVerse.csproj ./Backend/
WORKDIR /src/Backend
RUN dotnet restore "MongoVerse.csproj"

COPY Backend/. .

RUN dotnet publish "MongoVerse.csproj" -c Release -o /app

FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS runtime
WORKDIR /app
COPY --from=build /app ./

ENV ASPNETCORE_URLS=http://+:$PORT
ENTRYPOINT ["dotnet","MongoVerse.csproj"]
