class Item < ApplicationRecord
    has_many :inventory_levels

    def total_value
        if self.inventory_levels.count > 0
            self.inventory_level.available * self.cost
        end
    end

end
