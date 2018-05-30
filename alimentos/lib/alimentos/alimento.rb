#creacion de los metodos:



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

        def to_s
		"#{nombre}, #{proteinas}, #{glucidos}, #{lipidos}"
        end	
        def <=> (other)
            self.valor_energetico <=> other.valor_energetico
        end
end

# creacion de las lista:
     
     a1 = Alimento.new("a1", 1.0, 1.0, 1.0)
     a2 = Alimento.new("a2", 2.0, 2.0, 2.0)
     a3 = Alimento.new("a3", 3.0, 3.0, 3.0)

     lista = [a1, a2, a3]

     def mi_funcion(l)
      (l.max).valor_energetico
     end

     p mi_funcion(lista) 

     def mi_funcion2(l)
      (l.min).valor_energetico
     end

     p mi_funcion2(lista)

