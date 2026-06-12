import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.assertEquals;

public class CalculatorTest {

    Calculator calculator = new Calculator();

    @Test
    public void testAdd() {
        assertEquals(10, calculator.add(5, 5));
    }

    @Test
    public void testSubtract() {
        assertEquals(5, calculator.subtract(10, 5));
    }

    @Test
    public void testMultiply() {
        assertEquals(25, calculator.multiply(5, 5));
    }

    @Test
    public void testDivide() {
        assertEquals(2, calculator.divide(10, 5));
    }
}
