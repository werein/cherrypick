Cherrypick::Engine.routes.draw do

  get 'locales', to: 'locales#index'
  get 'locales/:iso_code', to: 'locales#show'

  root 'welcome#index'
end
