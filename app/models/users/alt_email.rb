class AltEmail < ActiveRecord::Base
    validates :alt_email , uniqueness: true
    belongs_to :user
end