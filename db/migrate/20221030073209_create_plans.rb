class CreatePlans < ActiveRecord::Migration[7.0]
  def change
    create_table :plans do |t|
      t.boolean 'api_client', default: false, null: false, comment: 'クイック作成などのAPIを利用できる機能'
      t.boolean 'api_google', default: true, comment: 'Google連携を制御する機能'
      t.boolean 'attachment_file', default: false, null: false, comment: 'メール添付ファイル'
      t.string 'caption', default: 'needs description', null: false, comment: 'キャプション'


      t.string 'name', null: false, comment: 'プランの名前'
      t.integer 'max_contracts', default: 5, null: false, comment: '月に送れる契約書の上限数（0は上限無し）'
      t.integer 'max_templates', default: 3, null: false, comment: '作成できるテンプレートの総数（0は上限無し）'
      t.boolean 'teams', default: false, null: false, comment: 'チーム機能'
      t.boolean 'workflow', default: false, null: false, comment: 'ワークフロー'
      t.boolean 'csv_export', default: false, null: false, comment: 'CSV一括作成・送信'
      t.boolean 'reminder', default: false, null: false, comment: 'リマインダー機能'
      t.boolean 'timestamp', default: false, null: false, comment: 'タイムスタンプ 付与'
      t.boolean 'contracts_export', default: false, null: false, comment: '契約書一覧ダウンロード'
      t.boolean 'my_seal', default: false, null: false, comment: 'マイ印鑑'
      t.boolean 'tags', default: false, null: false, comment: '契約書タグ付'
      t.datetime 'created_at', null: false
      t.datetime 'updated_at', null: false
      t.boolean 'comments', default: false, null: false, comment: 'コメント機能'
      t.boolean 'paper_upload', default: false, null: false, comment: '紙の契約書'
      t.boolean 'folders', default: false, null: false, comment: 'フォルダ作成'
      t.boolean 'ip_address_permission', default: false, null: false, comment: 'IPアドレス制限'
      t.integer 'max_team_members', default: 1, null: false, comment: 'チームに追加できる人数の上限（0は上限無し）'
      t.integer 'application_fee', default: 0, null: false, comment: '初期費用'
      t.integer 'monthly_fee', default: 0, null: false, comment: '月額費用'
      t.boolean 'custom_encryption', default: false, null: false, comment: '専用鍵による暗号化'
      t.boolean 'support', default: false, null: false, comment: 'カスタマーサポート (インターコム、電話など) の利用可否'
      t.boolean 'groups', default: false, null: false, comment: 'グループ機能'
      t.boolean 'document_file', default: false, null: false, comment: '契約書添付ファイル'
      t.boolean 'meta_info', default: false, null: false, comment: '検索項目機能'
      t.integer 'plan_type', default: 0, null: false, comment: '種別'
      t.boolean 'cc_mail', default: true, comment: '契約書送信時にCCを追加できる機能'
      t.boolean 'identity_verification', default: false, null: false, comment: '本人確認書類'
      t.boolean 'forward_signature', default: false, null: false, comment: '相手方の複数承認機能'
      t.boolean 'google_docs_accessibility', default: false, null: false, comment: 'Google Docs にアクセスできる機能'
      t.boolean 'two_factor_authentication', default: false, null: false, comment: '二要素認証'
      t.integer 'max_csv_export_count', default: 100, null: false, comment: '契約書をCSVで一括作成・送信できる最大数'
      t.boolean 'saml_sso', default: false, null: false, comment: 'SAML認証によるシングルサインオンが利用できるか否か'
      t.boolean 'esign', default: false, null: false, comment: '契約書に電子署名を付与'
      t.boolean 'full_text_search', default: false, null: false, comment: '契約書の全文検索'
      t.boolean 'verify_signer_telephone_number', default: false, null: false, comment: '相手方の電話番号確認'
      t.boolean 'user_activity', default: false, null: false, comment: 'アクティビティの表示'
      t.boolean 'document_links', default: false, null: false, comment: '関連契約紐付け機能'
      t.boolean 'kintone', default: false, null: false, comment: 'kintone連携'
      t.integer 'max_paper_upload_count', default: 5, null: false, comment: '月にアップロードできる紙の契約書数の上限'
      t.boolean 'custom_origin', default: false, null: false, comment: '相手方画面・メールのブランドロゴ変更機能'

      t.timestamps
    end
  end
end
