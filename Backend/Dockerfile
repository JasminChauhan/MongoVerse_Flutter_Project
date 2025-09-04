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


# ---------------------------
# Stage 1: Build
# ---------------------------
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /app

# Copy csproj and restore
COPY MongoVerse.csproj ./
RUN if [ ! -f MongoVerse.csproj ]; then echo "MongoVerse.csproj not found" && exit 1; fi
RUN dotnet restore

# Copy everything else
COPY . ./
RUN dotnet publish -c Release -o /app/publish /p:UseAppHost=false

# ---------------------------
# Stage 2: Runtime
# ---------------------------
FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS runtime
WORKDIR /app

# Copy the build output
COPY --from=build /app/publish .

# Use Render's PORT environment variable
ENV ASPNETCORE_URLS=http://+:${PORT}
EXPOSE ${PORT}

# Entry point
ENTRYPOINT ["dotnet", "MongoVerse.dll"]
