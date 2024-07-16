@isTest
public class InventoryManagerTest {
    @isTest
    static void testAddItem() {
        InventoryManager manager = new InventoryManager();
        manager.addItem('Widget', 10);
        System.assertEquals(10, manager.getItemQuantity('Widget'));
    }

    @isTest
    static void testRemoveItem() {
        InventoryManager manager = new InventoryManager();
        manager.addItem('Widget', 10);
        manager.removeItem('Widget', 5);
        System.assertEquals(5, manager.getItemQuantity('Widget'));
    }

    @isTest
    static void testAddNegativeQuantity() {
        InventoryManager manager = new InventoryManager();
        try {
            manager.addItem('Widget', -5);
            System.assert(false, 'Expected exception not thrown');
        } catch (IllegalArgumentException e) {
            System.assertEquals('Quantity must be greater than zero', e.getMessage());
        }
    }
}