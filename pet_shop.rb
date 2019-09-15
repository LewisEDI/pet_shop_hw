def pet_shop_name(pet_shop)
    return pet_shop [:name]
end


def total_cash(pet_shop)
    return pet_shop [:admin][:total_cash]
end


def add_or_remove_cash(pet_shop, amount)
    return pet_shop[:admin][:total_cash] += amount
end


def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end


def increase_pets_sold(pet_shop, amount)
  new_amount = pet_shop[:admin][:pets_sold] += amount
  return new_amount
end


def stock_count(pet_shop)
  return pet_shop[:pets].length
end


def pets_by_breed(pet_shop, breed)
  breeds =[]
  for pet in pet_shop[:pets]
    if breed == pet[:breed]
      breeds.push(breed)
    end
  end

  return breeds
end

def find_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    return pet if name == pet[:name]
  end

  return()
end

def remove_pet_by_name(pet_shop, pet_name)
    for pet in pet_shop[:pets]
    pet_shop[:pets].delete(pet) if pet_name == pet[:name]
end
end


def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets].push(new_pet)
end


def customer_cash(customers_index)
  return customers_index[:cash]
end


def remove_customer_cash(customer, cash_deducted)
  customer[:cash] << customer[:cash] -= cash_deducted
  return customer
end


def customer_pet_count(customer_index)
    count = 0
    for pet in customer_index[:pets]
    count += 1
  end
  return count
end


def add_pet_to_customer(customer_index, new_pet)
    customer_index[:pets] << new_pet
end
