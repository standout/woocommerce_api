module WoocommerceAPI
  module V2
    class Tax < Resource
      attribute :id, Integer #	Unique identifier for the resource.READ-ONLY
      attribute :country , String #	Country ISO 3166 code. See ISO 3166 Codes (Countries) for more details
      attribute :state , String #	State code.
      attribute :postcode, String #	Postcode/ZIP.
      attribute :city, String #	City name.
      attribute :rate, String #	Tax rate.
      attribute :name, String #	Tax rate name.
      attribute :priority, Integer #	Tax priority. Only 1 matching rate per priority will be used. To define multiple tax rates for a single area you need to specify a different priority per rate. Default is 1.
      attribute :compound, Boolean #	Whether or not this is a compound rate. Compound tax rates are applied on top of other tax rates. Default is false.
      attribute :shipping, Boolean #	Whether or not this tax rate also gets applied to shipping. Default is true.
      attribute :order , Integer #	Indicates the order that will appear in queries.
    end
  end
end
