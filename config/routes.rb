Rails.application.routes.draw do



  

  # resources :campaigns
  resources :users_reports
  get 'home/index'

  mount Attachinary::Engine => "/attachinary"

  scope module: 'admin', path: 'admin' do
  	resources :dashboard, :administradores,
  			  :categories, :interests,
  			  :emissoras, :afiliadas, :levels,
          :usuarios, :advertisers_categories, 
          :advertisers, :notifications,
          :campaigns


    resources :reports do
      collection do
        get 'tv'
        get 'radio'
      end
    end



    match 'usuarios/:id/block_user' => 'usuarios#block_user', via: [:put], as: :block_user
    match 'reports/radio' => 'reports#radio', via: [:get, :post]

    

  end




  namespace 'api' do
    namespace 'v1' do
      resources :dashboard, :administradores,
                :categories, :interests,
                :emissoras, :afiliadas, :levels,
                :usuarios, :advertisers_categories, 
                :advertisers, :notifications,
                :campaigns
    end
  end







  devise_for :users, :controllers => { sessions: 'sessions', registrations: 'registrations', omniauth_callbacks: 'omniauth' }
  # devise_for :users, :controllers => { :registrations => :registrations }

  devise_scope :user do
    get "/", to: "devise/sessions#new"
    get "sair" => "devise/sessions#destroy"
    get "cadastro" => "devise/registrations#new"
    get 'esqueci-a-senha' => "devise/passwords#new"
    get 'meus-dados/editar' => 'devise/registrations#edit'
    # root :to => "devise/sessions#new"
  end

  devise_for :admin_users, :controllers => { :registrations => :admin_registrations }
  devise_scope :admin_user do
    get "admin", to: "devise/sessions#new"
    get "admin/sair" => "devise/sessions#destroy"
    # get "admin/cadastrar" => "devise/registrations#new"
    # get "admin/cadastrar" => "admin_invitations#new"
    get "admin/cadastrar" => "devise/invitations#new"
    get 'admin/esqueci-a-senha' => "devise/passwords#new"
    get 'admin/meus-dados/editar' => 'devise/registrations#edit', :as => 'editar_usuario'
    # root :to => "devise/sessions#new"
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
