Feature: A client requests an Id Token with the Id Token Response Type

  Scenario: A client sends a authorization requests with the Id Token Response Type and the Resource Owner accepts it.
    Given The user "john.1" is logged in and fully authenticated
    And A client sends a authorization requests with the Id Token Response Type
    When the Resource Owner accepts the authorization request
    Then the client should be redirected
    And the redirection Uri starts with "https://example.com/redirection/callback"
    And the redirection Uri fragment should contain a parameter "id_token"

  Scenario: A client sends a authorization requests with the Id Token Response Type and the Resource Owner rejects it.
    Given The user "john.1" is logged in and fully authenticated
    And A client sends a authorization requests with the Id Token Response Type
    When the Resource Owner rejects the authorization request
    Then the client should be redirected
    And the redirection Uri starts with "https://example.com/redirection/callback"
    And the redirection Uri fragment should contain a parameter "error" with value "access_denied"
    And the redirection Uri fragment should contain a parameter "error_description" with value "The resource owner denied access to your client."
