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
    process :resize_to_fill => [80, 80]
  end

  version :medium do
    process :resize_to_fill => [800, 600]
  end

  version :big do
    process :resize_to_fill => [1280, 1024]
  end

  end
end
