FactoryGirl.define do
	factory :customer do
		name "Example"
		email "Example@example.com"
		password "password"
		password_confirmation "password"
	end

	factory :owner do
		email "Example2@example.com"
		password "password"
		password_confirmation "password"
	end

	factory :restaurant do
		name "The Shack"
		address "123 makebelieve street"
		neighbourhood "Downtown Toronto"
		price_range 3
		summary "Cool little place dt"
	end

	factory :menu_item do
		name "Spaghetti"
		price_in_cents 1000
		description "thats a tastey meat ball"
	end

	factory :time_slot do
		time Time.now
	end
end