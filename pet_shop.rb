def pet_shop_name(pet_shop_name)
  return pet_shop_name[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, amount)
  return pet_shop[:admin][:total_cash] += amount
end

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, amount)
  return pet_shop[:admin][:pets_sold] += amount
end

def stock_count(pet_shop)
  return pet_shop[:pets].length()
end

def pets_by_breed(pet_shop, input_breed)

  number_of_breed = []
  for pets in pet_shop[:pets]
    if pets[:breed] == input_breed
      number_of_breed += [input_breed]
    end
  end
  return number_of_breed

end

def find_pet_by_name(pet_shop, input_name)

  for pets in pet_shop[:pets]
    if pets[:name] == input_name
      return pets
    end
  end
  return nil
end

def remove_pet_by_name(pet_shop, input_name)
  for pets in pet_shop[:pets]
    if pets[:name] == input_name
      pets.clear()
    end
  end
end

def add_pet_to_stock(pet_store, new_pet)
  pet_store[:pets] << new_pet
end

def customer_cash(customer)
  customer[:cash]
end

def remove_customer_cash(customer, amount)
  return customer[:cash] -= amount
end

def customer_pet_count(customer)
  customer[:pets].length()
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets] << new_pet
end

def customer_can_afford_pet(customer, pet)
  if pet[:price] <= customer[:cash]
    return true
  end
  return false
end

def sell_pet_to_customer(pet_shop, pet, customer)

    if pet == nil
      pet_shop[:admin][:pets_sold]
      customer[:pets]
      customer[:cash]
      pet_shop[:admin][:total_cash]

    elsif pet[:price] <= customer[:cash]

      pet_shop[:admin][:pets_sold] += 1
      customer[:pets] << pet
      customer[:cash] -= pet[:price]
      pet_shop[:admin][:total_cash] += pet[:price]
      
    end

end
