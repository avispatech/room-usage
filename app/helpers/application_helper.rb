module ApplicationHelper
  def name_to_rgba(str)
    vals = [str.hash % 255, (str.hash / 255) % 255, (str.hash / (255 * 255)) % 255]
    "rgba(#{vals[0]}, #{vals[1]}, #{vals[2]}, 1)"
  end
end
