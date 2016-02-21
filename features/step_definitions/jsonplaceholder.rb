Given(/^I search existing posts$/) do
  @response = jsonplaceholder.get('posts')
end

Then(/^I see a response code 200$/) do
 expect(@response.code).to be(200)
end

Given(/^I search post by id specific$/) do
  @response = jsonplaceholder.get('posts/7')
end

Then(/^I see the details of the post$/) do
  expect(@response.body).to include('id', 'title', 'body')
end

Given(/^I search post nonexistent$/) do
  @response = jsonplaceholder.get('posts/999999999')
end

Then(/^I see a response code 404$/) do
 expect(@response.code).to be(404)  
end

Given(/^I create a post$/) do
  @response = jsonplaceholder.post('7', 'title', 'body')
end

Then(/^I see a response code 201$/) do
  expect(@response.code).to be(201)
end

Given(/^I delete a post$/) do
  @response = jsonplaceholder.delete_post(7)
end

Then(/^I see a response code 200 post delete$/) do
  expect(@response.code).to be(200)
end

Given(/^I delete post nonexistent$/) do
   @response = jsonplaceholder.delete_post(999999999)
end

Then(/^I see a response code 404 error delete$/) do
  expect(@response.code).to be(404)
end

Given(/^I update a post$/) do
  @response = jsonplaceholder.put('1', '7', 'title', 'body')
end

Then(/^I see a response code 201 update$/) do
  expect(@response.code).to be(200)
end