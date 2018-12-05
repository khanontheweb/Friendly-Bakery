class BakedGoods
    attr_accessor :name, :description, :price, :type
    def initialize(name, description, price, type)
        @name = "#{name} #{type}"
        @description = description
        @price = price
    end
end