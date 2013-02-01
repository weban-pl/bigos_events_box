module BigosEventsBox
  class ApplicationController < ActionController::Base
    layout "bigos_events_box/application"

    before_filter :load_settings

    private
    def load_settings
      CarrierWave::Uploader::Base.fog_credentials = {
          :provider               => 'AWS',
          :aws_access_key_id      => Setting["#{BigosEventsBox.name}.carrier_wave_access_key_id"],
          :aws_secret_access_key  => Setting["#{BigosEventsBox.name}.carrier_wave_secret_access_key"]
      }
      CarrierWave::Uploader::Base.fog_directory  =  (Rails.env == "development" ? Setting["#{BigosEventsBox.name}.carrier_wave_uploads_bucket_development_name"] : Setting["#{BigosEventsBox.name}.carrier_wave_uploads_bucket_production_name"])
      CarrierWave::Uploader::Base.fog_public     = true
      CarrierWave::Uploader::Base.fog_attributes = {'Cache-Control'=>'max-age=315576000'}
      CarrierWave::Uploader::Base.storage = :fog
    end

  end
end
