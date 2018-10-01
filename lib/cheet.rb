require 'uri'
require 'pg'

# Cheet class for initliaising and creating cheets.
class Cheet
  attr_reader :id, :cheet, :time, :connection

  def initialize(id:, cheet:, time:)
    @id = id
    @cheet = cheet
    @time = time
  end

  def self.all
    connection = PG.connect(dbname: 'Chitter Test')
    result = connection.exec('SELECT * FROM cheets')
    result.map do |cheet|
      Cheet.new(id: cheet['id'], cheet: cheet['cheet'], time: cheet['time'])
    end
  end

  def self.create(cheet:)
    cheet = cheet.gsub("'", "''")
    connection = PG.connect(dbname: 'Chitter Test')
    result = connection.exec("INSERT INTO cheets (cheet) VALUES('#{cheet}')
     RETURNING id, cheet;")
    Cheet.new(id: result[0]['id'],
              cheet: result[0]['cheet'],
              time: result[0]['time'])
  end
end
