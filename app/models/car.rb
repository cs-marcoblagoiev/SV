#@Car
class Car < ActiveRecord::Base
    has_many :ratings
    mount_uploader :pic, ImageUploader
    before_save :rec_method

    def rec_method
        pic.recreate_versions!
    end

    def average_rating
        ratings.sum(:score) / ratings.size unless ratings.empty?
    end
end
