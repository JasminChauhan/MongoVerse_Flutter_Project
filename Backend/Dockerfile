# ---------------------------
# Stage 1: Build
# ---------------------------
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /app

# Copy csproj and restore as distinct layers
COPY *.csproj ./
RUN dotnet restore

# Copy everything else and build
COPY . ./
RUN dotnet publish -c Release -o /out

# ---------------------------
# Stage 2: Runtime
# ---------------------------
FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS runtime
WORKDIR /app

# Copy the build output
COPY --from=build /out .

# Expose the port Render uses
ENV ASPNETCORE_URLS=http://+:${PORT}
EXPOSE ${PORT}

# Entry point
ENTRYPOINT ["dotnet", "MongoVerse.dll"]
