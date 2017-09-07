
RSpec.shared_examples "balance printer" do
  let(:deposit_mock) { build(:transaction, :deposit) }
  let(:withdrawl_mock) { build(:transaction, :withdrawl) }
  let(:invalid_mock) { build(:transaction) }

  subject(:withdrawl_printer) { described_class.new([withdrawl_mock]) }
  subject(:deposit_printer) { described_class.new([deposit_mock]) }
  subject(:invalid_printer) { described_class.new([invalid_mock]) }
end
