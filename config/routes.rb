Rails.application.routes.draw do
  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
    resources :feedbacks
    root 'static_pages#index'
    get 'static_pages/index'
  end
  # resources :feedbacks
  # get 'static_pages/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
