xml.instruct! :xml, 
              :version => '1.0',
              :encoding => 'UTF-8'

xml.response do
  if @ok
    xml.status 'ok'
  else
    xml.status  'nok'
    xml.message @msg
  end
end
