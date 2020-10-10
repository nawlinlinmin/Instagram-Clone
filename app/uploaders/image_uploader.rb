class ImageUploader < CarrierWave::Uploader::Base

  include CarrierWave::MiniMagick

  storage :file

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end


  process resize_to_fit: [400, 250]

  version :thumb do
    process resize_to_fit: [50, 50]
  end


end
