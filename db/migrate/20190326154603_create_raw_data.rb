class CreateRawData < ActiveRecord::Migration[5.2]
  def change
    create_table :raw_data do |t|
      t.string :id_raw
      t.datetime :visit_time
      t.string :profile
      t.string :picture
      t.string :degree
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :from
      t.string :title
      t.string :company
      t.string :company_profile
      t.string :company_website
      t.string :personal_website
      t.string :email
      t.string :phone
      t.string :im
      t.string :twitter
      t.string :location
      t.string :industry
      t.string :my_tags
      t.string :sales_profile
      t.string :summary
      t.string :my_notes

      t.timestamps
    end
  end
end
