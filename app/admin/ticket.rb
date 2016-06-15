ActiveAdmin.register Ticket do

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

  permit_params :title, :user_id, :content, :tecnic_id, :priority, :status, :level

  index do
    selectable_column
    id_column
    column :title
    column :content
    column :user_id
    actions
  end

  filter :title
  filter :tecnic_id
  filter :user_id
  filter :priority
  filter :status
  

  form do |f|
    f.inputs "Ticket Details" do
      f.input :title
      f.input :user_id
      f.input :tecnic_id
      f.input :priority
      f.input :status
      f.input :content
    end
    f.actions
  end
end
