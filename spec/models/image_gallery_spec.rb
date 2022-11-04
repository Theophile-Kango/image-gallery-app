require 'rails_helper'

RSpec.describe ImageGallery, type: :model do
  describe 'db table' do
    it { is_expected.to have_db_column(:title).of_type(:string) }
    it { is_expected.to have_db_column(:description).of_type(:text) }
  end

  describe 'Validation' do
    it { is_expected.to validate_presence_of :title }
    it { is_expected.to validate_presence_of :description }
  end

  describe 'Factory' do
    it 'should have valid Factory' do
      expect(create(:image_gallery)).to be_valid
    end
  end
end
