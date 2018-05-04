class Grupo

include Comparable

	attr_reader :titulo, :alimentos
	def initialize titulo, alimentos
		@titulo, @alimentos = titulo, alimentos
	end
	def get_titulo
		@titulo
	end
	def get_alimento i
		@alimentos[i]
	end
	def getall_alimentos
		@alimentos
	end
	def to_s
		out = "#{@titulo.upcase}\n"
		out << @alimentos.map { |alimento| "-#{alimento}" }.join(",\n")
		out
	end
	def <=> (otro)
		@titulo<=>otro.titulo
	end
end

