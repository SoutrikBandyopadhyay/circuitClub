ActiveAdmin.register User, :as => 'Student' do
	permit_params :name, :roll, :batch, :email,:team_id, :password, :password_confirmation
  config.batch_actions = true
	filter :roll
	filter :batch
	filter :name

	index do
    selectable_column
    id_column
    column :name
		column :email
		column :roll
   # column :current_sign_in_at
   # column :sign_in_count
    column :created_at
    actions
  end

  show :title => :name do
					panel "Profile" do
									attributes_table_for student do
									row("Name") {student.name}
									row("Enrollment Id"){student.roll}
									row("Email"){student.email}
									row("Batch"){student.batch}
									row("Team"){student.team}
									end
					end
	end
  form do |f|
					f.semantic_errors
    f.inputs "Student Details" do
      f.input :name
      f.input :email
      f.input :roll
			f.input :batch
			f.input :team
			f.input :password
			f.input :password_confirmation
    end
    f.actions
  end

end
