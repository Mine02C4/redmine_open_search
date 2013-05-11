require 'builder/xmlmarkup'

class OpensearchController < ApplicationController
  def xml
    send_data self.generate_open, :type => "application/opensearchdescription+xml"
  end

protected
  def generate_open
    xml = Builder::XmlMarkup.new
    xml.instruct! :xml, :version=>"1.0", :encoding=>"UTF-8"
    xml.OpenSearchDescription "xmlns" => "http://a9.com/-/spec/opensearch/1.1/" do
      xml.ShortName Setting.app_title
      xml.Url "type" => "text/html", "template" => Setting.protocol + "://" + Setting.host_name + "/search?utf8=%E2%9C%93&q={searchTerms}"
    end
  end
end
