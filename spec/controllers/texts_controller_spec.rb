require 'rails_helper'

describe TextsController do
  describe '#index' do
    it 'should return success response' do
      get :index
      expect(response).to have_http_status(:ok)
    end

    it 'should return proper json' do
      create_list :text, 2
      get :index
      json = JSON.parse(response.body)
      json_data = json['data']
      expect(json_data.length).to eq(2)
      expect(json_data[0]['attributes']).to eq({
        "title" => "My awesome text 1",
        "content" => "My awesome text's content 1",
        "slug" => "my-text-1"
      })

      expect(json_data[1]['attributes']).to eq({
        "title" => "My awesome text 2",
        "content" => "My awesome text's content 2",
        "slug" => "my-text-2"
      })

    end
  end
end
