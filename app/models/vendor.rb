class Vendor < ApplicationRecord
  #CHANGED
  belongs_to :user
  #If you're having issues saving with nil data, then use this
  #belongs_to :user, optional: true
end
