class Sip < ActiveRecord::Base
  def self.find_all_agents
   conn = connection.connection
   sql = %( set schema rails; xquery for $i in db2-fn:xmlcolumn('SIPS.METSMANIFEST')//agent return $i)
   IBM_DB::exec(conn, sql)
   # fetch code is missing
  end

  def self.find_agent_by_name
  end
end
