class FarebneSlovo < ApplicationRecord
  def svg
    s = Victor::SVG.new width: 140, height: 100, style: { background: '#fff' }
    s.build do
      rect x: 10, y: 10, width: 120, height: 80, rx: 10, fill: '#666'
    end
  end
end
