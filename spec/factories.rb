FactoryGirl.define do
  factory :user do
    password "Gogo1234"
    password_confirmation "Gogo1234"
    sequence :username do |n| 
      "User #{n}" 
    end
    
    sequence :email do |n| 
      "#{n}@example.com"
    end
  end

  factory :list do
    sequence :user_id do |n| 
      n
    end

    sequence :title do |n| 
      "Title #{n}" 
    end
  end

  factory :item do
    itemname "Go Shopping"
    sequence :list_id do |n| 
      n
    end
  end
end
