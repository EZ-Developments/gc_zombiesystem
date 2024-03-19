ESX = nil -- exports
Inventory = {}

function Inventory.CanCarryItem(source, item, amount)
    return exports['qs-inventory']:CanCarryItem(source, item, amount)
end

function Inventory.AddItem(source, item, count, slot, metadata)
    exports['qs-inventory']:AddItem(source, item, count, slot, metadata)
end

function Inventory.RemoveItem(source, item, count, slot, metadata)
    exports['qs-inventory']:RemoveItem(source, item, count, slot, metadata)
end

function Inventory.GetItemLabel(item)
    return exports['qs-inventory']:GetItemLabel(naitemme)
end

function Inventory.RemoveItem(source, item, count, slot, metadata)
    exports['qs-inventory']:RemoveItem(source, item, count, slot, metadata)
end