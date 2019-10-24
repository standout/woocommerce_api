require 'spec_helper'

shared_examples_for "a woocommerce tax CRUD" do
  let(:valid_attributes) do
    {
      country: "US",
      state: "AL",
      rate: "4",
      name: "State Tax",
      shipping: false
    }
  end

  let(:taxs) { WoocommerceAPI::Tax.all }
  let(:tax) { tax.first }

  it "responses collection of tax" do
    expect(taxs).to be_kind_of Array
  end

  it "deletes a tax" do
    expect(wc_tax.destroy['id']).to eq(wc_tax.id)
  end

  it "permanently deletes a tax" do
    expect(wc_tax.destroy(force: true)['id']).to eq(wc_tax.id)
  end
end

describe WoocommerceAPI::Tax do
  it_behaves_like "a woocommerce resource"
  include_context "woocommerce_api_services", wordpress_api: true, version: 'v2', use_cassette: 'v2/tax'
end
