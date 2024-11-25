Rails.application.routes.draw do
  # Configuración de Devise con controladores personalizados
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }

  # Ruta del dashboard para los administradores con filtro de autorización en el controlador
  authenticated :user, ->(u) { u.admin? } do
    root 'dashboard#index', as: :admin_root
  end

  # Ruta raíz para usuarios que no son administradores (Página principal)
  unauthenticated do
    root 'home#index', as: :unauthenticated_root
  end

  # Ruta principal para usuarios autenticados que no son administradores
  root to: 'companies#index', constraints: ->(request) { request.env['warden'].user.present? }

  # Rutas para la gestión de compañías (empresas)
  resources :companies do
    # Anidación de usuarios y contactos bajo la empresa
    resources :users, only: [:index, :new, :create] # CRUD completo para usuarios
    resources :contacts, only: [:index, :new, :create] # CRUD completo para contactos
    resources :segments, only: [:index, :new, :create] # CRUD completo para segmentos
    resources :assets, only: [:index, :new, :create] # CRUD completo para recursos
  end

  # Rutas para usuarios fuera de la anidación (ej. perfil de usuario)
  resources :users, except: [:index, :new, :create] # Edición y eliminación de usuarios individuales

  # Rutas para la gestión de campañas
  resources :campaigns do
    resources :email_templates, only: [:index, :new, :create] # Anidar plantillas de email en campañas
    resources :forms, only: [:index, :new, :create] # Anidar formularios en campañas
  end

  # Rutas para plantillas de email y formularios fuera de la anidación
  resources :email_templates, except: [:index, :new, :create]
  resources :forms, except: [:index, :new, :create]

  # Rutas para contactos y segmentos fuera de la anidación
  resources :contacts, except: [:index, :new, :create]
  resources :segments, except: [:index, :new, :create]
end


