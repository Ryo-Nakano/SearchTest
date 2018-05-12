class LookupController < ApplicationController
  def index

      # 初期に呼ばれる
      if params[:search] == nil#:search(textFieldへの入力内容)がnilだった時(そもそも:searchが送信されていない時)
        @search = Private.all#Privateテーブルの中に入っている要素を全部取り出して、viewでも扱える変数@searchに格納
        logger.debug("==================")
        logger.debug("そもそもnilだぜ！")
        logger.debug("==================")

      # 入力欄空の時呼ばれる
    elsif params[:search] == ""#:search(textFieldへの入力内容)が空白の時(nilとはまた別！)
        @search = Private.all
        logger.debug("==================")
        logger.debug("入力内容が空だぜ！")
        logger.debug("==================")

      # 入力欄になんらかの値が入力されている時に呼ばれる
      else
        #部分一致検索
        @search = Private.where("name LIKE ? ",'%' + params[:search] + '%')
        logger.debug("==================")
        logger.debug("部分検索")
        logger.debug("==================")
      end
  end
end
