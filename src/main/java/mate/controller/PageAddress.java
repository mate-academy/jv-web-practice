package mate.controller;

public enum PageAddress {
    HOME_PAGE("/index"),
    EXCEPTION_PAGE("/wrong_data");

    private final String path;

    PageAddress(String url) {
        this.path = url;
    }

    public String getPath() {
        return path;
    }
}
