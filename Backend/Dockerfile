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

# Build stage
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /src

# Copy only relevant project files first for caching restore
COPY MongoVerse.csproj ./

RUN dotnet restore "MongoVerse.csproj"

# Copy the rest of the source files
COPY . ./

# Build and publish
RUN dotnet publish "MongoVerse.csproj" -c Release -o /app/publish /p:UseAppHost=false

# Final stage: runtime
FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS final
WORKDIR /app

COPY --from=build /app/publish .

EXPOSE 8080
ENTRYPOINT ["dotnet", "MongoVerse.dll"]
