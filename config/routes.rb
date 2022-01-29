Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root to: "homes#top"
  get "prefectures" => "homes#index"
  
  resources :hokkaidoes, except: [:update, :destroy, :edit, :show]
  resources :tohokus, except: [:update, :destroy, :edit, :show]
  resources :kantoes, except: [:update, :destroy, :edit, :show]
  resources :chubus, except: [:update, :destroy, :edit, :show]
  resources :kinkis, except: [:update, :destroy, :edit, :show]
  resources :chugokus, except: [:update, :destroy, :edit, :show]
  resources :shikokus, except: [:update, :destroy, :edit, :show]
  resources :kyusyus, except: [:update, :destroy, :edit, :show]
  resources :okinawas, except: [:update, :destroy, :edit]
  
end
