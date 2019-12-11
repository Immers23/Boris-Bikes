require 'docking_station'

describe DockingStation do 
  it { is_expected.to respond_to :release_bike }

  it 'raises error on .release_bike when docking station is empty' do
    expect { subject.release_bike } .to raise_error("No bikes available")
  end

  it 'releases working bikes' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.release_bike).to be_working
  end

  it 'docks something' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end

end
