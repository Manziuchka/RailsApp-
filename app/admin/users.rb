ActiveAdmin.register User do

  permit_params :phone, :name, :password

  index do
    selectable_column
    id_column
    column :name
    column :phone
    column :created_at
    column :updated_at
    actions
  end

  form do |f|
    f.inputs do
      f.input :phone
      f.input :name
      f.input :password

     # f.input :avatar, as: :file
    end
    f.actions
  end

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
