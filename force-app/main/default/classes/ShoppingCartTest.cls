@isTest
public class ShoppingCartTest {
    @isTest
    static void testAddPrice() {
        ShoppingCart cart = new ShoppingCart();
        
        // Add prices to the cart
        cart.addPrice(10.0);
        cart.addPrice(20.0);
        cart.addPrice(30.0);

        // Verify the total price
        Decimal total = cart.calculateTotal();
        System.assertEquals(60.0, total, 'Total price should be 60.0');
    }

    @isTest
    static void testAddNegativePrice() {
        ShoppingCart cart = new ShoppingCart();
        
        try {
            cart.addPrice(-10.0);
            System.assert(false, 'Expected IllegalArgumentException was not thrown');
        } catch (IllegalArgumentException e) {
            System.assertEquals('Price cannot be negative', e.getMessage());
        }
    }

    @isTest
    static void testEmptyCart() {
        ShoppingCart cart = new ShoppingCart();
        
        // Verify the total price of an empty cart
        Decimal total = cart.calculateTotal();
        System.assertEquals(0.0, total, 'Total price of an empty cart should be 0.0');
    }
}