require 'rails_helper'

RSpec.describe Text, type: :model do

  describe 'testing #validations' do

    it 'should test that the factory is valid' do
      expect(build :text).to be_valid
    end

    it 'should validate the presence of a title' do
      text = build :text, title: '' #empty title
      expect(text).not_to be_valid
      expect(text.errors.messages[:title]).to include("can't be blank")
    end

    it 'should validate the presence of a content' do
      text = build :text, content: '' #content empty
      expect(text).not_to be_valid
      expect(text.errors.messages[:content]).to include("can't be blank")
    end

    it 'should validate the presence of a slug' do
      text = build :text, slug: ''
      expect(text).not_to be_valid
      expect(text.errors.messages[:slug]).to include("can't be blank")
    end

    it 'should validate uniqueness of the slug' do # Slug is the unique identifying part of a web address, typically at the end of the URL
      text = create :text
      invalid_text = FactoryBot.build :text, slug: text.slug
      expect(invalid_text).not_to be_valid
    end
  end

end
