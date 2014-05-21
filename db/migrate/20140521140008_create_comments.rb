class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string    :user_name
      t.string    :email
      t.string    :source
      t.text      :message
      t.integer   :rating_overall
      t.integer   :like_count
      t.references :school, index: true
      t.timestamps
    end
  end
end
