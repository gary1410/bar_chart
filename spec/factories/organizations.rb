FactoryGirl.define do
		factory :organization do
			name 'Cascade Middle School'
			ben  '114619'
			phones    { [FactoryGirl.build(:phone1), FactoryGirl.build(:phone2)] }

	  factory :phone1, :class => :phone do
	    bandwidth   1000
	    measures    "t"
	    cost				90
	  end

	  factory :phone2, :class => :phone do
	    bandwidth   100
	    measures    "k"
	    cost				50
	  end
	end
end