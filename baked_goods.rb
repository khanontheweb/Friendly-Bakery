class BakedGoods
    attr_accessor :name, :description, :price, :type
    @@cookies = Hash.new
    @muffins = Hash.new
    @cakes = Hash.new
    def initialize(name, description, price, type)
        if type.downcase == 'cookie'
            @@cookies[name.to_sym] = {
                :description => description,
                :price => price,
                :type => type
            }
        elsif type.downcase == 'muffin'
            @@muffin[name.to_sym] = {
                :description => description,
                :price => price,
                :type => type
            }
        elsif type.downcase == 'cake'
            @@cakes[name.to_sym] = {
                :description => description,
                :price => price,
                :type => type
            }
        else 
            puts "This not a good"
        end
        
    end
end