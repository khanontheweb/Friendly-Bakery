class BakedGoods
    attr_accessor :name, :description, :price, :type, :img
    @@cookies = []
    @@muffins = []
    @@cakes = []
    def initialize(name, description, price, type, img)
        @name = name
        @description = description
        @price = price
        @type = type
        @img = img

        if type.downcase == 'cookie'
            @@cookies << self

        elsif type.downcase == 'muffin'
            @@muffins << self

        elsif type.downcase == 'cake'
            @@cakes << self

        else 
            puts "This not a good"
        end
    end

    def self.cookies
        @@cookies
    end

    def self.cakes
        @@cakes
    end

    def self.muffins
        @@muffins
    end
end