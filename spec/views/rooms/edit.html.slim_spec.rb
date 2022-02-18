require 'rails_helper'

RSpec.describe 'rooms/edit', type: :view do
  let(:room) { create(:room) }

  it 'renders the edit room form' do
    render

    assert_select('form[action=?][method=?]', room_path(room), 'post') do
      assert_select('input[name=?]', 'room[name]')
    end
  end
end
