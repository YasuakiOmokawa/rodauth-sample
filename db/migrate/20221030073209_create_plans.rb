class CreatePlans < ActiveRecord::Migration[7.0]
  def change
    create_table :plans do |t|
      t.string 'name', null: false, comment: 'プランの名前'
      t.string 'caption', default: 'needs description', null: false, comment: 'キャプション'
      t.boolean 'api_client', default: false, null: false, comment: 'Public APIを利用できる機能'
      t.integer 'max_paper_upload_count', default: 5, null: false, comment: '月にアップロードできる紙の文書数の上限'
      t.boolean 'max_paper_upload_count_unlimited', default: false, null: false, comment: '無制限に紙の文書のアップロード可能'
      t.bigint 'master_plan_id', null: false

      t.timestamps
    end
  end
end
