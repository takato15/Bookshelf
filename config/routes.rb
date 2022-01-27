Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root to: "homes#top"
  
  resources :hokkaidoes, except: [:update, :destroy, :edit]
  resources :tohokus, except: [:update, :destroy, :edit]
  resources :kantoes, except: [:update, :destroy, :edit]
  resources :chubus, except: [:update, :destroy, :edit]
  resources :kinkis, except: [:update, :destroy, :edit]
  resources :chugokus, except: [:update, :destroy, :edit]
  resources :shikokus, except: [:update, :destroy, :edit]
  resources :kyusyue, except: [:update, :destroy, :edit]
  resources :okinawas, except: [:update, :destroy, :edit]
  
end
