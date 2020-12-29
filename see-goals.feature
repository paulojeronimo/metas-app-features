Feature: See the wellness goals defined in the app by its users

	As a person who wants a better life quality
	I want to know what goals people define for their wellness

	Scenario: Wellness goals should be exemplified in a list
		Given I open the app
		When I am on the main page
		Then I should see at least 3 sample goals listed
		And I should not see more than 10 sample goals if I am not logged in to the app
		But I should see an "infinite scrollable list" of goals if I am logged in to the app

	Scenario: Listed goals on the main page should also present the number of all users who have that goal
		Given I open the app
		When I am on the main page
		Then Each goal listed should have a counter of users who have it

	Scenario: See public goals defined by a user
		Given I know the username of one user
		When I access the user page through its username
		And the user has public goals
		Then I can see the list of goals published by that user
		But I need to be logged in to the app to see more than a configured number of goals
