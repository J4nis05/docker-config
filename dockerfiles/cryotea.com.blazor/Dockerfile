# Use the official .NET 8 SDK image as a parent image.
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build-env

# Set the working directory.
WORKDIR /app

# Copy the file from your host to your current location.
COPY *.csproj ./

# Run dotnet restore to restore dependencies.
RUN dotnet restore

# Copy the rest of your app's source code from your host to your image filesystem.
COPY . ./

# Publish the application.
RUN dotnet publish -c Release -o out

# Use ASP.NET Core runtime image as base image for the runtime container
FROM mcr.microsoft.com/dotnet/aspnet:8.0

# Set the working directory.
WORKDIR /app

# Copy the build output from the build image.
COPY --from=build-env /app/out .

# Expose port 80 for the application.
EXPOSE 80

# Run the app on container startup.
ENTRYPOINT ["dotnet", "YourAppName.dll"]
