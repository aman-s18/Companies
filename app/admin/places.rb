ActiveAdmin.register Place do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
  permit_params :place_name, :company_id
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
form do |form|
	form.inputs do
		form.input :place_name, :label => 'Place_name', placeholder: "Place Name"
		form.input :company_id, :label => 'Company_id',  :as => :select, :collection => Company.all.map{|u| ["#{u.name} ", u.id]}
		#form.input :places, :as => :select2_multiple, :collection => Place.all
		
		end
			form.actions

	end

end
