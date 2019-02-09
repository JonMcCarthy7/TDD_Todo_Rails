# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Task, type: :model do
  context 'validations' do
    subject { described_class.new(name: 'TDD', priority: 10, completed: false) }
    it 'requires name to be present' do
      subject.name = nil
      expect(subject).to_not be_valid
    end
    it 'requires priority to be present' do
      subject.priority = nil
      expect(subject).to_not be_valid
    end
    it 'requires completed to be present' do
      subject.completed = nil
      expect(subject).to_not be_valid
    end
  end

  context '#high_priotity?' do
    subject { described_class.new(name: 'TDD', priority: 5, completed: false) }
    it { expect(subject.high_priority?).to eql(true) }

    it 'returns false if less than 5' do
      subject.priority = 4
      expect(subject.high_priority?).to eql(false)
    end
  end
end
