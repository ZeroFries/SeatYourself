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
		address "123 makebelieve street"
		neighbourhood "Downtown Toronto"
		price_range 3
		summary "Cool little place dt"
	end
end