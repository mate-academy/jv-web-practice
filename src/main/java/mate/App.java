package mate;

import mate.lib.Injector;
import mate.model.Manufacturer;
import mate.service.ManufacturerService;
import mate.service.ManufacturerServiceImpl;

import java.util.List;
import java.util.stream.Collectors;

public class App {
private static final Injector injector = Injector.getInstance("mate");
    public static void main(String[] args) {

        ManufacturerService manufacturerService = (ManufacturerService) injector.getInstance(ManufacturerService.class);
        List<String> countries = manufacturerService.getAll().stream()
                .map(Manufacturer::getCountry)
                .distinct()
                .collect(Collectors.toList());
        System.out.println(countries);
    }

}
