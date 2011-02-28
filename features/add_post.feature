Feature: Adding content
  In order to be able to demonstrate different datamapper usage examples,
  As a user
  I want to be able to add new posts

@wip
Scenario: Adding a new post
  Given I am on the new post page
  When I create a new post
  Then the post should be listed on the posts page
