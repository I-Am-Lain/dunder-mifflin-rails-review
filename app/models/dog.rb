class Dog < ApplicationRecord
    has_many :employees

    def full_title
        name + ", a " + breed
    end
end
