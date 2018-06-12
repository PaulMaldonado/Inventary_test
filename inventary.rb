inventary = {
  Chapacinta: 10,
  Pollipack: 20,
}

puts "Qué te gustaria hacer? "
puts "(agregar) Agrega un nuevo producto "
puts "(Actualizar) Actualiza un producto "
puts "(Listar) Lista de productos "
puts "(Eliminar) Elimina un producto "

user = gets.chomp

case user
when "Agregar"
  puts "Que producto te gustaria agregar? "
  product = gets.chomp
  puts "Cantidad disponible? "
  quantity = gets.chomp

  if inventary[product.to_sym].nil?
     inventary[product.to_sym] = quantity.to_i
     puts "Se agrego correctamente tu producto de :#{product} y la Cantidad de: #{quantity} "
  else
    puts "El producto y la catidad ya estan disponibles "
  end

  when "Actualizar"
    puts "Que producto te gustaria actualizar? "
    product = gets.chomp

    if inventary[product.to_sym].nil?
       puts "El nombre del producto que decea actualizar no existe intente otra vez "
     else
      inventary[product.to_sym] = quantity.to_i
      puts "Actualizar la cantidad del producto "
      quantity= gets.chomp
      puts "El nombre del producto: #{product} y la cantidad de: #{quantity}, se actualizaron "
    end

  when "Listar"
    inventary.each do |name_product, quantity_product|
      puts "Descripcion del producto: #{name_product} y su catidad disponible de: #{quantity_product}"
    end

  when "Eliminar"
    puts "Nombre del producto que decea eliminar? "
    product = gets.chomp

    if inventary[product.to_sym].nil?
      puts "El nombre del producto que ingreso no existe, intente otra vez "
    else
      inventary.delete(product)
      puts "El producto: #{product} se elimino correctamente "
    end
end

