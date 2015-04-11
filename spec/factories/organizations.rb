FactoryGirl.define do
		factory :organization do
			name 'Cascade Middle School'
			ben  '114619'
			purchases    { [FactoryGirl.build(:purchase), FactoryGirl.build(:purchase)] }
		end

	  factory :purchase, :class => :purchase do
	    bandwidth   1000
	    measure    "t"
	    cost				90
	  end

end