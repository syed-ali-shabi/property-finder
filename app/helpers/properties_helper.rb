module PropertiesHelper
  def property_thumbnail(property)
    if property.images.present?
      image_tag property.images.first, width: 350, height: 180
    else
       ""
    end
  end
end
