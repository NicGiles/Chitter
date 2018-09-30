require 'cheet'

describe Chitter do


describe '.all' do
  it 'returns a list of cheets' do
    connection = PG.connect(dbname: 'Chitter Test')

    # Add the test data
    Cheet.create(cheet: "donald has such tiny hands")
    Cheet.create(cheet: "sack Mourinho")

    cheets = Cheet.all
    cheet = Cheet.all.first

    expect(cheets.length).to eq 2
    expect(cheet).to be_a Cheet
    expect(cheet).to respond_to(:id)
    expect(cheet.cheet).to eq 'donald has such tiny hands'
  end
end



describe '.create' do
  it 'creates a new cheet' do
      cheet = Cheet.create(cheet: "donald has such tiny hands")
      cheet = Cheet.all.first

      expect(cheet).to be_a Cheet
      expect(cheet).to respond_to (:id)
      expect(cheet.cheet).to eq 'donald has such tiny hands'
    end
  end
end
