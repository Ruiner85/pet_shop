def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(money)
  return money[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, amount)
  result = pet_shop[:admin][:total_cash] += amount
  return result
end

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, pets_sold)
  result = pet_shop[:admin][:pets_sold] += pets_sold
end

def stock_count(pet_shop)
  return pet_shop[:pets].length()
end

def pets_by_breed(pet_shop, pet_type)
  result = []
  for pet in pet_shop[:pets]
    if pet[:breed] == pet_type
      result.push(pet)
    end
  end
  return result
end

def find_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    if pet[:name] == name
      return pet
    else
    end
  end
  return
end

def remove_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    if pet[:name] == name
      pet.delete(name)
    end
  end
  return
end
#
# def add_pet_to_stock(pet_shop, new_pet)
#   for pet in pet_shop
#
#   end
# end
