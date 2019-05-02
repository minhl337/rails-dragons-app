class User < ApplicationRecord
    has_many :dragons
    accepts_nested_attributes_for :dragons
    
    
    def dragons=(name)
        if name 
            dragon = Dragon.find_or_create_by(name)
            self.dragons << dragon 
        end
    end
    
    def dragons
        self.dragons
    end
    
    
end
