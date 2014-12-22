package com.ris.healthcare

import com.ris.healthcare.user.User
import grails.transaction.Transactional

@Transactional
class UserService {
    public User verifyUser(User user) {
        User validUser = User.findByUserNameAndPasswordAndProviderCode(user.userName, user.password, user.providerCode)
        return validUser
    }
}
