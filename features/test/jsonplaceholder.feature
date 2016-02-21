Feature: API JSONplaceholder

	Scenario: Search posts      
		Given I search existing posts
		Then I see a response code 200

	Scenario: Search post by id   
		Given I search post by id specific
		Then I see the details of the post

	Scenario: Search post nonexistent    
		Given I search post nonexistent 
		Then I see a response code 404

  Scenario: Create post
		Given I create a post
		Then I see a response code 201

	Scenario: Delete post      
		Given I delete a post
		Then I see a response code 200 post delete

	Scenario: Delete post nonexistent
		Given I delete post nonexistent
		Then I see a response code 404 error delete

	Scenario: Update post
		Given I update a post
		Then I see a response code 201 update