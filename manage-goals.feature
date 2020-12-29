Feature: Define and manage my own wellness goals and their visibility

	As a person who wants a better life quality
	I want to define and manage my own wellness goals

	Background:
		Given I am already logged in to the app

	Scenario: Goals can be copied to, added, or removed from my list of goals
		Given I am on my home page
		When I am seeing the space where I can manage my list of goals
		Then I can execute an "action" in this list
		Examples: 
			| action |
			| "Copy goals" seen in on the main page |
			| Add a new goal |
			| Remove one or more goal |

	Scenario: I can select some of my goals and turn them public
		Given I am on my home page
		When I am seeing my list of goals
		Then I can select some of my goals to turn their visibility to public
