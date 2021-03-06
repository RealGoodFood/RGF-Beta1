# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

FoodCategory.create(:name => 'Main')
FoodCategory.create(:name => 'Side')
FoodCategory.create(:name => 'Dessert')
FoodCategory.create(:name => 'Sauce/Dressing/Curry')
FoodCategory.create(:name => 'Fresh Ingredients')

FoodRestriction.create(:name=>'Organic')
FoodRestriction.create(:name=>'Vegeterian')
FoodRestriction.create(:name=>'Vegan')
FoodRestriction.create(:name=>'Dairy-free')
FoodRestriction.create(:name=>'Gluten-free')
FoodRestriction.create(:name=>'Peanut Safe')

Value.create(:name=>'Local')
Value.create(:name=>'Homegrown')
Value.create(:name=>'Farmers Market')
Value.create(:name=>'CSA')
Value.create(:name=>'Conventional')
Value.create(:name=>'Grass Fed')
Value.create(:name=>'Free Range')

EatByDate.create(:name=>'shelf stable')
EatByDate.create(:name=>'Freezer')
EatByDate.create(:name=>'Fridge')
EatByDate.create(:name=>'Room Temperature')

EventType.create(:name=>"potluck")
EventType.create(:name=>"swap")
EventType.create(:name=>"Dinner Party")
EventType.create(:name=>"Collaborative Cooking Event")


Page.create(:title =>"How it Works",
            :body => "A team comprises a group of people or animals linked in a common purpose. Teams are especially appropriate for conducting tasks that are high in complexity and have many interdependent subtasks.

A group in itself does not necessarily constitute a team. Teams normally have members with complementary skills and generate synergy through a coordinated effort which allows each member to maximize his/her strengths and minimize his/her weaknesses. Team members need to learn how to help one another, help other team members realize their true potential, and create an environment that allows everyone to go beyond their limitations.")

Page.create(:title =>"Team",
            :body => "A team comprises a group of people or animals linked in a common purpose. Teams are especially appropriate for conducting tasks that are high in complexity and have many interdependent subtasks.

A group in itself does not necessarily constitute a team. Teams normally have members with complementary skills and generate synergy through a coordinated effort which allows each member to maximize his/her strengths and minimize his/her weaknesses. Team members need to learn how to help one another, help other team members realize their true potential, and create an environment that allows everyone to go beyond their limitations.")

Page.create(:title =>"Privacy Policy",
            :body => "Privacy policy is a statement or a legal document (privacy law) that discloses some or all of the ways a party gathers, uses, discloses and manages a customer or client's data. Personal information can be anything that can be used to identify an individual, not limited to but including; name, address, date of birth, marital status, contact information, ID issue and expiry date, financial records, credit information, medical history, where you travel, and intentions to acquire goods and services. [1] In the case of a business it is often a statement that declares a party's policy on how it collects, stores, and releases personal information it collects. It informs the client what specific information is collected, and whether it is kept confidential, shared with partners, or sold to other firms or enterprises.")

Page.create(:title =>"Terms And Conditions",
            :body => "A contractual term is Each term gives rise to a contractual obligation, breach of which can give rise to litigation. Not all terms are stated expressly and some terms carry less legal gravity as they are peripheral to the objectives of the contract.
Conditions are terms that go to the very root of a contract. Breach of these terms repudiates the contract, allowing the other party to discharge the contract. A warranty[2] is less imperative than a condition, so the contract will survive a breach. Breach of either a condition or a warranty will give rise to damages.")
