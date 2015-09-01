RSpec.describe Product do
  subject{create :product}

  it "faild validation with no name" do
    subject.name = nil
    expect(subject).not_to be_valid
  end

  it "faild validation with no catalog_id" do
    subject.catalog_id = nil
    expect(subject).not_to be_valid
  end

  it "faild validation with no description" do
    subject.description = nil
    expect(subject).not_to be_valid
  end

  it "faild validation with duplicate name" do
    new_product = build :product, name: subject.name, catalog: subject.catalog
    expect(new_product).not_to be_valid
  end
end
