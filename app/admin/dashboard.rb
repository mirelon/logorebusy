ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    columns do
      column do
        panel "Random Words" do
          Word.order('RANDOM()').first(5).map do |word|
            para class: 'words' do
              text_node word.prefix
              text_node image_tag word.image.url(:small)
              text_node word.suffix 
              text_node link_to '»', admin_word_path(word)
            end
          end
        end
      end

      column do
        farebne_slovo_svg_panel FarebneSlovo.order('RANDOM()').first.slovo.upcase
      end
    end
  end # content
end
