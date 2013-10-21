module FathersHelper
  def nested_family(fathers)
    fathers.map do |father, sons|
      render(father) + content_tag(:div, nested_family(sons), :class => "nested_family")
    end.join.html_safe
  end
end
