xml.instruct! :xml, 
              :version=>'1.0',
              :encoding=>'UTF-8'

xml.response do
  xml.status 'ok'
  xml.collection do
    for m in @mets
      xml.collectionitem do
        xml.id m.id
        xml.data do
          xml.cdata! m.metsmanifest
        end
      end
    end
  end
end
