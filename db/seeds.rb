# Seeding the database with items:
warehouses = Warehouse.create([{name: 'Redmond'}, {name: 'Atlanta'}, {name: 'New York'}])
items = Item.create([{name: 'Item 1', cost: 1.00}, {name: 'Item 2', cost: 20.00}, {name:'Item 3', cost: 30.00}])
inventory_levels = InventoryLevel.create([{available: 10, item_id: 1, warehouse_id: 1}, {available: 20, item_id: 2, warehouse_id: 2}, {available: 30, item_id: 3, warehouse_id: 1}, {available: 40, item_id: 1, warehouse_id: 2}, {available: 50, item_id: 2, warehouse_id: 2}, {available: 60, item_id: 3, warehouse_id: 2}, {available: 70, item_id: 1, warehouse_id: 3}, {available: 80, item_id: 2, warehouse_id: 3}, {available: 90, item_id: 3, warehouse_id: 3}]) 
