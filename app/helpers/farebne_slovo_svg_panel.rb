module FarebneSlovoSvgPanel
  def farebne_slovo_svg_panel(slovo)
    panel 'Farebné slovo' do
      width = 700
      height = 500
      padding_top = 30
      padding_right = 30
      padding_bottom = 30
      padding_left = 30
      svg width: width, height: height do
        rect width: width, height: height, stroke: 'black', :'stroke-linecap' => 'round', :'stroke-width' => 3, :'fill-opacity' => '0'
        slovo.chars.each do |char|
          font_size = 80+rand(120)
          x = rand(width-font_size-padding_left-padding_right)+padding_left
          y = rand(height-font_size-padding_top-padding_bottom)+font_size+padding_top
          text x: x, y: y, transform: "rotate(#{rand(360)} #{(x+font_size/2).to_i} #{(y-font_size/2).to_i})", stroke: "hsl(#{rand(360)}, 100%, 50%)", :'stroke-width' => 3, :'font-size' => font_size, :'fill-opacity' => '0' do
            char
          end
        end
      end
    end
  end

  def random_hues(count)
    interval = 360 - count * min_hue_change(count)
    puts interval
    initial_rands = Array.new(count){rand()}
    puts initial_rands
    ratio = interval / initial_rands.sum
    puts ratio
    initial_rands.map{|r| r * ratio}.cumulative_sum.each_with_index.map do |r,i|
      i * min_hue_change(count) + r
    end
  end

  def min_hue_change(count)
    if count > 5
      360 / (count + 4)
    else
      40
    end
  end
end
