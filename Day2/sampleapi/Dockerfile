# Use the .NET SDK image for building the application
FROM mcr.microsoft.com/dotnet/sdk:9.0-alpine AS build

# Set working directory
WORKDIR /app

# Copy all remaining project files
COPY . . 

# Restore dependencies
RUN dotnet restore

# Build the application in release mode
RUN dotnet publish -c Release -o out

# Create a runtime image based on the .NET runtime
FROM mcr.microsoft.com/dotnet/aspnet:9.0-alpine

# Set working directory
WORKDIR /app

# Install some useful toolss
RUN apk update && apk add iputils-ping bind-tools curl

# Set the user
USER app

# Copy the published application
COPY --from=build /app/out .

# Expose the application port (adjust if needed)
EXPOSE 8080

# Entry point to run the application
ENTRYPOINT ["dotnet", "sampleapi.dll"]