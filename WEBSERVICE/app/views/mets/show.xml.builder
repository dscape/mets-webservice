xml.instruct! :xml, 
              :version => '1.0',
              :encoding => 'UTF-8'

xml.response do
  if @mets.blank?
    xml.status 'nok'
    xml.message @msg
    xml.param params[:id]
  else
    xml.status 'ok'
    xml.sip do
      xml.cdata! @mets.metsmanifest
    end
  end
end
