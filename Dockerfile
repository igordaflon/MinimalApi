FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build

WORKDIR /app

COPY ./ ./

RUN dotnet publish -c Release -o out

FROM mcr.microsoft.com/dotnet/aspnet AS root

COPY --from=build /app/out .
EXPOSE 8080

ENTRYPOINT ["dotnet", "MinimalApi.dll"]
