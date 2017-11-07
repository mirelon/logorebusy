class Word < ApplicationRecord
  has_attached_file :image, styles: {small: 'x50>'}
  do_not_validate_attachment_file_type :image
end
