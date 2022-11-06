# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ImageGallery, type: :model do
  describe 'db table' do
    it { is_expected.to have_db_column(:title).of_type(:string) }
    it { is_expected.to have_db_column(:description).of_type(:text) }
    it { is_expected.to have_db_column(:image).of_type(:string) }
  end

  describe 'Validation' do
    it { is_expected.to validate_presence_of :title }
    it { is_expected.to validate_presence_of :description }
    it { is_expected.to validate_presence_of :image }
  end

  describe 'Factory' do
    it 'should have valid Factory' do
      expect(create(:image_gallery)).to be_valid
    end
  end
end
