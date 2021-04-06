require 'rails_helper'

describe "投稿のテスト" do
 let!(:list) { create(:list,title:'hoge',body:'body') }
    describe "トップ画面のテスト" do
      before do
       visit top_path
      end
      context "表示の確認" do
          it "トップ画面(top_path)に「ここはTopページです」が表示されているか" do
　　　　　 expect(page).to have_content "ここはTopページです"
          end
          it "top_pathが"/top"であるか" do
         　expect(current_path).to eq("/top")
          end
       end #表示の確認
    end #トップ画面のテスト

    describe "投稿画面のテスト" do
        before do
            visit "todolists/new"
        end
        context "表示の確認" do
            it "todolists_new_pathが”/todolists/new”であるか" do
              expect(current_path).to eq(todolists_new_path)
            end
            it "投稿ボタンが表示されているか" do
              expect(page).to have_button "投稿"
            end
        end #表示の確認
        context "投稿処理のテスト" do
            it "投稿後のリダイレクト先は正しいか" do
              #間違い ⇒ expect(page).to have_current_path ("todolists_create_path")
              fill_in 'list[title]', with: Faker::Lorem.characters(number:5)
              fill_in 'list[body]', with: Faker::Lorem.characters(number:20)
              click_button '投稿'
              expect(page).to have_current_path todolist_path(List.last)
            end
        end #投稿処理のテスト
    end #投稿画面のテスト

    describe "詳細画面のテスト" do
      before do
        visit "todolist_path(list)" #ここではlistを引数に渡す
      end
      context "表示のテスト" do
        it "削除リンクが存在しているか" do
         expect(page).to have_link "削除"　#「リンク付きの"削除"はあるか」をテストしている。ここではパスの吟味は不要
        end
        it "編集リンクが存在しているか" do
         expect(page).to have_link "編集"
        end
      end #表示のテスト
      context "リンクの遷移先の確認" do
        it "編集の遷移先は編集画面か" do
          # 間違い ⇒ click_button "編集"
          # 間違い ⇒ expect(current_path).to eq(edit_todolist_path)
          edit_link = find_all('a')[0] #おそらく、aタグのついたところ全てを持ってきて、配列の先頭だけをedit_linkに格納している。
          edit_link.click              #実際の流れでは、編集画面で何もせずにただ編集ボタンをクリックしているだけ
          expect(current_path).to eq('/todolists/' + list.id.to_s + '/edit') #URLは文字列のため、list.idは文字型に変換
        end
      end #リンクの遷移先の確認
      context "list削除のテスト" do
        it  "listの削除" do
          expect{ list.destroy }.to change{ List.count}.by(-1)
        end
      end #list削除のテスト
    end #詳細画面のテスト
    
    describe '編集画面のテスト' do
    before do
      visit edit_todolist_path(list)
    end
    context '表示の確認' do
      it '編集前のタイトルと本文がフォームに表示(セット)されている' do
        expect(page).to have_field 'list[title]', with: list.title
        expect(page).to have_field 'list[body]', with: list.body
      end
      it '保存ボタンが表示される' do
        expect(page).to have_button '保存'
      end
    end
    context '更新処理に関するテスト' do
      it '更新後のリダイレクト先は正しいか' do
        fill_in 'list[title]', with: Faker::Lorem.characters(number:5)
        fill_in 'list[body]', with: Faker::Lorem.characters(number:20)
        click_button '保存'
        expect(page).to have_current_path todolist_path(list)
      end
    end
  end
    
 end #3行目の"投稿のテスト"