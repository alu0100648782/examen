# creacion de los metodos:



class Alimento
        include Comparable
	attr_reader :nombre, :proteinas, :glucidos, :lipidos
	def initialize nombre, proteinas, glucidos, lipidos
		@nombre, @proteinas, @glucidos, @lipidos = nombre, proteinas, glucidos, lipidos
	end
        
        def valor_energetico
            @aux = (@glucidos * 4) + (@lipidos * 9) + (@proteinas * 4)
            @aux
        end
	
        def <=> (other)
            self.valor_energetico <=> other.valor_energetico
        end
end

