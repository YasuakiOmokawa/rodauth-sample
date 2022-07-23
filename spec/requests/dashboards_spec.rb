require 'rails_helper'

RSpec.describe "/dashboard", type: :request do
  describe "GET /show" do
    context 'ログインしている場合' do
      before do
        account = Account.create!(email: "user@example.com", password: "secret", status: "verified")
        login(account)
        get dashboard_path
      end

      it { is_expected.to have_http_status(:ok) }

      private

      # Manually modify the session into what Rodauth expects.
      def login(account)
        session[:account_id] = account.id
        session[:authenticated_by] = ["password"] # or ["password", "totp"] for MFA
      end
    end

    context 'ログインしてない場合' do
      before { get dashboard_path }

      binding.b
      it { is_expected.to have_http_status(:found) }
      it { is_expected.to redirect_to rodauth.login_path }
    end
  end
end
