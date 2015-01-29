require 'spec_helper'

describe "Static pages" do

  # letは引数のシンボルと同名の変数に後続のブロックの評価値を格納するRSpecの関数
  # let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  # テスト対象となる主題を指定することでpage変数の内容が評価対象となる
  subject { page }

  describe "Home page" do
    # 各テストの前にroot_pathへのリクエストを実行
    before { visit root_path }

    it { should have_content('Sample App') }
    it { should have_title(full_title('')) }
    it { should_not have_title('| Home') }
  end

  describe "Help page" do
    before { visit help_path }

    it { should have_content('Help') }
    it { should have_title(full_title('Help')) }
  end

  describe "About page" do
    before { visit about_path }

    it { should have_content('About Us') }
    it { should have_title(full_title('About Us')) }
  end

  describe "Contact page" do
    before { visit contact_path }

    it { should have_content('Contact')}
    it { should have_title(full_title('Contact')) }
  end
end