class TitleValidator < ActiveModel::Validator

    def validate(record)
        songs = Song.all.filter do |song|
            song.release_year == record.release_year
        end
        songs.each do |song|
            if song.title == record.title && song.artist_name == record.artist_name
                record.errors[:title] << "You already have that song."
            end
        end
        return true
    end

end