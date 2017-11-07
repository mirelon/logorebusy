ActiveAdmin.register Word do
  permit_params :prefix, :image, :suffix, :image

  batch_action :print, method: :get do |ids|
    html = '<meta charset="utf-8" />' + Word.find(ids).map do |word|
      "<p style=\"margin: 0; font-size: 50;\">#{word.prefix}<img src=\"#{word.image.path(:original)}\" height=\"50\" />#{word.suffix}</p>"
    end.join
    send_data WickedPdf.new.pdf_from_string(html), filename: 'words.pdf', disposition: :inline
  end

  index do
    selectable_column
    id_column
    column :prefix
    column :image do |w|
      image_tag w.image.url(:small)
    end
    column :suffix
    column :lang

    actions
  end

  form do |f|
    f.object.lang = :sk
    inputs do
      f.input :prefix
      f.input :suffix
      f.input :image, as: :file
      f.input :lang
    end
    f.actions
  end

  show do
    attributes_table do
      row :id
      row :prefix
      row :suffix
      row :image do |word|
        image_tag word.image.url(:small)
      end
      row :lang
    end
  end
end
