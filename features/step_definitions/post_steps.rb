Given /^I am on the new post page$/ do
  visit path_to("the new post page")
end

When /^I create a new post$/ do
  @title = "Papa smurf"
  @body = "With his white beard, red hat and pants, Papa Smurf is the leader of the smurfs and quite a wizard too. He was 542 years old last spring. He is a wise old Smurf, who tries as much as he can to stop the Smurfs acting like crude humans."
  fill_in "title",  :with => @title
  fill_in "body",   :with => @body
  click_button 'Submit'
end

Then /^the post should be listed on the posts page$/ do
  page.should have_content(@title)
  page.should have_content(@body)
end
