module WoocommerceAPI
  module V1
    class ShippingLine < Resource
      attribute :id, Integer
      attribute :method_id, Integer
      attribute :method_title
      attribute :total, Decimal
    end
  end
end