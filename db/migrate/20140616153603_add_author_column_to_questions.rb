class AddAuthorColumnToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :author, :string
  end
end
