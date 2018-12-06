class BakedGoods
    attr_accessor :name, :description, :price, :type
    @@cookies = []
    @@muffins = Hash.new
    @@cakes = Hash.new
    def initialize(name, description, price, type)
        if type.downcase == 'cookie'
            @name = name
            @description = description
            @price = price
            @type = type
            @@cookies << self

        elsif type.downcase == 'muffin'
            @name = name
            @description = description
            @price = price
            @type = type
            @@muffins << self
        elsif type.downcase == 'cake'
            @name = name
            @description = description
            @price = price
            @type = type
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