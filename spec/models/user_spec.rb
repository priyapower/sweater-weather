require "rails_helper"

RSpec.describe User, type: :model do
  describe "validations" do
    it { should validate_presence_of :email }
    it { should validate_uniqueness_of :email }
    it { should validate_presence_of :password }
    it { should validate_presence_of :api_key } #maybe, but since this is auto-generated in creation, does it go here?
  end
  # describe "relationships" do
    #it { should have_many :databse}
    #it { should belong_to :databse}
  # end
end
