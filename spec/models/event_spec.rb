require 'rails_helper'

RSpec.describe Event, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  it 'fails when creating an event without an user' do
    expect(Event.create(name: 'Event01', date: Date.today).errors.full_messages).to eq(['Author must exist'])
  end

  it 'succeeds when creating an event with an user' do
    user = User.create(name: 'Person')
    event = Event.create(name: 'Meeting', date: '01/01/2001', author_id: user.id)
    expect(event).to eq(Event.first)
  end

  it 'it successfully destroys an event' do
    user = User.create(name: 'Person')
    event = Event.create(name: 'Meeting', date: '01/01/2001', author_id: user.id)
    event.destroy
    expect(event).not_to eq(Event.first)
  end
end
