package com.ris.healthcare

class LoginController {
    static defaultAction = "showLoginForm"

    UserService userService

    def showLoginForm() {

    }

    def verifyUserLogin() {
        User user = userService.verifyUser(new User(params?.user))
        if (!user) {
            flash.message = "Sorry the information you provided is not valid. Please Try again"
            redirect(action: "showLoginForm")
            return
        }
        session.setAttribute("isUserLoggedIn", true)
        session.setAttribute("user", user)
        redirect(uri: "/home")
    }
}
