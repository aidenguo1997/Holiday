# Test external Holiday API

	Ver 1.0.0


- #### External Holiday API

    > **Get** /api/v2/AvailableCountries
  
    > **Get** /api/v2/CountryInfo/{countryCode}

    > **GET** /api/v2/LongWeekend/{year}/{countryCode}
  
    > **Get** /api/v2/PublicHolidays/{year}/{countryCode}

    > **Get** /api/v2/NextPublicHolidays/{countryCode}

    > **Get** /api/v2/NextPublicHolidaysWorldwide
  
    GET part of response body for available countries
    ```
    [
      {
        "countryCode": "AD",
        "name": "Andorra"
      },
    ]
    ``` 

    GET part of response body for country information by countryCode
    ```
    {
      "commonName": "Japan",
      "officialName": "Japan",
      "countryCode": "JP",
      "region": "Asia",
      "borders": []
    }
    ``` 

    GET part of response body for long weekend by year and countryCode
    ```
    [
      {
        "startDate": "2022-12-31",
        "endDate": "2023-01-02",
        "dayCount": 3,
        "needBridgeDay": false
      }
    ]
    ``` 

    GET part of response body for public holidays by year and countryCode
    ```
    [
      {
        "date": "2023-01-02",
        "localName": "元日",
        "name": "New Year's Day",
        "countryCode": "JP",
        "fixed": false,
        "global": true,
        "counties": null,
        "launchYear": null,
        "types": [
        "Public"
        ]
      }
    ]
    ``` 

    GET part of response body for next public holidays by countryCode
    ```
    [
      {
        "date": "2023-07-17",
        "localName": "海の日",
        "name": "Marine Day",
        "countryCode": "JP",
        "fixed": false,
        "global": true,
        "counties": null,
        "launchYear": null,
        "types": [
        "Public"
        ]
      }
    ]
    ``` 

    GET part of response body for next public holidays worldwide
    ```
    [
      {
      "date": "2023-05-21",
      "localName": "Día de las Glorias Navales",
      "name": "Navy Day",
      "countryCode": "CL",
      "fixed": true,
      "global": true,
      "counties": null,
      "launchYear": null,
      "types": [
      "Public"
      ]
      }
    ]
    ``` 
