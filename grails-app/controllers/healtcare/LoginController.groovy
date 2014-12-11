package healtcare


class LoginController {

    def index() {

    }

    def verifyUserLogin() {
      println(params.email)
      println(params.password)
    }
}
