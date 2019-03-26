Rails.application.routes.draw do
  devise_for :users,
             path: '',
             path_names: {
               sign_in: 'login',
               sign_out: 'logout',
               registration: 'signup'
             },
             controllers: {
               sessions: 'sessions',
               registrations: 'registrations'
             }
  resources :users, except: [:show, :edit, :index]
  resources :boards, except: [:show, :edit, :index, :destroy]
  resources :cards, except: [:show, :edit, :index]
  resources :sessions, except: [:show, :edit, :index]

  mount ActionCable.server => '/cable'
  root to: 'home#index'
end
