class User < ApplicationRecord
    has_many :children
end

# User.find(:id).children

def find(*args)
    return super if block_given?
    @association.find(*args)
  end