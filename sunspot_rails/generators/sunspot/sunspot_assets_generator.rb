class SunspotAssetsGenerator < Rails::Generator::Base
  def manifest
    record do |m|
      puts "creating javascripts/solr-autocomplete"
	  FileUtils.cp_r "#{File.dirname(__FILE__)}/assets/solr-autocomplete", "#{Rails.root}/public/javascripts"
	  puts "creating javascripts/jquery"
	  FileUtils.cp "#{File.dirname(__FILE__)}/assets/jquery.js", "#{Rails.root}/public/javascripts"
    end
  end
end
