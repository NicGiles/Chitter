require 'uri'
require 'pg'

class Cheet

  attr_reader :id, :cheet

  def initialize(id:, cheet:)
    @id = id
    @cheet = cheet
  end

  def self.all

      if ENV['ENVIRONMENT'] == 'test'
        connection = PG.connect(dbname: 'Chitter Test')
      else
        connection = PG.connect(dbname: 'Chitter Test')
      end
      result = connection.exec("SELECT * FROM cheets")
      result.map do |cheet|
      Cheet.new(id: cheet['id'], cheet: cheet['cheet'])
    end
  end


    def self.create(cheet:)

        if ENV['ENVIRONMENT'] == 'test'
          connection = PG.connect(dbname: 'Chitter Test')
        else
          connection = PG.connect(dbname: 'Chitter Test')
        end

        result = connection.exec("INSERT INTO cheets (cheet) VALUES('#{cheet}') RETURNING id, cheet;")
        Cheet.new(id: result[0]['id'], cheet: result[0]['cheet'])
      end

end