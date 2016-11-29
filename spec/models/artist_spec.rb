require 'rails_helper'

RSpec.describe Artist, type: :model do
  
  it { should validate_presence_of(:name).on(:create).with_message("Unless you're Prince, every artist needs a name.") }
    
end
