ActiveAdmin.register Node do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :list, :of, :attributes, :on, :node_name, :place_id

form do |form|
	form.inputs do
		form.input :node_name, :label => 'Node Name'
		form.input :place_id, :label => 'Place ID', :as => :select, :collection => Place.all.map{|u| ["#{u.place_name} ", u.id]}
		#f.input :places, :as => :select2_multiple, :collection => Place.all
			end
			form.actions

		end
# => 
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
