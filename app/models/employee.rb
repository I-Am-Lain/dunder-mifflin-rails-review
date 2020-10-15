class Employee < ApplicationRecord
    belongs_to :dog
    validates :alias, uniqueness: true
    validates :title, uniqueness: true

    def name
        first_name + " " + last_name
    end

    def full_title
        name + ", the " + title
    end
end
