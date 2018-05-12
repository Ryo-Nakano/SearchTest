Rails.application.routes.draw do
  get 'lookup' => 'lookup#index'#URL"lookup"が呼ばれたらコントローラー"lookup"の中の"index"メソッドが呼ばれる
  post 'lookup' => 'lookup#index'
end
