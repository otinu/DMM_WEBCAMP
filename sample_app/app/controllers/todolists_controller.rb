class TodolistsController < ApplicationController

  def new
    # Viewへ渡すためのインスタンス変数に空のモデルオブジェクトを生成する。これが、new.htmlファイルのform_withに渡される。
    @list = List.new
  end

  def create
    # 1 . データを新規登録するためのインスタンス作成
    @list = List.new(list_params)
    # 2 . データをデータベースに保存するためのsaveメソッド実行
   if @list.save
    # 3 . 投稿画面へリダイレクト
     flash[:notice] = "successfully!"
     redirect_to todolist_path(@list.id)
   else
     flash[:alert] = "no"
     render action: :new
   end
  end

  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def edit
    @list = List.find(params[:id])
  end

  def update
    @list = List.find(params[:id])
    if @list.update(list_params)
     flash[:notice] = "successfully!"
     redirect_to todolist_path(@list.id)
   else
     flash[:alert] = "no"
     render action: :edit
   end
  end

  def destroy
    list = List.find(params[:id]) # データ（レコード）を１件取得
    list.destroy # データ（レコード）を削除
    redirect_to todolists_path #投稿一覧画面へリダイレクト
  end



    private
    # ストロングパラメータ
    def list_params
      params.require(:list).permit(:title, :body, :image)

    end

 end
