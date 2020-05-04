# frozen_string_literal: true

RSpec.describe AngelList::Style do
  it "has a version number" do
    expect(AngelList::Style::VERSION).not_to be nil
  end

  describe 'it can run rubocop on its own ruby files' do
    let(:command) { 'bundle exec rubocop' }

    before { system command }

    subject { $? }

    it('rubocop should exit with status 0') { is_expected.to eq 0 }
  end
end
