class ReleaseYearValidator < ActiveModel::Validator

    def validate(record)
        if record.release_year && record.release_year > Date.today.year
            record.errors[:release_year] << "Invalid year"
        end
    end

end