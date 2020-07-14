class Song < ApplicationRecord
    include ActiveModel::Validations
    validates :title, presence: true
    validates :artist_name, presence: true
    validates :release_year, if: :released, presence: true
    validates_with TitleValidator
    validates_with ReleaseYearValidator
end
