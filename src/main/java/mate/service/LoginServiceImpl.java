package mate.service;

import mate.lib.Service;

@Service
public class LoginServiceImpl implements LoginService {
    @Override
    public boolean loginIsValid(String username, String password) {
        return "tor".equals(username) && "123".equals(password);
    }
}
