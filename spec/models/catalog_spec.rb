RSpec.describe Catalog do
  subject{create :catalog}

  it "faild validation with no name" do
    subject.name = nil
    expect(subject).not_to be_valid
  end

  it "faild validation with no description" do
    subject.description = nil
    expect(subject).not_to be_valid
  end

  it "faild validation with duplicate name" do
    new_catalog = build :catalog, name: subject.name
    expect(new_catalog).not_to be_valid
  end
end
