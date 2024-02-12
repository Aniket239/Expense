class Personnel < ApplicationRecord
    has_many :expenses
    def self.create_new_personnel(par)
        personnel = self.new
        personnel.name = par[:name]
        personnel.email = par[:email]
        personnel.password = par[:password]
        personnel.save
    end
end
