# Exercise: Sorted inventory management
# Imagine you run a small grocery store and you have a dictionary that stores the inventory of your store. Each key represents the name of a product and the corresponding value represents the quantity of that product in stock.
# Write a Python function that takes the inventory dictionary as input. Your task is to loop through the dictionary, sort the key-value pairs by the name of the product in ascending order, and print out each key-value pair in the following format: "We have <value> <key> in stock."
# For example, consider the following inventory dictionary:
# inventory = {'oranges': 3, 'apples': 10, 'bananas': 5}
# Your function should sort the dictionary by the name of the product in ascending order, then loop through the sorted dictionary and print out the following output:
# We have 10 apples in stock.
# We have 5 bananas in stock.
# We have 3 oranges in stock.

inventory = {
    'oranges': 3,
    'apples': 10,
    'bananas': 5,
}


def sort_inventory(inv_dict):

    sorted_dict = sorted(inv_dict.items(), key=lambda x: x[1], reverse=True)
    for item, quantity in sorted_dict:
        print(f'We have {quantity} {item} in stock.')


sort_inventory(inventory)
