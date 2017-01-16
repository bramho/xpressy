class CreateSocialMediaModules < ActiveRecord::Migration[5.0]
  def change
    create_table :social_media_modules do |t|
      t.string :social_media_type
      t.string :social_media_value
      t.belongs_to :vacancy, foreign_key: true

      t.timestamps
    end
  end
end
