class Comment < ApplicationRecord
  #add this if they are referencing
  belongs_to :article
end
