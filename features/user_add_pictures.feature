Feature: As a user
  I want to be able to add food pictures
  So that my friends can see them

    @wip
    Scenario: User uploads a picture
      Given I have signed in with "theo@jivatechnology.com/foo"
      When I go to the new food page
      And I attach "sushi.jpg" image to the "food_picture" file field
      And I press "Upload"
      Then I should see "Thanks!"
      And I should be on the home page
    
    @wip
    Scenario: Guest tries to upload a picture
      Given I am on the home page
      When I go to the new food page
      Then I should be on the sign in page
    
    @wip
    Scenario: Guest visits site
      Given the image "sushi.jpg" has been uploaded
      When I go to the home page
      Then I should see the image "sushi"