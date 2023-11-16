Feature: Get Japan's holidays in 2023.

  Background:
    * def testVersion = 0
    * def countryCode = "jp"
    * def year = "2023"

  Scenario: Get all available countries.
    Given   url "https://date.nager.at/"
    And     path "api/", testVersion, "/AvailableCountries"
    And     header Content-Type = "application/json"
    When    method get
    Then    status 200

  Scenario: Get holiday information by countryCode.
    Given   url "https://date.nager.at/"
    And     path "api/", testVersion, "/CountryInfo/", countryCode
    And     header Content-Type = "application/json"
    When    method get
    Then    status 200

  Scenario: Get long weekend by year and countryCode.
    Given   url "https://date.nager.at/"
    And     path "api/", testVersion, "/LongWeekend/", year, countryCode
    And     header Content-Type = "application/json"
    When    method get
    Then    status 200

  Scenario: Get public holidays.
    Given   url "https://date.nager.at/"
    And     path "api/", testVersion, "/PublicHolidays/", year, countryCode
    And     header Content-Type = "application/json"
    When    method get
    Then    status 200

  Scenario: Get next public holidays.
    Given   url "https://date.nager.at/"
    And     path "api/", testVersion, "/NextPublicHolidays/", countryCode
    And     header Content-Type = "application/json"
    When    method get
    Then    status 200

  Scenario: Get next public holidays worldwide.
    Given   url "https://date.nager.at/"
    And     path "api/", testVersion, "/NextPublicHolidaysWorldwide"
    And     header Content-Type = "application/json"
    When    method get
    Then    status 200

