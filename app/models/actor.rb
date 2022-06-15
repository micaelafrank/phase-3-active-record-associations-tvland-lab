class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters

    def list_roles
        self.characters.map do |character|
            self.character.name
        end
    end
end