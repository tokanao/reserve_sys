class System < ApplicationRecord
  enumerize :entry_unit, in: {
    day:  1,
    hour: 2
  }
end
