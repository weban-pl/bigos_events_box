module BigosEventsBox
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../../templates", __FILE__)

      desc "Creates a BigosEventsBox initializer."
      def copy_initializer
        template "bigos_events_box.rb", "config/initializers/bigos_events_box.rb"
      end

      def include_routes
        route 'mount BigosEventsBox::Engine => "/bigos_events_box"'
      end

      def create_settings
        Setting["GS.carrier_wave_access_key_id"] = "Access key id" if Setting.find_by_var("GS.carrier_wave_access_key_id").blank?
        Setting["GS.carrier_wave_secret_access_key"] = "Secret access key" if Setting.find_by_var("GS.carrier_wave_secret_access_key").blank?
        Setting["GS.carrier_wave_uploads_bucket_development_name"] = "Uploads bucket development name" if Setting.find_by_var("GS.carrier_wave_uploads_bucket_development_name").blank?
        Setting["GS.carrier_wave_uploads_bucket_production_name"] = "Uploads bucket production name" if Setting.find_by_var("GS.carrier_wave_uploads_bucket_production_name").blank?
        im = BigosApp::InstalledModule.find_or_create_by_name(BigosEventsBox.name)
        im.page_element =  BigosApp::BigosEventsBoxElement.name
        im.save
      end

    end
  end
end
