public class ShoppingCart {
    private List<Decimal> prices = new List<Decimal>();

    // Method to add a price to the shopping cart
    public void addPrice(Decimal price) {
        if (price >= 0) {
            prices.add(price);
        } else {
            throw new IllegalArgumentException('Price cannot be negative');
        }
    }

    // Method to calculate the total price
    public Decimal calculateTotal() {
        Decimal total = 0;
        for (Decimal price : prices) {
            total += price;
        }
        return total;
    }
}