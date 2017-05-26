ActiveAdmin.register Project do
	permit_params :name, :info, :created_at
  config.batch_actions = false
	index as: :blog do 
					title do |project|
									span project.name, class: 'title'
									span project.created_at, class: 'created_at'
					end
					body :info 
	end

	form do |f|
					f.inputs "Project Details" do
									f.input :name,label: 'Project Name'
									f.input :info,label: 'Info'
					end
	f.actions
	end
  
end
