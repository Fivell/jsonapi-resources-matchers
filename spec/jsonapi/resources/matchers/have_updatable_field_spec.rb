require 'spec_helper'

RSpec.describe JSONAPI::Resources::Matchers::HaveUpdatableField do

  describe "#description" do
    let(:matcher) { described_class.new(:friend_id) }
    subject(:description) { matcher.description }
    it { is_expected.to eq "have updatable field `friend_id`"}
  end

  describe "#failure_message" do
    let(:author) { Author.new }
    let(:resource) { AuthorResource.new(author, {}) }
    let(:matcher) { described_class.new(:id) }
    subject(:failure_message) { matcher.failure_message }

    before { matcher.resource = resource }

    it { is_expected.to eq "expected AuthorResource to have updatable field `id`"}
  end

end
