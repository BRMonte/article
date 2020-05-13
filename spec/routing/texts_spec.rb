require 'rails_helper'

describe 'texts routes' do
  it 'should rout to texts index' do
    expect(get '/texts').to route_to('texts#index')
  end
end
