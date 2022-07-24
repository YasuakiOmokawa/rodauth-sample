require 'rails_helper'

RSpec.describe DashboardsController, type: :request do
  describe "GET /show" do
    context 'ログインしている場合' do
      before do
        get dashboard_path
        account = Account.create!(email: "user@example.com", password: "secret", status: "verified")
        login(account)
        get dashboard_path
      end

      it 'ダッシュボードへ遷移する' do
        expect(response).to have_http_status(:ok)
      end

      private

      def login(account)
        binding.b
        rodauth.scope.session[:account_id] = account.id
        rodauth.scope.session[:authenticated_by] = ["password"] # or ["password", "totp"] for MFA
      end

      def logout
        session.clear
      end
    end

    context 'ログインしてない場合' do
      before { get dashboard_path }

      it 'ログイン画面へリダイレクト' do
        expect(response).to have_http_status(:found)
        expect(response).to redirect_to rodauth.login_path
      end
    end
  end
end
