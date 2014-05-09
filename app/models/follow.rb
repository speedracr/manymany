class Follow < ActiveRecord::Base
	belongs_to	:target, class_name: "User"
	belongs_to	:owner, class_name: "User"
end