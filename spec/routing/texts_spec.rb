require 'rails_helper'

describe 'texts routes' do
  it 'should rout to texts index' do
    expect(get '/texts').to route_to('texts#index')
  end

  it 'should rout to texts show' do
    expect(get '/texts/1').to route_to('texts#show', id: '1')
  end

end
