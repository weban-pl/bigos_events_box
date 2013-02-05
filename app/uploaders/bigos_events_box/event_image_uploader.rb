module BigosEventsBox
  class EventImageUploader < CarrierWave::Uploader::Base

  include CarrierWave::RMagick
  storage :fog

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def cache_dir
    "#{Rails.root}/tmp/uploads"
  end

  version :thumb do
    #process :resize_to_fill => [BigosEventsBox::Setting["#{BigosEventsBox.name}.thumb_width"].to_i, BigosEventsBox::Setting["#{BigosEventsBox.name}.thumb_height"].to_i]
    :resize_to_fill => [275, 45]
  end

  version :medium do
    process :resize_to_fill => [800, 600]
  end

  version :big do
    process :resize_to_fill => [1280, 1024]
  end

  end
end
