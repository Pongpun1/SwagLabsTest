***Settings***
Library     SeleniumLibrary
Resource    CommonKeywords.robot

***Keywords***
user add a product to cart
    CommonKeywords.Wait until element is ready then click element  name=add-to-cart-sauce-labs-fleece-jacket
    CommonKeywords.Wait until element is ready then click element  name=add-to-cart-sauce-labs-bike-light
    CommonKeywords.Wait until element is ready then click element  xpath=//a[@data-test="shopping-cart-link"]

swag labs should display checkout page and display message as "${expected_message}"
    CommonKeywords.Wait until page contains element then verify text    ${expected_message}

user checkout the product with ${firstname} ${lastname} and ${postal}
    CommonKeywords.Wait until element is ready then click element  name=checkout
    CommonKeywords.Wait until element is ready then input text      name=firstName      ${firstname}
    CommonKeywords.Wait until element is ready then input text      name=lastName      ${lastname}
    CommonKeywords.Wait until element is ready then input text      name=postalCode      ${postal}
    CommonKeywords.Wait until element is ready then click element  name=continue
    CommonKeywords.Wait until element is ready then click element  name=finish

user checkout the product without entering information
    CommonKeywords.Wait until element is ready then click element  name=checkout
    CommonKeywords.Wait until element is ready then click element  name=continue

swag labs should display message as "${expected_message}"
    CommonKeywords.Wait until page contains element then verify text    ${expected_message}

user go back to home page
    Sleep    1s
    CommonKeywords.Wait until element is ready then click element  name=back-to-products
