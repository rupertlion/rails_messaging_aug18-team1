Given("the following registered users exist") do |table|
    table.hashes.each do |user|
        FactoryBot.create(:user, user)
    end
end

Given("I am logged in as {string}") do |name|
    user = User.find_by(name: name)
    login_as(user, scope: :user) 
end

And("I select the option {string}") do |option|
    select option, from: "conversation_recipients"
end

Then("I should see the sent messages increase by {string}") do |increment|
    # user = .find_by(name: name)
    # expect { find('#message_content').send_keys(:enter) }.to \ change{current_user.messages.count}.by(1)
end