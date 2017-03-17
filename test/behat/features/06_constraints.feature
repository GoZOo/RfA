@api @javascript @global
Feature: Global Booking Constraints

  Scenario: How soon in advance can a booking start
    Given I am logged in as a user with the "roomify manager" role
    Then I visit "user"
    And I click on the element with css selector ".roomify-sidebar-menu-toggle"
    And I wait 1 seconds
    And I click on the element with css selector ".pane-menu-roomify-dashboard-menu .bookings"
    And I click on the text "Global Booking Settings"
    Then I select "0" from "roomify_accommodation_booking_days_in_advance"
    And I press "Save configuration"
    Given I visit the search page for "now" to "+2 day"
    Then I should not see "Unfortunately no property is available for these dates, try others if possible."
    Given I visit the search page for "-1 day" to "+2 day"
    Then I should see "Unfortunately no property is available for these dates, try others if possible."

    Then I visit "user"
    And I click on the element with css selector ".roomify-sidebar-menu-toggle"
    And I wait 1 seconds
    And I click on the element with css selector ".pane-menu-roomify-dashboard-menu .bookings"
    And I click on the text "Global Booking Settings"
    Then I select "1" from "roomify_accommodation_booking_days_in_advance"
    And I press "Save configuration"
    Given I visit the search page for "+1 day" to "+3 day"
    Then I should not see "Unfortunately no property is available for these dates, try others if possible."
    Given I visit the search page for "now" to "+3 day"
    Then I should see "Unfortunately no property is available for these dates, try others if possible."

    Then I visit "user"
    And I click on the element with css selector ".roomify-sidebar-menu-toggle"
    And I wait 1 seconds
    And I click on the element with css selector ".pane-menu-roomify-dashboard-menu .bookings"
    And I click on the text "Global Booking Settings"
    Then I select "2" from "roomify_accommodation_booking_days_in_advance"
    And I press "Save configuration"
    Given I visit the search page for "+2 day" to "+4 day"
    Then I should not see "Unfortunately no property is available for these dates, try others if possible."
    Given I visit the search page for "+1 day" to "+4 day"
    Then I should see "Unfortunately no property is available for these dates, try others if possible."

    Then I visit "user"
    And I click on the element with css selector ".roomify-sidebar-menu-toggle"
    And I wait 1 seconds
    And I click on the element with css selector ".pane-menu-roomify-dashboard-menu .bookings"
    And I click on the text "Global Booking Settings"
    Then I select "7" from "roomify_accommodation_booking_days_in_advance"
    And I press "Save configuration"
    Given I visit the search page for "+7 day" to "+9 day"
    Then I should not see "Unfortunately no property is available for these dates, try others if possible."
    Given I visit the search page for "+6 day" to "+9 day"
    Then I should see "Unfortunately no property is available for these dates, try others if possible."

    Then I visit "user"
    And I click on the element with css selector ".roomify-sidebar-menu-toggle"
    And I wait 1 seconds
    And I click on the element with css selector ".pane-menu-roomify-dashboard-menu .bookings"
    And I click on the text "Global Booking Settings"
    Then I select "1" from "roomify_accommodation_booking_days_in_advance"
    And I press "Save configuration"

  Scenario: How far in advance can a booking be made
    Given I am logged in as a user with the "roomify manager" role
    Then I visit "user"
    And I click on the element with css selector ".roomify-sidebar-menu-toggle"
    And I wait 1 seconds
    And I click on the element with css selector ".pane-menu-roomify-dashboard-menu .bookings"
    And I click on the text "Global Booking Settings"
    Then I fill in "roomify_accommodation_booking_future_limit[value]" with "1"
    And I select "31104000" from "roomify_accommodation_booking_future_limit[multiplier]"
    And I press "Save configuration"
    Given I visit the search page for "+31104000 second -2 day" to "+31104000 second"
    Then I should not see "Unfortunately no property is available for these dates, try others if possible."
    Given I visit the search page for "+31104000 second -2 day" to "+31104000 second +1 day"
    Then I should see "Unfortunately no property is available for these dates, try others if possible."

    Then I visit "user"
    And I click on the element with css selector ".roomify-sidebar-menu-toggle"
    And I wait 1 seconds
    And I click on the element with css selector ".pane-menu-roomify-dashboard-menu .bookings"
    And I click on the text "Global Booking Settings"
    Then I fill in "roomify_accommodation_booking_future_limit[value]" with "3"
    And I select "2592000" from "roomify_accommodation_booking_future_limit[multiplier]"
    And I press "Save configuration"
    Given I visit the search page for "+7776000 second -2 day" to "+7776000 second"
    Then I should not see "Unfortunately no property is available for these dates, try others if possible."
    Given I visit the search page for "+7776000 second -2 day" to "+7776000 second +1 day"
    Then I should see "Unfortunately no property is available for these dates, try others if possible."

    Then I visit "user"
    And I click on the element with css selector ".roomify-sidebar-menu-toggle"
    And I wait 1 seconds
    And I click on the element with css selector ".pane-menu-roomify-dashboard-menu .bookings"
    And I click on the text "Global Booking Settings"
    Then I fill in "roomify_accommodation_booking_future_limit[value]" with "12"
    And I select "86400" from "roomify_accommodation_booking_future_limit[multiplier]"
    And I press "Save configuration"
    Given I visit the search page for "+9 day" to "+12 day"
    Then I should not see "Unfortunately no property is available for these dates, try others if possible."
    Given I visit the search page for "+9 day" to "+13 day"
    Then I should see "Unfortunately no property is available for these dates, try others if possible."

    Then I visit "user"
    And I click on the element with css selector ".roomify-sidebar-menu-toggle"
    And I wait 1 seconds
    And I click on the element with css selector ".pane-menu-roomify-dashboard-menu .bookings"
    And I click on the text "Global Booking Settings"
    Then I fill in "roomify_accommodation_booking_future_limit[value]" with "1"
    And I select "31104000" from "roomify_accommodation_booking_future_limit[multiplier]"
    And I press "Save configuration"
