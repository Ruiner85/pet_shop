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
    end
  end
  return
end

def remove_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    if pet[:name] == name
      pet_shop[:pets].delete(pet)
    end
  end
end

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets] << new_pet
  return pet_shop[:pets].length()
end

def customer_cash(customer)
  return customer[:cash]
end

def remove_customer_cash(customer, amount)
  result = customer[:cash] -= amount
  return result
end

def customer_pet_count(customer)
  result = customer[:pets].length
  return result
end

def add_pet_to_customer(customer, pet)
  customer[:pets] << pet
  return customer[:pets].length
end

def customer_can_afford_pet(customer, pet)
  return customer[:cash] >= pet[:price]
end

def sell_pet_to_customer(pet_shop, pet, customer)
  if pet_shop[:pets].include?(pet) && customer[:cash] >= pet[:price]
    customer[:pets] << pet
    pet_shop[:pets].delete(pet)
    pet_shop[:admin][:pets_sold] += 1
    customer[:cash] -= pet[:price]
    pet_shop[:admin][:total_cash] += pet[:price]
  end
end
