# Use the official .NET SDK image for both build and run stages
FROM mcr.microsoft.com/dotnet/sdk:9.0 AS build

# Set the working directory
WORKDIR /app

# Copy the project file and restore dependencies
COPY *.csproj ./
RUN dotnet restore

# Copy the rest of the application files
COPY . ./

# Build the application
RUN dotnet build

# Publish the application (This step is optional in your case, we won't use the .dll directly)
RUN dotnet publish -c Release -o /app/out

# Use the same SDK image for running the app
FROM mcr.microsoft.com/dotnet/sdk:9.0

# Set the working directory
WORKDIR /app

# Copy the application files from the build stage
COPY --from=build /app ./

# Expose the application port
EXPOSE 80

# Run the application using dotnet run
ENTRYPOINT ["dotnet", "run"]
