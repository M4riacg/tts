ActiveAdmin.register User do
  permit_params :name, :email, :password, :password_confirmation, :authority_level

  index do
    selectable_column
    id_column
    column :name
    column :email
    column :authority_level
    actions
  end

  filter :name
  filter :email

  form do |f|
    f.inputs "Admin Details" do
      f.input :name
      f.input :email

      f.input :authority_level

      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

end
