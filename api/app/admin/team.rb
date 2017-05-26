ActiveAdmin.register Team do
 permit_params :name,:users
 config.batch_actions = true
 filter :name
 index do
				 selectable_column
				 id_column
				 column :name
				 column :users
 end

 show :title => :name do
				 panel "Team #{team.name}" do
								 attributes_table_for team do
												 row("Name"){team.name}
												 row("Any One Member"){team.users.find_by(params[:ids])}
								 end
				 end
 end

 form do |f|
		f.semantic_errors
	  f.inputs "Team Details" do
					 f.input :name, label: 'Team Name'
		end
	 f.actions	
 end
end
