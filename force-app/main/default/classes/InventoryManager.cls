public class InventoryManager {
    private Map<String, Integer> inventory = new Map<String, Integer>();

    public void addItem(String itemName, Integer quantity) {
        if (quantity <= 0) {
            throw new IllegalArgumentException('Quantity must be greater than zero');
        }
        inventory.put(itemName, inventory.get(itemName) != null ? inventory.get(itemName) + quantity : quantity);
    }

    public Integer getItemQuantity(String itemName) {
        return inventory.get(itemName) != null ? inventory.get(itemName) : 0;
    }

    public void removeItem(String itemName, Integer quantity) {
        if (quantity <= 0) {
            throw new IllegalArgumentException('Quantity must be greater than zero');
        }
        if (!inventory.containsKey(itemName) || inventory.get(itemName) < quantity) {
            throw new IllegalArgumentException('Insufficient quantity or item does not exist');
        }
        inventory.put(itemName, inventory.get(itemName) - quantity);
    }
}