# Use the .NET SDK image for building the application
FROM mcr.microsoft.com/dotnet/sdk:9.0-alpine AS build

# Set working directory
WORKDIR /app

# Copy project files
COPY *.csproj ./
RUN dotnet restore

# Copy all remaining project files
COPY . . 

# Build the application in release mode
RUN dotnet publish -c Release -o out

# Create a runtime image based on the .NET runtime
FROM mcr.microsoft.com/dotnet/aspnet:9.0-alpine

# Set working directory
WORKDIR /app

# Copy the published application
COPY --from=build /app/out .

# Expose the application port (adjust if needed)
EXPOSE 80

# Entry point to run the application
ENTRYPOINT ["dotnet", "YourApplication.dll"]