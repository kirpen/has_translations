ActiveRecord::Schema.define(:version => 0) do
  create_table :articles, :force => true do |t|
    t.string :title
  end

  create_table :article_translations, :force => true do |t|
    t.references :article, :null => false
    t.string :locale, :null => false, :limit => 2
    t.string :description
    t.text :text
  end
end 