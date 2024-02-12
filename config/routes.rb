Rails.application.routes.draw do
  root "setup#index"
  get 'setup/index'
  get 'setup/personnel_login'
  post 'setup/personnel_login'
  get 'setup/personnel_index'
  get 'setup/personnel_new'
  post 'setup/personnel_create'
  get 'setup/personnel_edit'
  post 'setup/personnel_update'
  get 'setup/personnel_destroy'

  get 'transaction/index'
  get 'transaction/expense_index'
  get 'transaction/expense_new'
  get 'transaction/expense_create'
  get 'transaction/expense_edit'
  get 'transaction/expense_update'
  get 'transaction/expense_destroy'
  post 'transaction/expense_create'
  post 'transaction/expense_edit'
  post 'transaction/expense_destroy'
  post 'transaction/expense_update'
end
