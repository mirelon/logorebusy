ActiveAdmin.register FarebneSlovo do
  permit_params :slovo

  show do
    attributes_table do
      row :slovo
    end

    farebne_slovo_svg_panel resource.slovo.upcase
  end

  controller do
    def create
      create! do |success, failure|
        success.html { redirect_to new_admin_farebne_slovo_path }
      end
    end
  end
end
