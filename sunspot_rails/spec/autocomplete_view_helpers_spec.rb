require 'action_view'
require File.join(File.dirname(__FILE__), '..', 'lib', 'sunspot', 'rails', 'autocomplete_view_helpers')

describe Sunspot::Rails::AutocompleteViewHelpers do
  
  it "generates the right autocomplete helper" do
	generated = ActionView::Base.new.autocomplete_text_field("post", "title", "http://127.0.0.1:8983/solr/", "post_title")
	expected = "<input id=\"post_title\" name=\"post[title]\" size=\"30\" type=\"text\" /> <script>$('#post_title').autocomplete('http://127.0.0.1:8983/solr/', 'post_title', {});</script>"
	generated.should == expected
  end
  
  it "generates the right autosuggest helper" do
	generated = ActionView::Base.new.autosuggest_text_field("post", "title", "http://127.0.0.1:8983/solr/", "post_title")
	expected = "<input id=\"post_title\" name=\"post[title]\" size=\"30\" type=\"text\" /> <script>$('#post_title').autosuggest('http://127.0.0.1:8983/solr/', 'post_title', {});</script>"
	generated.should == expected
  end

end
