import mate.lib.Injector;
import mate.model.Manufacturer;
import mate.service.ManufacturerService;
import mate.service.impl.ManufacturerServiceImpl;

public class Main {
    private static Injector injector = Injector.getInstance("mate");

    public static void main(String[] args) {
        ManufacturerService manufacturerService
                = new ManufacturerServiceImpl();
        Manufacturer manufacturer = new Manufacturer();
        manufacturer.setCountry("Germany");
        manufacturer.setName("Audi");

        manufacturerService.create(manufacturer);

    }
}
